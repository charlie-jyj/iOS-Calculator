//
//  RoundButton.swift
//  Calculator
//
//  Created by UAPMobile on 2022/01/07.
//

import UIKit

//custom component
// 변경된 속성값이 실시간으로 스토리보드에 반영된다. IBDesignable
@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var isRound:Bool = false {
        didSet {
            if isRound {
                // 정사각형인 경우 원으로 변하고 그 외에는 모서리가 둥글게 변한다.
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }

}
