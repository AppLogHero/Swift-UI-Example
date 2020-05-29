//
//  ListView.swift
//  The-Martin-Tutorial
//
//  Created by AppLog on 13/04/2020.
//  Copyright © 2020 AppLog. All rights reserved.
//

import SwiftUI

struct BurgersListView: View {
    
    //Data for burger list with @State wrapper
    @State var burgers: [Burger] = [
        Burger(id: UUID().uuidString, name: "Big Mac", imageName: "bigmac"),
        Burger(id: UUID().uuidString, name: "Cheese", imageName: "cheese"),
        Burger(id: UUID().uuidString, name: "Double Cheese", imageName: "doublecheese"),
        Burger(id: UUID().uuidString, name: "280", imageName: "280")
    ]
    
    //Add burger in burgers list
    private func addBurger() {
        self.burgers.append(Burger(id: UUID().uuidString, name: "280", imageName: "280"))
    }
    
    //Delete burger from burgers list
    private func deleteBurger(at offsets: IndexSet) {
        self.burgers.remove(atOffsets: offsets)
    }
    
    //View body
    var body: some View {
        //Navigation view for navigationbar
        NavigationView {
            //List (as TableView)
            List {
                //For all item in array create cell with navigation link
                ForEach(burgers, id: \.id) { burger in
                    //Navigation link, for show Detail view
                    NavigationLink(destination: BurgerDetailView(burger: burger, burgers: self.burgers), label: {
                        //Horizontal stack with burger image and name
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
                //Swipe for delete cell and burger item in array
                .onDelete(perform: deleteBurger(at:))
            }
            //Navigation bar configuration
            .navigationBarTitle("Burgers")
            .navigationBarItems(trailing: Button(action: {
                self.addBurger()
            }, label: {
                //Group with colorscheme state (dark mode configuration)
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
