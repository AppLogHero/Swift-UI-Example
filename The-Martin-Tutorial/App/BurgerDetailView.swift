//
//  BurgerDetailView.swift
//  The-Martin-Tutorial
//
//  Created by AppLog on 13/04/2020.
//  Copyright © 2020 AppLog. All rights reserved.
//

import SwiftUI

struct BurgerDetailView: View {
    
    //Environment object for use dismiss() func with custom back navbar button
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    //Environment object for use colorScheme object (darkMode)
    @Environment(\.colorScheme) var colorScheme

    //Burger attribute
    var burger: Burger
    //Burgers list attribute
    var burgers: [Burger]
    
    //View body
    var body: some View {
        ScrollView {
            //ScrollView content configuration
            VStack(alignment: .leading) {
                ZStack() {
                    Image("burger-detail-background")
                        .resizable()
                        .frame(height: 180)
                        .blur(radius: 20)
                    Image(burger.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                }
                VStack(alignment: .center) {
                    Text(burger.name)
                        .font(Font.system(size: 32))
                        .fontWeight(.black)
                        .padding(.top, 28)
                    Text(burger.description)
                        .padding(.top, 8)
                        .padding(.leading, 16)
                        .padding(.trailing, 16)
                        .font(Font.system(size: 14))
                }
                
                //Horizontal scrollView for display list of burger
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(burgers, id: \.id) { burger in
                            SimilarItem(burger: burger)
                        }
                    }
                }
                .padding(.leading, 16)
                .padding(.top, 16)
                
                Spacer()
            }
            //Navigationbar configuration
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                //Back action
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image("BACK")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(colorScheme == .light ? .black : .white)
            }))
        }
    }
}

struct BurgerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BurgerDetailView(burger: Burger(id: UUID().uuidString, name: "Test", imageName: "bigmac"), burgers: [Burger(id: UUID().uuidString, name: "Test", imageName: "bigmac"),Burger(id: UUID().uuidString, name: "Test", imageName: "bigmac"),Burger(id: UUID().uuidString, name: "Test", imageName: "bigmac")])
    }
}
