//
//  CaseOneViewModel.swift
//  PropertyWrapperMVVM
//
//  Created by Muhammad Afif Maruf on 24/08/23.
//

import Foundation

class CounterViewModel: ObservableObject{
    @Published var count = 0
    @Published var number = 0
    
    init() {
        print("Initialized Counter View Model")
    }
    
    func incrementCounter() {
        count += 1
    }
    
    func randomNumber(){
        number = (0..<1000).randomElement()!
    }
}

