//
//  ImagePaintView.swift
//  Drawing
//
//  Created by Giovanni Gaffé on 2021/10/26.
//

import SwiftUI

struct ImagePaintView: View {
    var body: some View {
//        Text("Hello, World!")
//            .frame(width: 300, height: 300)
//            .border(ImagePaint(image: Image("Example"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5), scale: 0.1), width: 30)
//            .border(ImagePaint(image: Image("Example"), scale: 0.2), width: 30)
          Capsule()
            .strokeBorder(ImagePaint(image: Image("Example"), scale: 0.1), lineWidth: 20)
    }
}

struct ImagePaintView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePaintView()
    }
}
