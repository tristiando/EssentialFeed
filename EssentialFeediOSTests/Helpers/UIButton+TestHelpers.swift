//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Thu Do on 10/08/2023.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
