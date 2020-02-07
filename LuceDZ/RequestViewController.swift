//
//  RequestViewController.swift
//  LuceDZ
//
//  Created by Daniel Zanchi on 07/02/2020.
//  Copyright © 2020 Daniel Zanchi. All rights reserved.
//

import UIKit

class RequestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func doneTapped(_ sender: Any) {
        // save request
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
