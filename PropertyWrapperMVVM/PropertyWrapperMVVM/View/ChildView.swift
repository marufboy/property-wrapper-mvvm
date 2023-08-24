//
//  ChildView.swift
//  PropertyWrapperMVVM
//
//  Created by Muhammad Afif Maruf on 24/08/23.
//

import SwiftUI

struct ChildView: View {
    @ObservedObject var counterVM: CounterViewModel
    var body: some View {
        VStack {
            Text("Child View")
            Text("Random number is: \(counterVM.number)")
            Button("Randomize number") {
                counterVM.randomNumber()
            }
            .padding(.bottom)
        }.padding(.bottom)
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView(counterVM: CounterViewModel())
    }
}
