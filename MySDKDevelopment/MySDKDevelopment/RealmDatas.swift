//
//  RealmDatas.swift
//  MySDKDevelopment
//
//  Created by Ashok on 15/09/24.
//

import Foundation
import RealmSwift
class Person: Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var name = ""
    @objc dynamic var age = 0

    // Set the primary key
    override static func primaryKey() -> String? {
        return "id"
    }
}
