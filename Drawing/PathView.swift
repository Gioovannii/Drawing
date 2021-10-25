//
//  PathView.swift
//  Drawing
//
//  Created by Giovanni Gaffé on 2021/10/25.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
//            path.addLine(to: CGPoint(x: 100, y: 300))
        }
        
//        .fill(Color.blue)
//        .stroke(Color.blue, lineWidth: 10)
        .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
    }
}
