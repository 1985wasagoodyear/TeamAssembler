//
//  MakeTeammateViewController.swift
//  TeamAssembler
//
//  Created by K Y on 11/26/19.
//  Copyright © 2019 Yu. All rights reserved.
//

import UIKit

protocol SendTeammateDataDelegate: class {
    func send(name: String, might: String)
}

final class MakeTeammateViewController: UIViewController {
    
    // MARK: - UI Outlets
    
    @IBOutlet var staticNameLabel: UILabel!
    @IBOutlet var staticMightLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var mightTextField: UITextField!
    
    // MARK: - Properties
    
    weak var delegate: SendTeammateDataDelegate?
    
    // MARK: - Custom Action Methods
    
    @IBAction func doneButtonAction(_ sender: Any) {
        guard let might = mightTextField.text, let name = nameTextField.text else {
            // some error here
            return
        }
        self.delegate?.send(name: name, might: might)
        navigationController?.popViewController(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
}
