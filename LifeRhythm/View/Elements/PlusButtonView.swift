//
//  PlusButtonView.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 08.04.23.
//

import Foundation
import SwiftUI

struct PlusButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.red.opacity(0.8))
                .frame(width: 60, height: 60)
                .padding()
                .overlay(content: {
                    Text("+")
                        .bold()
                        .foregroundColor(AppColor.white)
                        .font(.system(size: 28))
                })
        }
    }
}
