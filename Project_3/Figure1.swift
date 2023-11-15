//
//  Figure1.swift
//  Project_3
//
//  Created by Kyle Wynne on 11/13/23.
//

import Foundation
import SwiftUI

struct FigureOneView: View {
    @State private var isButtonVisible: Bool = false
    var body: some View {
        VStack {
            //Names the toggle switch that houses the animation
            Toggle(isOn:$isButtonVisible.animation(
                .linear(duration: 2))) {
                    Text("Show/Hide Instructions")
                }.padding()
            if isButtonVisible {
                //show the instructions based off the toggle with the animation
                Text("Tap and look at the console")
                    .padding()
                
            }
            //use the tap gesture to print tapped in the console when the image is tapped
            Image(systemName: "hand.point.right.fill")
                .gesture(
                    TapGesture()
                        .onEnded {_ in
                            print("Tapped")
                        }
                )
                .padding()
        }
    }
}
