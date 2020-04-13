//
//  ListView.swift
//  The-Martin-Tutorial
//
//  Created by AppLog on 13/04/2020.
//  Copyright © 2020 AppLog. All rights reserved.
//

import SwiftUI

struct BurgersListView: View {
    
    var burgers: [Burger] = [
        Burger(id: UUID().uuidString, name: "Big Mac", imageName: "bigmac"),
        Burger(id: UUID().uuidString, name: "Cheese", imageName: "cheese"),
        Burger(id: UUID().uuidString, name: "Double Cheese", imageName: "doublecheese"),
        Burger(id: UUID().uuidString, name: "280", imageName: "280")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(burgers, id: \.id) { burger in
                    NavigationLink(destination: BurgerDetailView(burger: burger), label: {
                        HStack {
                            Image(burger.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .padding(.leading, 8)
                                .padding(.trailing, 16)
                            Text(burger.name)
                        }
                    })
                }
            }.navigationBarTitle("Burgers")
        }
    }
}

struct BurgersListView_Previews: PreviewProvider {
    static var previews: some View {
        BurgersListView()
    }
}
