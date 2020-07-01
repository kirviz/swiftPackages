//
//  ViewController.swift
//  anotherSwiftClient
//
//  Created by Darius Jankauskas on 30/06/2020.
//

import UIKit
import swiftFramework
import objcFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let framy1 = FramyS(name: "Hell😈 swift")
        print("\(framy1.name)")
        
        let framy2 = FramyO(name: "Hell😈 objc")
        print("\(framy2.name)")
    }


}

