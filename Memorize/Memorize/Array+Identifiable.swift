//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Vladyslav Lietun on 26.11.2020.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for i in 0..<self.count {
            if self[i].id == matching.id {
                return i
            }
        }
        return nil
    }
}
