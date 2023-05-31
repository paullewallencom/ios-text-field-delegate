/*
 *  ViewController.swift
 *  TextField
 *
 *  Created by Paul Lewallen on 5/30/23.
 *
 */

import UIKit

// MARK: - ViewController: UIViewController, UITextFieldDelegate
class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var characterCountLabel: UILabel!
    @IBOutlet weak var editingSwitch: UISwitch!
    
    // MARK: Text Field Delegate objects
    //let emojiDelegate = EmojiTextFieldDelegate()
    //let colorizerDelegate = ColorizerTextFieldDelegate()
    let randomColorTextFieldDelegate = RandomColorTextFieldDelegate()
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the label to be hidden
        self.characterCountLabel.isHidden = true
        
        // Set the three delegates
        //self.textField1.delegate = emojiDelegate
        self.textField1.delegate = zipCodeDelegate
        //self.textField2.delegate = colorizerDelegate
        self.textField2.delegate = cashDelegate
        self.textField3.delegate = randomColorTextFieldDelegate
        self.textField4.delegate = self
        
        self.editingSwitch.setOn(false, animated: false)
    }
    
    // MARK: Text Field Delegate Methods
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // Figure out what the new text will be, if we return true
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        // Hide the label if the newText will be an empty string
        self.characterCountLabel.isHidden = (newText.length == 0)
        
        // Write the length of newText into the label
        self.characterCountLabel.text = String(newText.length)
        
        // Returning true gives the text field permission to change its text
        return true;
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.editingSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    // MARK: Actions
    @IBAction func toggleTheTextEditor(_ sender: AnyObject) {
        
        if !(sender as! UISwitch).isOn {
            self.textField4.resignFirstResponder()
        }
    }
}
