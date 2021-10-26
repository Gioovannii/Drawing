//
//  CGAffineView.swift
//  Drawing
//
//  Created by Giovanni Gaffé on 2021/10/26.
//

import SwiftUI


struct Flower: Shape {
    var petalOffSet: Double = -20
    var petalWidth: Double = 100
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        for number in stride(from: 0, to: CGFloat.pi * 2, by: CGFloat.pi / 8) {
            let rotation = CGAffineTransform(rotationAngle: number)
            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
            
            let originalPetal = Path(ellipseIn: CGRect(x: CGFloat(petalOffSet), y: 0, width: CGFloat(petalWidth), height: rect.width / 2))
            let rotatedPetal = originalPetal.applying(position)
            
            path.addPath(rotatedPetal)
            
        }
        return path
    }
    
    
}
struct CGAffineView: View {
    @State private var petalOffSet = -20.0
    @State private var petalWidth = 100.0
    
    var body: some View {
        VStack {
            Flower(petalOffSet: petalOffSet, petalWidth: petalWidth)
                .fill(Color.orange, style: FillStyle(eoFill: true))
            
            Text("OffSet")
            Slider(value: $petalOffSet, in: -40...40)
                .padding([.horizontal, .bottom])
            
            Text("Width")
            Slider(value: $petalWidth, in: 0...100)
                .padding(.horizontal)
        }
    }
}

struct CGAffineView_Previews: PreviewProvider {
    static var previews: some View {
        CGAffineView()
    }
}
