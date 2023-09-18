//
//  ContentView.swift
//  TaxCulclator
//
//  Created by Motoki Okayasu on 2023/09/18.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    
    var body: some View {
        VStack {
            TextField("ここに文字を入力", text: $inputText)
            Button("計算") {
            }
            .padding()
            Text("価格:")
            Text("消費税8%:")
            Text("消費税10%:")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
