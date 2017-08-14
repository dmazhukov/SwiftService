//
//  AuthViewController.swift
//  SwiftService
//
//  Created by DmAZhukov on 14.08.17.
//  Copyright © 2017 Grotem. All rights reserved.
//

import UIKit
import RxSwift
import SnapKit

class AuthViewController: UIViewController {

    @IBOutlet var textUsername: UITextField?
    @IBOutlet var textPassword: UITextField?
    @IBOutlet var buttonSignin: UIButton?
    @IBOutlet var buttonDemo: UIButton?
    @IBOutlet var imageLogo: UIImageView?

    override func viewDidLoad() {

        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg")!)

        if let btn = buttonSignin {
            btn.layer.cornerRadius = 10
            btn.clipsToBounds = true

            btn.snp.makeConstraints({ make in
                make.bottom.equalToSuperview().offset(-97)
                make.left.equalToSuperview().offset(18)
                make.right.equalToSuperview().offset(-18)
                make.height.equalTo(56)
            })
        }


        if let txt = textUsername {
            txt.snp.makeConstraints({ make in
                make.width.equalToSuperview().offset(-18)
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-276)
            })
        }

        if let txt = textPassword {
            txt.snp.makeConstraints({ make in
                make.width.equalToSuperview().offset(-18)
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-207)
            })
        }

        if let logo = imageLogo {
            logo.snp.makeConstraints({ make in
                make.centerX.equalToSuperview()
                make.top.equalToSuperview().offset(115)
            })
        }


    }

}
