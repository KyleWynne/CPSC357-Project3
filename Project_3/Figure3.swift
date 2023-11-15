//
//  Figure3.swift
//  Project_3
//
//  Created by Kyle Wynne on 11/13/23.
//

import Foundation
import SwiftUI

struct FigureThreeView: View {
    @State private var rotation: Double = 0
    @State private var scale: CGFloat = 1
    var body: some View {
        VStack {
            //text for instructions
            Text("Zoom to Animate")
                .font(.largeTitle)
                .padding()
            //creates the magnification gesture and defines the rotation specifications
            let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
                .onEnded { _ in
                    self.rotation =
                    (self.rotation < 360 ? self.rotation + 60 : 0)
                    self.scale =
                    (self.scale < 2.8 ? self.scale + 0.3 : 1)
                }
            // creates the right hand point image with all the necessary modifiers
            Image(systemName: "hand.point.right.fill")
                .resizable()
                .font(.largeTitle)
                //links the gesture
                .gesture(magnificationGesture)
                .frame(width: 100, height: 90) //size
                .scaleEffect(scale) //add the scale effect
                .rotationEffect(.degrees(rotation)) //add the rotation
                .animation(.linear(duration: 1)) //define the animation length
        }
    }
}
