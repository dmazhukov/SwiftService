//
// Created by DmAZhukov on 15.08.17.
// Copyright (c) 2017 Grotem. All rights reserved.
//

import UIKit

extension UIView {

    private var disableKeybordWhenTappedGestureRecognizerIdentifier: String {
        return "disableKeybordWhenTapped"
    }

    private var disableKeybordWhenTappedGestureRecognizer: TapGestureRecognizer? {

        let hideKeyboardGesture = TapGestureRecognizer(target: self, action: #selector(UIView.hideKeyboard), identifier: disableKeybordWhenTappedGestureRecognizerIdentifier)

        if let gestureRecognizers = self.gestureRecognizers {
            for gestureRecognizer in gestureRecognizers {
                if let tapGestureRecognizer = gestureRecognizer as? TapGestureRecognizer, tapGestureRecognizer == hideKeyboardGesture, tapGestureRecognizer == hideKeyboardGesture {
                    return tapGestureRecognizer
                }
            }
        }
        return nil
    }

    @objc private func hideKeyboard() {
        endEditing(true)
    }

    var disableKeybordWhenTapped: Bool {

        set {
            let hideKeyboardGesture = TapGestureRecognizer(target: self, action: #selector(UIView.hideKeyboard), identifier: disableKeybordWhenTappedGestureRecognizerIdentifier)

            if let disableKeybordWhenTappedGestureRecognizer = self.disableKeybordWhenTappedGestureRecognizer {
                removeGestureRecognizer(disableKeybordWhenTappedGestureRecognizer)
                if gestureRecognizers?.count == 0 {
                    gestureRecognizers = nil
                }
            }

            if newValue {
                addGestureRecognizer(hideKeyboardGesture)
            }
        }

        get {
            return disableKeybordWhenTappedGestureRecognizer == nil ? false : true
        }
    }
}

class TapGestureRecognizer: UITapGestureRecognizer {

    let identifier: String

    private override init(target: Any?, action: Selector?) {
        self.identifier = ""
        super.init(target: target, action: action)
    }

    init(target: Any?, action: Selector?, identifier: String) {
        self.identifier = identifier
        super.init(target: target, action: action)
    }

    static func ==(left: TapGestureRecognizer, right: TapGestureRecognizer) -> Bool {
        return left.identifier == right.identifier
    }
}
