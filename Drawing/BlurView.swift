//
//  BlurView.swift
//  Drawing
//
//  Created by Giovanni Gaffé on 2021/10/27.
//

import SwiftUI

struct BlurView: View {
    @State private var  amount: CGFloat = 0.0
    var body: some View {
        VStack {
            Image("Example")
                .resizable()
                .scaledToFit()
                .frame(width: 450, height: 200)
                .saturation(Double(amount))
                .blur(radius: (1 - amount) * 20)
            
//            ZStack {
//                Circle()
////                    .fill(Color.red)
//                    .fill(Color(red: 1, green: 0, blue: 0))
//                    .frame(width: 200 * amount)
//                    .offset(x: -50, y: -80)
//                    .blendMode(.screen)
//
//                Circle()
////                    .fill(Color.green)
//                    .fill(Color(red: 0, green: 1, blue: 0))
//                    .frame(width: 200 * amount)
//                    .offset(x: 50, y: -80)
//                    .blendMode(.screen)
//
//                Circle()
////                    .fill(Color.blue)
//                    .fill(Color(red: 0, green: 0, blue: 1))
//                    .frame(width: 200 * amount)
//                    .blendMode(.screen)
//            }
//            .frame(width: 300, height: 300)
//
        
        Slider(value: $amount)
                .padding()
//            Image("Example")
//                .colorMultiply(.red)
//                .frame(width: 400, height: 500)
//                .clipped()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct BlurView_Previews: PreviewProvider {
    static var previews: some View {
        BlurView()
    }
}
