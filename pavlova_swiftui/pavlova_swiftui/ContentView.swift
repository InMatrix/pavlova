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

struct Ratings: View {
    var body: some View {
        HStack{
            Image(systemName: "star.fill").foregroundColor(.green)
            Image(systemName: "star.fill").foregroundColor(.green)
            Image(systemName: "star.fill").foregroundColor(.green)
            Image(systemName: "star.fill").foregroundColor(.black)
            Image(systemName: "star.fill").foregroundColor(.black)
            Text("170 reviews")
                .font(.system(size: 20, weight: .bold))
                .kerning(0.5)
        }
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
                Ratings()
                
            }
            IconList().padding()
        }
    }
}

struct IconList: View {
    let fontSize:CGFloat = 18
    let lineHeight:CGFloat
    init(){
        lineHeight = fontSize * 2
    }
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "rectangle")
                Text("PREP:").frame(minHeight: lineHeight)
                Text("25 min").frame(minHeight: lineHeight)
            }
            VStack{
                Image(systemName: "circle")
                Text("COOK:").padding(.vertical, 18/2)
                Text("25 min").padding(.vertical, 18/2)
            }
            VStack{
                Image(systemName: "triangle")
                Text("FEEDS:")
                Text("25 min")
            }
        }
        .font(.system(size: fontSize, weight: .bold))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //        LeftColumn()
    }
}
