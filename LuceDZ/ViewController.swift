//
//  ViewController.swift
//  LuceDZ
//
//  Created by Daniel Zanchi on 07/02/2020.
//  Copyright © 2020 Daniel Zanchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var requestButton: UIButton!
        
    var currentUserID = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        
        requestButton.layer.cornerRadius = 12
        requestButton.clipsToBounds = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? RequestViewController
        vc?.currentUserID = currentUserID
    }


}

