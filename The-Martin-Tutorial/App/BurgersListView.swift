//
//  ListView.swift
//  The-Martin-Tutorial
//
//  Created by AppLog on 13/04/2020.
//  Copyright © 2020 AppLog. All rights reserved.
//

import SwiftUI

struct BurgersListView: View {
    
    @State var burgers: [Burger] = [
        Burger(id: UUID().uuidString, name: "Big Mac", imageName: "bigmac"),
        Burger(id: UUID().uuidString, name: "Cheese", imageName: "cheese"),
        Burger(id: UUID().uuidString, name: "Double Cheese", imageName: "doublecheese"),
        Burger(id: UUID().uuidString, name: "280", imageName: "280")
    ]
    
    private func addBurger() {
        self.burgers.append(Burger(id: UUID().uuidString, name: "280", imageName: "280"))
    }
    
    private func deleteBurger(at offsets: IndexSet) {
        self.burgers.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(burgers, id: \.id) { burger in
                    NavigationLink(destination: BurgerDetailView(burger: burger, burgers: self.burgers), label: {
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
                .onDelete(perform: deleteBurger(at:))
            }
            .navigationBarTitle("Burgers")
            .navigationBarItems(trailing: Button(action: {
                self.addBurger()
            }, label: {
                Group {
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                        .environment(\.colorScheme, .light)
                    
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .environment(\.colorScheme, .dark)
                }
            }))
        }
    }
}

struct BurgersListView_Previews: PreviewProvider {
    static var previews: some View {
        BurgersListView()
    }
}
