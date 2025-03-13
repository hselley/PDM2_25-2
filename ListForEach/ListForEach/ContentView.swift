//
//  ContentView.swift
//  ListForEach
//
//  Created by alumno on 27/02/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var body: some View {
        List {
            ForEach(0..<restaurantNames.count, id: \.self) {
                index in
                
                if verticalSizeClass == .compact {
                    // horizontal : landscape
                    HStack {
                        Image(restaurantNames[index])
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text(restaurantNames[index])
                            .font(.system(size: 30))
                            .foregroundColor(Color("Shelly"))
                    }
                } else { // vertical : portrait
                    HStack {
                        Image(restaurantNames[index])
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text(restaurantNames[index])
                            .foregroundColor(.purple)
                    }
                }
            }
            
        }
        .listStyle(.automatic)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.portrait)
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}


//        VStack {
//            // Opción 1
//            List {
//                ForEach(0..<10, id: \.self) { index in Text("Item \(index)")
//                }
//            }
//            // Opción 2
//            List {
//                ForEach(1...10, id: \.self) { Text("Item \($0)")
//                }
//            }
//            // Opción 3
//            List(1...10, id: \.self) {
//                Text("Item \($0)")
//            }
//        }
