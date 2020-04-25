//
//  FlagDetailView.swift
//  SwiftUI_Modals
//
//  Created by Ivan Ivanov on 25.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct FlagDetailView: View {
    
    //    var flag: String = ""
    // @Binding means that this property is sent from another view
    // and can be changed here
    // and if it is changed then it will be reflacted in host view
    //    @Binding var country: String
    //    @Binding var showModal: Bool
    
    @Binding var flagVM: FlagViewModel
    
    var body: some View {
        VStack {
            
            Text(self.flagVM.flag)
               .font(.custom("Arial", size: 200))
            
            TextField("Enter country name...", text: self.$flagVM.country)
                .padding()
                .fixedSize()
            
            Button("Submit") {
                self.flagVM.showModal.toggle()
            }
        }
    }
}

struct FlagDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlagDetailView(flagVM: .constant(FlagViewModel()))
    }
}
