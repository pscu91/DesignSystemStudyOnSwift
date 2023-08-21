//
//  ContentView.swift
//  DesignSystemStudyOnSwift
//
//  Created by SUNGIL-POS on 2023/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DSButton.CustomButtonView(
                style: .primary(isDisabled: false))
            {
                print("Hello World!")
            } label: {
                VStack {
                   Text("확 인")
                }
            }
            DSButton.CustomButtonView(
                style: .secondary(isDisabled: false))
            {
                print("Hello World!")
            } label: {
                VStack {
                   Text("취 소")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
