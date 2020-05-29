//
//  SimilarItem.swift
//  The-Martin-Tutorial
//
//  Created by AppLog on 13/04/2020.
//  Copyright © 2020 AppLog. All rights reserved.
//

import SwiftUI

struct SimilarItem: View {
    
    var burger: Burger
    
    //View body
    var body: some View {
        VStack {
            Image(burger.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            Text(burger.name)
                .foregroundColor(.white)
                .fontWeight(.black)
                .padding(.bottom, 16)
        }
        .background(
            Rectangle()
            .cornerRadius(15)
                .foregroundColor(.gray)
        )
    }
}

struct SimilarItem_Previews: PreviewProvider {
    static var previews: some View {
        SimilarItem(burger: Burger(id: UUID().uuidString, name: "Test", imageName: "bigmac"))
    }
}
