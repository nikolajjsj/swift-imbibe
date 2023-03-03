//
//  Persistence.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import CoreData

fileprivate let favorites: [String] = [
    mojito.name,
    oldFashioned.name,
    whiskySour.name
]

fileprivate let selectedIngredients: [String] = [
    Ingredients.instance.orgeatSyrup.name,
    Ingredients.instance.coffee.name,
    Ingredients.instance.vodka.name,
    Ingredients.instance.kahlua.name,
    Ingredients.instance.simpleSyrup.name,
    Ingredients.instance.whisky.name,
    Ingredients.instance.demeraraSyrup.name,
    Ingredients.instance.limeJuice.name,
    Ingredients.instance.angosturaBitters.name,
    Ingredients.instance.rum.name,
    Ingredients.instance.gin.name,
    Ingredients.instance.curacao.name,
    Ingredients.instance.eggWhite.name,
    
    Ingredients.instance.ice.name,
]

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentCloudKitContainer

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        for favorite in favorites {
            let f = Favorite(context: viewContext)
            f.name = favorite
        }
        for selected in selectedIngredients {
            let s = SelectedIngredient(context: viewContext)
            s.name = selected
        }
        viewContext.quickSave()
        
        return result
    }()

    init(inMemory: Bool = false) {
        container = NSPersistentCloudKitContainer(name: "cocktail-craft")
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        
        let dbURL = URL.storeURL(for: "group.cocktail-craft", databaseName: "cocktail-craft")
        
        let store = NSPersistentStoreDescription(url: dbURL)
        store.cloudKitContainerOptions = NSPersistentCloudKitContainerOptions(
            containerIdentifier: "iCloud.com.nikolajjsj.cocktailcraft"
        )
        
        if inMemory { store.url = URL(fileURLWithPath: "/dev/null") }
        
        container.persistentStoreDescriptions = [ store ]
        container.loadPersistentStores(completionHandler: { (store, error) in
            if let error = error as NSError? {
                print("Unresolved error \(error), \(error.userInfo)")
            }
        })
        
        
        #if DEBUG
        do {
            try container.initializeCloudKitSchema(options: [])
        } catch {
            print("Unable to initialize CloudKit schema: \(error.localizedDescription)")
        }
        #endif
    }
}

public extension URL {
    /// Returns a URL for the given app group and database pointing to the sqlite database.
    static func storeURL(for appGroup: String, databaseName: String) -> URL {
        guard let fileContainer = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: appGroup) else {
            fatalError("Shared file container could not be created.")
        }

        return fileContainer.appendingPathComponent("\(databaseName).sqlite")
    }
}
