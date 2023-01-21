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
    
    private static func findItems<T>(_ viewContext: NSManagedObjectContext, entityName: String, type: T) -> [T] {
        let fetch = NSFetchRequest<OriginDB>(entityName: entityName)
        let all = (try! viewContext.execute(fetch)) as! [T]
        return all
    }
    
    /// Seed Core Data with all relevant Drinks data
    private static func seed(_ viewContext: NSManagedObjectContext) {
        let allOrigins = findItems(viewContext, entityName: "OriginDB", type: OriginDB())
        let allEquipments = findItems(viewContext, entityName: "EquipmentDB", type: EquipmentDB())
        let allIngredients = findItems(viewContext, entityName: "IngredientDB", type: IngredientDB())
        
        for i in Drinks.all {
            let drink = DrinkDB(context: viewContext)
            drink.name = i.name
            drink.note = i.description
            drink.image = i.image
            drink.color = i.color.description
            if let year = i.year { drink.year = Int32(year) }
            drink.base = i.base
            drink.origin = allOrigins.filter({(o: OriginDB) -> Bool in
                return o.name == i.origin.name
            }).first
            
            for item in allEquipments.filter({ e in i.equipments.contains(where: { $0.name == e.name }) }) {
                item.addToDrinks(drink)
            }
//            for item in allIngredients.filter({ e in i.ingredients.contains(where: { $0.ingredient.name == e.name }) }) {
//            }
            drink.
            
            
        ingredients: [IngredientWithVolume],
        steps: [DrinkStep]
        }
        
//            if let originName = i.origin?.name {
//                iDB.origin = allOrigins.filter({(o: OriginDB) -> Bool in
//                    return o.name == originName
//                }).first
//            }
//            iDB.alternatives = i.alternatives
        
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
        
        // Seed Ingredients into Core Data
        for i in Ingredients.all {
            let iDB = IngredientDB(context: viewContext)
            iDB.name = i.name
            iDB.note = i.description
            iDB.image = i.image
            iDB.color = i.color.description
            iDB.strength = Int16(i.strength)
        }
        
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            print("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}
