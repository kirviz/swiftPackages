//
//  ViewController.swift
//  swiftClient
//
//  Created by Darius Jankauskas on 30/06/2020.
//

import UIKit
import swiftFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let framy = FramyS(name: "kuku")
        print("\(framy.name)")
    }


}

