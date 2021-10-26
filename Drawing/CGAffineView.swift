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
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CGAffineView_Previews: PreviewProvider {
    static var previews: some View {
        CGAffineView()
    }
}
