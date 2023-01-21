//
//  Persistence.swift
//  imbibe
//
//  Created by Nikolaj Johannes Skole Jensen on 10/01/2023.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        seed(viewContext)
        return result
    }()

    let container: NSPersistentCloudKitContainer

    init(inMemory: Bool = false) {
        container = NSPersistentCloudKitContainer(name: "imbibe")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                print("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    /// Seed Core Data with all relevant Drinks data
    private static func seed(_ viewContext: NSManagedObjectContext) {
        // Seed Ingredients into Core Data
        for i in Ingredients.all {
            let iDB = IngredientDB(context: viewContext)
            iDB.name = i.name
            iDB.note = i.description
            iDB.image = i.image
        }
        
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            print("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
    
    private static func nonRelationalData(_ viewContext: NSManagedObjectContext) {
        // Seed Equipments into core data
        for e in Equipments.all {
            let eDB = EquipmentDB(context: viewContext)
            eDB.name = e.name
            eDB.note = e.description
            eDB.image = e.image
        }
        
        // Seed Origin into Core Data
        for o in Origins.all {
            let oDB = OriginDB(context: viewContext)
            oDB.name = o.name
            oDB.flag = o.flag
        }
        
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            print("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}
