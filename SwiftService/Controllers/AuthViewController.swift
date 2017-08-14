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

    override func viewDidLoad() {

        super.viewDidLoad()

        if let btn = buttonSignin{

        }

        buttonSignin!.layer.cornerRadius = 10
        buttonSignin!.clipsToBounds = true

        buttonSignin!.snp.makeConstraints({ make in
            make.bottom.equalToSuperview().offset(-97)
            make.left.equalToSuperview().offset(18)
            make.right.equalToSuperview().offset(-18)
            make.height.equalTo(56)
        })

        if let txt = textUsername{
            txt.snp.makeConstraints({make in
                make.width.equalToSuperview().offset(-18)
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-276)
            })
        }

        if let txt = textPassword{
            txt.snp.makeConstraints({make in
                make.width.equalToSuperview().offset(-18)
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-207)
            })
        }


    }

}
