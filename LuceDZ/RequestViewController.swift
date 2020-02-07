//
//  RequestViewController.swift
//  LuceDZ
//
//  Created by Daniel Zanchi on 07/02/2020.
//  Copyright © 2020 Daniel Zanchi. All rights reserved.
//

import UIKit

class RequestViewController: UIViewController {

    @IBOutlet weak var itemPicker: UIPickerView!
    @IBOutlet weak var SAPicker: UIPickerView!
    @IBOutlet weak var ficheNumber: UITextField!

    
    var itemData = Array(1...10)
    var SAData: [SAJsonManager.user]?
    var currentUserID: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectCurrentUser()
    }
    
    override func loadView() {
        super.loadView()
        
        SAData = SAJsonManager.shared.decode()
        
        itemPicker.dataSource = self
        itemPicker.delegate = self
        SAPicker.dataSource = self
        SAPicker.delegate = self
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        ficheNumber.endEditing(true)
    }
    
    func selectCurrentUser() {
        guard let data = SAData else { return }
        for (index,user) in data.enumerated() {
            if user.id == currentUserID {
                SAPicker.selectRow(index, inComponent: 0, animated: false)
            }
        }
    }
    
    @IBAction func doneTapped(_ sender: Any) {
        // save request
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
