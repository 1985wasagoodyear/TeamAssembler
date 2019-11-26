//
//  TeammateTableViewCell.swift
//  TeamAssembler
//
//  Created by K Y on 11/26/19.
//  Copyright © 2019 Yu. All rights reserved.
//

import UIKit

final class TeammateTableViewCell: UITableViewCell {
    
    // MARK: - Static Text
    
    @IBOutlet private var staticNameLabel: UILabel!
    @IBOutlet private var staticMightLabel: UILabel!
    
    // MARK: - Dynamic, Reusable Text
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var mightLabel: UILabel!
    
}
