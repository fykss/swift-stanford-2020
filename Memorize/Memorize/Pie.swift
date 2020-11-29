//
//  Pie.swift
//  Memorize
//
//  Created by Vladyslav Lietun on 29.11.2020.
//

import SwiftUI

struct Pie: Shape {
    var startAngel: Angle
    var endAnglel: Angle
    var clockwise: Bool = false
    
    var animatableData: AnimatablePair<Double, Double> {
        get {
            AnimatablePair(startAngel.radians, endAnglel.radians)
        }
        set {
            startAngel = Angle.radians(newValue.first)
            endAnglel = Angle.radians(newValue.second)
        }
    }
        
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let start = CGPoint(
            x: center.x + radius * cos(CGFloat(startAngel.radians)),
            y: center.y + radius * sin(CGFloat(startAngel.radians))
        )
        
        var p = Path()
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(
            center: center,
            radius: radius,
            startAngle: startAngel,
            endAngle: endAnglel,
            clockwise: clockwise
        )
        
        return p
    }
}
