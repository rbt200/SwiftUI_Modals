//
//  ContentView.swift
//  SwiftUI_Modals
//
//  Created by Ivan Ivanov on 25.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showModal: Bool = false
    
    var body: some View {
        Button("Show modal") {
            self.showModal.toggle()
        }.sheet(isPresented: $showModal) {
            Text("I am a modal")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
