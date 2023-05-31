/*
 *  RandomColorTextFieldDelegate.swift
 *  TextField
 *
 *  Created by Paul Lewallen on 5/30/23.
 *
 */

import UIKit

// MARK: - RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate
class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    let colors:[UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .brown]
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        return true
    }
    
    
    func randomColor() ->UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
}
