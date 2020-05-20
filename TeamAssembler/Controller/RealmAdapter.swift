//
//  RealmAdapter.swift
//  TeamAssembler
//
//  Created by K Y on 11/26/19.
//  Copyright © 2019 Yu. All rights reserved.
//

import Foundation
import RealmSwift

public class RealmAdapter {
    lazy fileprivate var realm: Realm = {
        do { return try Realm() } catch { fatalError(error.localizedDescription) }
    }()
    
    // MARK: - Reading from Realm
    // and convertion to native Array type.
    func fetchObjects<T: Object>(_ type: T.Type) -> [T] {
        return realm.objects(T.self).map { $0 }
    }
    
    // MARK: - Writing to Realm
    
    public func add(_ obj: Object) {
        do {
            try realm.write {
                realm.add(obj)
            }
        } catch { fatalError(error.localizedDescription) }
    }
    
    // MARK: - Deleting from Realm
    
    public func delete(_ obj: Object) {
        do {
            try realm.write {
                realm.delete(obj)
            }
        } catch { fatalError(error.localizedDescription) }
    }
}
