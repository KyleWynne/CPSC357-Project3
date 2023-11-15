//
//  ContentView.swift
//  Project_3
//
//  Created by Kyle Wynne on 11/13/23.
//

import SwiftUI


    struct ContentView: View {
        var body: some View {
            //create the three tabs in the tab view
            TabView {
                //define the figure 1 tab
                FigureOneView()
                    .tabItem {
                        Image(systemName: "circle.fill")
                        Text("Figure 1")
                    }
                //define the figure 2 tab
                FigureTwoView()
                    .tabItem {
                        Image(systemName: "square.fill")
                        Text("Figure 2")
                    }
                //define the figure 3 tab
                FigureThreeView()
                    .tabItem {
                        Image(systemName: "triangle.fill")
                        Text("Figure 3")
                    }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
