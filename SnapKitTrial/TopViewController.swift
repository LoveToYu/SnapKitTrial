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

    override func viewDidLoad() {
        super.viewDidLoad()

        // TopViewインスタンス化
        let topView = TopView(frame: self.view.bounds)
        // autoresizingMask設定
        topView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        // オブジェクトを表示
        self.view.addSubview(topView)
        // イベント追加
        setAddTarget(view: topView)
    }
    
    func setAddTarget(view: TopView) {
        view.button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
    }
    
    @objc func buttonDidTap(_ sender: UIButton) {
        let secondViewController = SecondViewController()
        self.present(secondViewController, animated: true, completion: nil)
    }

}
