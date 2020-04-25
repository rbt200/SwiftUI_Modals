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
    @State private var selectedFlag: String = ""
    
    let flags = ["🇦🇽", "🇦🇱", "🇩🇿", "🇦🇸", "🇦🇩", "🇦🇴", "🇦🇮"]
    
    var body: some View {
        
        List {
            
            ForEach(0..<self.flags.count) { index in
                HStack {
                    Text(self.flags[index])
                        .font(.custom("Arial", size: 100))
                    Text("Flag \(index)")
                }.onTapGesture {
                    self.showModal.toggle()
                    self.selectedFlag = self.flags[index]
                }
                
            }
            
        }.sheet(isPresented: self.$showModal) {
            HStack {
                Text(self.selectedFlag)
                    .font(.custom("Arial", size:     200))
            }
        }
            
        
//        Button("Show modal") {
//            self.showModal.toggle()
//        }.sheet(isPresented: $showModal) {
//            Text("I am a modal")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
