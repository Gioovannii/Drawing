//
//  PathVsShapesView.swift
//  Drawing
//
//  Created by Giovanni Gaffé on 2021/10/25.
//

import SwiftUI

// MARK: - Triangle

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}



// MARK: - Arc

struct Arc: InsettableShape {
    var startAngle: Angle
    var endAngle: Angle
    var clockWise: Bool
    var insetAmount: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount,
                    startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockWise)
        
        return path
    }
}

struct PathVsShapesView: View {
    var body: some View {
        Arc(startAngle: .degrees(0), endAngle: .degrees(110), clockWise: true)
            .stroke(Color.blue, lineWidth: 10)
            .frame(width: 300, height: 300)
//        Triangle()
//            .fill(Color.orange)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//            .frame(width: 300, height: 300)
    }
}

struct PathVsShapesView_Previews: PreviewProvider {
    static var previews: some View {
        PathVsShapesView()
    }
}
