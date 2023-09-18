//
//  ContentView.swift
//  TaxCulclator
//
//  Created by Motoki Okayasu on 2023/09/18.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    //Double型
    @State var tax8 = 0.0
    @State var tax10 = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            //ここに文字を入力は入力がないときのヒント
            TextField("ここに文字を入力", text: $inputText)
                .keyboardType(.numberPad)
            Button("計算") {
                //数字以外の文字が打ち込まれた時に、代用として0を使用する。クラッシュ対策
                tax8 = (Double(inputText) ?? 0) * 0.08
                tax10 = (Double(inputText) ?? 0) * 0.1
            }
            .padding()
            Text("価格: \(inputText)")
            Text("消費税8%: \(tax8)")
            Text("消費税10%: \(tax10)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
