//
//  SecondView.swift
//  SnapKitTrial
//
//  Created by muf_tom on 2019/05/21.
//  Copyright © 2019 muf_tom. All rights reserved.
//

import UIKit

class SecondView: UIView {
    
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
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.lightGray
        self.addSubview(label)
        self.addSubview(button)
        self.addSubview(topLeft)
        self.addSubview(topRight)
        self.addSubview(bottomLeft)
        self.addSubview(bottomRight)
        
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
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
}
