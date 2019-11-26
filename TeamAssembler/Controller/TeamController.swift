//
//  TeamController.swift
//  TeamAssembler
//
//  Created by K Y on 11/26/19.
//  Copyright © 2019 Yu. All rights reserved.
//

import Foundation
import RealmSwift

protocol TeamControllerProtocol {
    var team: [Teammate] { get }
    var teamSize: Int { get }
    func getTeam()
    func newTeammate(name: String, might: String)
}

protocol TeamControllerViewProtocol {
    func didAddTeammate()
    func didRefreshTeam()
}

class TeamController: TeamControllerProtocol {
    let realm = try! Realm()
    var team: [Teammate]
    var view: TeamControllerViewProtocol
    
    var teamSize: Int {
        return team.count
    }
    
    init(_ view: TeamControllerViewProtocol) {
        team = [Teammate]()
        self.view = view
    }
    
    func getTeam() {
        team = realm.objects(Teammate.self).compactMap { $0 }
        view.didRefreshTeam()
    }
    
    func newTeammate(name: String, might: String) {
        let newTeammate = Teammate(name: name, might: might)
        team.append(newTeammate)
        try! realm.write {
            realm.add(newTeammate)
        }
        view.didAddTeammate()
    }

}
