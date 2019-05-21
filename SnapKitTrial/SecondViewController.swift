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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SecondViewインスタンス化
        let secondView = SecondView(frame: self.view.bounds)
        // autoresizingMask設定
        secondView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        // オブジェクトを表示
        self.view.addSubview(secondView)
        // イベント追加
        setAddTarget(view: secondView)
    }
    
    func setAddTarget(view: SecondView) {
        view.button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
    }
    
    @objc func buttonDidTap(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
