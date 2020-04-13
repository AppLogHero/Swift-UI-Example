//
//  BurgerDetailView.swift
//  The-Martin-Tutorial
//
//  Created by AppLog on 13/04/2020.
//  Copyright © 2020 AppLog. All rights reserved.
//

import SwiftUI

struct BurgerDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
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
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image("BACK")
                .resizable()
                .scaledToFit()
                .foregroundColor(.black)
        }))
    }
}

struct BurgerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BurgerDetailView(burger: Burger(id: UUID().uuidString, name: "Test", imageName: "bigmac"))
    }
}
