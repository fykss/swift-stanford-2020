//
//  Array+Only.swift
//  Memorize
//
//  Created by Vladyslav Lietun on 28.11.2020.
//

import Foundation

extension Array {
    var onlyFirst: Element? {
        count == 1 ? first : nil
    }
}
