//
//  Persistence.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentCloudKitContainer

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        let favorite1 = Favorite(context: viewContext)
        favorite1.name = mojito.name
        let selectedIngredient1 = SelectedIngredient(context: viewContext)
        selectedIngredient1.name = Ingredients.instance.orgeatSyrup.name
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
