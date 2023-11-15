//
//  Figure2.swift
//  Project_3
//
//  Created by Kyle Wynne on 11/13/23.
//

import Foundation
import SwiftUI

struct FigureTwoView: View {
    @State private var foregroundColor: Color = Color.black //state var for the text color
    @State private var backgroundColor: Color = Color.white // state var for the background color
    var body: some View {
        VStack {
            //creates a text box with the Context Menu Text
            Text("Context Menu!")
                .font(.largeTitle)
                .padding()
                //define state var modifiers
                .foregroundColor(foregroundColor)
                .background(backgroundColor)
                .animation(.linear(duration: 2)) //this adds the animation fading effect
                .contextMenu { //create the context menu
                    Button(action: { //user option for a normal color set
                        self.foregroundColor = .black
                        self.backgroundColor = .white
                    }) {
                        Text("Normal Colors")
                        Image(systemName: "paintbrush")
                    }
                    Button(action: { //user option for an inverse colorset
                        self.foregroundColor = .white
                        self.backgroundColor = .black
                    }) {
                        Text("Inverted Colors")
                        Image(systemName: "paintbrush.fill")
                    }
                    Button(action: { //makes everything green
                        self.foregroundColor = .green
                        self.backgroundColor = .green
                    }) {
                        Text("GREEN MODE")
                        Image(systemName: "paintbrush.fill")
                    }
                }
        }
    }
}

