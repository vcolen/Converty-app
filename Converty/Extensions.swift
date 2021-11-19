//
//  Extensions.swift
//  Converty
//
//  Created by Victor Colen on 19/11/21.
//

import Foundation

extension Double {
    func decimalPoints(_ decimalPoints: Int) -> String {
        return String(format: "%.\(decimalPoints)f", self)
    }
}
