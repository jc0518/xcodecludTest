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
    @IBAction func nextButton(_ sender: Any) {
        let detailVC = DetailViewController()
        detailVC.parentVC = self  // DetailViewController에 대한 강한 참조를 생성
        self.detailVC = detailVC  // ViewController에서 DetailViewController에 대한 강한 참조를 저장
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    private let cal = Calculator()
    var detailVC: DetailViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Calculator VC"
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
