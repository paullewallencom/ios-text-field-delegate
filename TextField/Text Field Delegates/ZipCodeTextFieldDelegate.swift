/*
 *  ZipCodeTextFieldDelegate.swift
 *  TextField
 *
 *  Created by Paul Lewallen on 5/30/23.
 *
 */

import UIKit

// MARK: - ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate
class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return newText.length <= 5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
}
