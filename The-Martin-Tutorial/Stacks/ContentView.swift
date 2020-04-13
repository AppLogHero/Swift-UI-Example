//
//  ContentView.swift
//  The-Martin-Tutorial
//
//  Created by AppLog on 13/04/2020.
//  Copyright © 2020 AppLog. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Conteneur qui permets d'fficher les éléments de manière vertical
        VStack {
            VStack {
                Text("Bonjour")
                Text("Martin")
            }
            // Horizontal
            HStack {
                Text("Bonjour")
                Text("Martin")
            }
            ZStack {
                Text("Bonjour")
                Text("Martin")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
