//
//  TopView.swift
//  SnapKitTrial
//
//  Created by muf_tom on 2019/05/21.
//  Copyright © 2019 muf_tom. All rights reserved.
//

import UIKit

class TopView: UIView {

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
        return button
    }()

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        self.addSubview(label)
        self.addSubview(button)
        
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
    }
}
