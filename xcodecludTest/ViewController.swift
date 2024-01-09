//
//  ViewController.swift
//  xcodecludTest
//
//  Created by ksmartech on 1/9/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var firstField: UITextField!
    @IBOutlet weak var secondField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    let cal = Calculator()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstField.delegate = self
        secondField.delegate = self
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        resultLabel.text = cal.add(a: firstField.text ?? "", b: secondField.text ?? "")
    }
}

class Calculator {
    func add(a: String, b: String) -> String {
        let first = Int(a) ?? 0
        let second = Int(b) ?? 0
        return String(first + second)
    }
}
