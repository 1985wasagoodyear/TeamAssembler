//
//  AssembledViewController+TeamControllerViewProtocol.swift
//  TeamAssembler
//
//  Created by K Y on 11/26/19.
//  Copyright © 2019 Yu. All rights reserved.
//

import UIKit

extension AssembledViewController: TeamControllerViewProtocol {

    func didAddTeammate() {
        tableView.currentState = .loaded
      //  let p = IndexPath(row: controller.teamSize - 1, section: 0)
      //  tableView.insertRows(at: [p], with: .automatic)
    }

    func didRefreshTeam() {
        if controller.teamSize == 0 {
            tableView.currentState = .empty
        }
        else {
            tableView.currentState = .loaded
        }
    }
}
