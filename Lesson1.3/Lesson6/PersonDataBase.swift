//
//  PersonDataBase.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 11/3/21.
//

import Foundation
import RealmSwift

protocol PersonDataBaseProtocol {
    
    func create(_ person: PersonModel)
    func read() -> [PersonModel]
    func delete(_ person: PersonModel)
}

class PersonDataBase: PersonDataBaseProtocol {
   
    let migration = Realm.configuration(schemaVersion: 3)
    lazy var mainRealm = try! Realm(configuration: migration)
    
    func create(_ person: PersonModel) {
        do {
            mainRealm.beginWrite()
            mainRealm.add(person)
            try mainRealm.commitWrite()
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func read() -> [PersonModel] {
        
        let persons = mainRealm.objects(PersonModel.self)
        persons.forEach { print($0.name, $0.age, $0.pet) }
        print(mainRealm.configuration.fileURL ?? "")
        return Array(person)
    }
    
    func delete(_ person: PersonModel) {
        do {
            mainRealm.beginWrite()
            mainRealm.delete(person)
            try mainRealm.commitWrite()
            
        } catch {
            print(error.localizedDescription)
        }
    }
}
