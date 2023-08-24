//
//  ParentView.swift
//  PropertyWrapperMVVM
//
//  Created by Muhammad Afif Maruf on 24/08/23.
//

import SwiftUI

//study case increase number and add random text
struct ParentView: View {
    @StateObject var counterVm = CounterViewModel()
    var body: some View {
        VStack{
            Text("Parent View")
            Text("Count is: \(counterVm.count)")
            Button("Increment Counter") {
                counterVm.incrementCounter()
            }
            .padding(.bottom)
            //TODO: Create child view in here
            ChildView(counterVM: counterVm)
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
