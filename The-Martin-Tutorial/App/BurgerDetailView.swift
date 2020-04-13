//
//  BurgerDetailView.swift
//  The-Martin-Tutorial
//
//  Created by AppLog on 13/04/2020.
//  Copyright © 2020 AppLog. All rights reserved.
//

import SwiftUI

struct BurgerDetailView: View {
    
    var burger: Burger
    
    var body: some View {
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
            VStack {
                Text(burger.name)
                    .font(Font.system(size: 32))
                    .fontWeight(.black)
                    .padding(.top, 28)
                    .padding(.leading, 16)
                Text(burger.description)
                    .padding(.top, 8)
                    .padding(.leading, 26)
            }
            Spacer()
        }
    }
}

struct BurgerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BurgerDetailView(burger: Burger(id: UUID().uuidString, name: "Test", imageName: "bigmac"))
    }
}
