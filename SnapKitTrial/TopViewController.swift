//
//  TopViewController.swift
//  SnapKitTrial
//
//  Created by muf_tom on 2019/05/19.
//  Copyright © 2019 muf_tom. All rights reserved.
//

import UIKit
import SnapKit

class TopViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Top"
        label.backgroundColor = UIColor.lightGray
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.lightGray
        button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setAddView()
    }
    
    func setAddView() {
        
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(label)
        self.view.addSubview(button)
        
        self.label.snp.makeConstraints { (make) in
            make.center.equalToSuperview() // center = superview
            make.width.equalTo(100)
            make.height.equalTo(50)
        }
        self.button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(self.label.snp.bottom).offset(10) // top = button.buttom + 10
            make.width.equalTo(100)
            make.height.equalTo(50)
        }
    }
    
    @objc func buttonDidTap(_ sender: UIButton) {
        let secondViewController = SecondViewController()
        self.present(secondViewController, animated: true, completion: nil)
    }github

}
