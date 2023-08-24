//
//  FormThreeView.swift
//  PropertyWrapperMVVM
//
//  Created by Muhammad Afif Maruf on 24/08/23.
//

import SwiftUI

struct FormThreeView: View {
    @EnvironmentObject var formVM: FormViewModel
    @State var formReport: String = ""
    
    var body: some View {
        VStack{
            TextField("Enter text for Screen 3", text: $formVM.university)
                .padding()
            
            Button {
                formReport = formVM.submit()
            } label: {
                Text("Submit")
            }
            
            Text(formReport)
        }
        .navigationTitle("Screen three")
    }
}

struct FormThreeView_Previews: PreviewProvider {
    static var previews: some View {
        FormThreeView().environmentObject(FormViewModel())
    }
}
