//
//  DetailViewController.swift
//  xcodecludTest
//
//  Created by ksmartech on 1/9/24.
//

import UIKit

class DetailViewController: UIViewController {
    var text: String? {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        label.text = text
    }
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function, String(describing: self))
    
        title = "Detail VC"
        view.backgroundColor = .yellow
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    deinit {
        print(#function, String(describing: self))
    }

}
