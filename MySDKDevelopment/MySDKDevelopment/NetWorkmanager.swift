//
//  NetWorkmanager.swift
//  MySDKDevelopment
//
//  Created by Ashok on 13/09/24.
//

import Foundation
import Alamofire
import RealmSwift
public class NetworkManager {
    public static let shared = NetworkManager()

    private init() {}

    public func fetchData(from url: String, completion: @escaping (Result<Data, Error>) -> Void) {
        AF.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    public func addPerson(name: String, age: Int) {
        let realm = try! Realm()
        
        let person = Person()
        person.name = name
        person.age = age
        
        // Add to Realm
        try! realm.write {
            realm.add(person)
        }
        print("Person added: \(person)")
    }

    public  func deletePerson(withId id: String) {
        let realm = try! Realm()
        
        if let personToDelete = realm.object(ofType: Person.self, forPrimaryKey: id) {
            try! realm.write {
                realm.delete(personToDelete)
            }
            print("Person deleted with id: \(id)")
        } else {
            print("Person not found with id: \(id)")
        }
    }

    public  func deleteAllPersons() {
        let realm = try! Realm()
        
        let allPersons = realm.objects(Person.self)
        try! realm.write {
            realm.delete(allPersons)
        }
        print("All persons deleted")
    }

    public   func fetchAllPersons() {
        let realm = try! Realm()
        
        let persons = realm.objects(Person.self)
        for person in persons {
            print("Person: \(person.name), Age: \(person.age)")
        }
    }
}
