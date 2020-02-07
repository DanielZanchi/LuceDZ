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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        
        requestButton.layer.cornerRadius = 12
        requestButton.clipsToBounds = true
    }


}

