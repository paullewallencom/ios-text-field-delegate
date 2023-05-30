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
    @IBOutlet weak var characterCountLabel: UILabel!
    
    // MARK: Text Field Delegate objects
    let emojiDelegate = EmojiTextFieldDelegate()
    let colorizeDelegate = ColorizerTextFieldDelegate()
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the label to be hidden
        
        // Set the three delegates
        self.textField1.delegate = emojiDelegate
    }
    
    // MARK: Text Field Delegate Methods
    // stub
}

