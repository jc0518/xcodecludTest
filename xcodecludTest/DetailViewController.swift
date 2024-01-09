//
//  DetailViewController.swift
//  xcodecludTest
//
//  Created by ksmartech on 1/9/24.
//

import UIKit

class DetailViewController: UIViewController {
    var parentVC: ViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function, String(describing: self))
    
        title = "Detail VC"
        view.backgroundColor = .yellow
    }
    
    deinit {
        print(#function, String(describing: self))
    }

}
