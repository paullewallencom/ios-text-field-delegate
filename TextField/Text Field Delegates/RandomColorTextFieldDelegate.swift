/*
 *  RandomColorTextFieldDelegate.swift
 *  TextField
 *
 *  Created by Paul Lewallen on 5/30/23.
 *
 */

import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    //func randomColor() ->UIColor {
    //@TODO: return a random color
    //}
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //@TODO: Set the color of your text here!
        return true
    }
}
