//
//  FormTwoView.swift
//  PropertyWrapperMVVM
//
//  Created by Muhammad Afif Maruf on 24/08/23.
//

import SwiftUI

struct FormTwoView: View {
    @EnvironmentObject var formVM: FormViewModel
    
    var body: some View {
        VStack{
            TextField("Enter text for Screen 2", text: $formVM.address)
                .padding()
            NavigationLink("Go to form three", destination: FormThreeView())
        }
        .navigationTitle("Screen two")
    }
}

struct FormTwoView_Previews: PreviewProvider {
    static var previews: some View {
        FormTwoView().environmentObject(FormViewModel())
    }
}
