//
//  ContentView.swift
//  DesignSystemStudyOnSwift
//
//  Created by SUNGIL-POS on 2023/08/21.
//

import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""

    var body: some View {
        VStack {
//            DSTextField(style: .TextField, content: $inputText, maxLength: 100)
            
            HStack {
                DSButton.CustomButtonView(
                    style: .primary(isDisabled: false))
                {
                    print("Hello World!")
                } label: {
                    VStack {
                        Text("Confirm")
                    }
                }
                DSButton.CustomButtonView(
                    style: .secondary(isDisabled: false))
                {
                    print("Hello World!")
                } label: {
                    VStack {
                        Text("Cancel")
                    }
                }
            }
            .padding(.top)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
