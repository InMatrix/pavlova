//
//  ContentView.swift
//  pavlova_swiftui
//
//  Created by Tao Dong on 8/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, content: {
            Image("pavlova")
                .resizable()
                .scaledToFit()
            Description()
        })
    }
}

struct Description: View {
    var body: some View {
        VStack{
            Text("Strawberry Pavlova")
                .font(.largeTitle)
            Text("Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.")
                .font(.body)
                .padding()
            HStack{
                Text("⭐️⭐️⭐️⭐️⭐️")
                Text("170 reviews")
            }
            ActivityTime().padding()
        }
    }
}

struct ActivityTime: View {
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "rectangle")
                Text("PREP")
                Text("25 min")
            }
            VStack{
                Image(systemName: "circle")
                Text("COOK")
                Text("25 min")
            }
            VStack{
                Image(systemName: "triangle")
                Text("FEEDS")
                Text("25 min")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //        LeftColumn()
    }
}
