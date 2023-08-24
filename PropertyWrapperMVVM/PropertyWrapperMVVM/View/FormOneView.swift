//
//  FormOneView.swift
//  PropertyWrapperMVVM
//
//  Created by Muhammad Afif Maruf on 24/08/23.
//

import SwiftUI

struct FormOneView: View {
    @StateObject var formVM = FormViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Enter text for Screen 1", text: $formVM.name)
                    .padding()
                

                NavigationLink("Go to form two", destination: FormTwoView())
            }
            .navigationTitle("Home View")
        }
        .environmentObject(formVM)
    }
}

struct FormOneView_Previews: PreviewProvider {
    static var previews: some View {
        FormOneView()
    }
}
