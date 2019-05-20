//
//  SecondViewController.swift
//  SnapKitTrial
//
//  Created by muf_tom on 2019/05/19.
//  Copyright © 2019 muf_tom. All rights reserved.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Second"
        label.backgroundColor = UIColor.white
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Back", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.white
        button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
        return button
    }()
    
    let topLeft: UILabel = {
        let label = UILabel()
        label.text = "Top Left"
        label.backgroundColor = UIColor.green
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    let topRight: UILabel = {
        let label = UILabel()
        label.text = "Top Right"
        label.backgroundColor = UIColor.green
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    let bottomLeft: UILabel = {
        let label = UILabel()
        label.text = "Bottom Left"
        label.backgroundColor = UIColor.green
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    let bottomRight: UILabel = {
        let label = UILabel()
        label.text = "Bottom Right"
        label.backgroundColor = UIColor.green
        label.textAlignment = NSTextAlignment.center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setAddView()
    }
    
    func setAddView() {
        
        self.view.backgroundColor = UIColor.lightGray
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
        
        self.view.addSubview(topLeft)
        self.view.addSubview(topRight)
        self.view.addSubview(bottomLeft)
        self.view.addSubview(bottomRight)
        
        // TopLeft
        self.topLeft.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
        }
        // TopRight
        self.topRight.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.right.equalToSuperview()
        }
        // BottomLeft
        self.bottomLeft.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
        }
        // BottomRight
        self.bottomRight.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
    
    @objc func buttonDidTap(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
