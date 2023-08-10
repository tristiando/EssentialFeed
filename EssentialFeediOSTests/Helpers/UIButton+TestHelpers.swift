//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Thu Do on 10/08/2023.
//

import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
