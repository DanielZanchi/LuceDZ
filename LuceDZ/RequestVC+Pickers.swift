//
//  RequestVC+Pickers.swift
//  LuceDZ
//
//  Created by Daniel Zanchi on 08/02/2020.
//  Copyright © 2020 Daniel Zanchi. All rights reserved.
//

import UIKit

extension RequestViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == itemPicker {
            return itemData.count
        } else if pickerView == SAPicker {
            return SAData?.count ?? 0
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == itemPicker {
            return "\(itemData[row])"
        } else if pickerView == SAPicker {
            guard let data = SAData else { return "" }
            let user: String = "\(data[row].surname) \(data[row].name)"
            return user
        }
        return ""
    }

}
