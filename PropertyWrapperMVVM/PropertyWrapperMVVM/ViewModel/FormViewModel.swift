//
//  FormViewModel.swift
//  PropertyWrapperMVVM
//
//  Created by Muhammad Afif Maruf on 24/08/23.
//

import Foundation

class FormViewModel: ObservableObject{
    @Published var name: String = ""
    @Published var address: String = ""
    @Published var university: String = ""
    
    func submit() -> String{
        return "my name is \(name) live in \(address) and school in \(university)"
    }
}
