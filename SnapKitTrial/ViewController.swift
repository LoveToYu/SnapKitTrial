//
//  ViewController.swift
//  SnapKitTrial
//
//  Created by muf_tom on 2019/05/19.
//  Copyright © 2019 muf_tom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let topViewController = TopViewController()
        self.present(topViewController, animated: false, completion: nil)
    }

}

