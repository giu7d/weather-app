//
//  Shapes.swift
//  Weather
//
//  Created by Giuseppe Davanzo on 12/06/23.
//

import SwiftUI

struct Arc: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let borderOverflow: CGFloat = 1
        
        path.move(
            to: CGPoint(
                x: rect.minX - borderOverflow,
                y: rect.minY
            )
        )
        
        path.addQuadCurve(
            to: CGPoint(x: rect.maxX + borderOverflow, y: rect.minY),
            control: CGPoint(x: rect.midX, y: rect.midY)
        )
        
        path.addLine(
            to: CGPoint(
                x: rect.maxX + borderOverflow,
                y: rect.maxY + borderOverflow
            )
        )
        
        path.addLine(
            to: CGPoint(
                x: rect.minX - borderOverflow,
                y: rect.maxY + borderOverflow
            )
        )
        
        path.closeSubpath()
        
        return path
    }
}
