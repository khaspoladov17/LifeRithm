//
//  SaveButton.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 21.04.23.
//

import Foundation
import SwiftUI

struct SaveButton: View {
    var body: some View {
        ZStack{
            HStack(content: {
                Text("Сохранить")
                    .bold()
                    .foregroundColor(AppColor.white)
                    .font(.system(size: 20))
            })
            .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
            .background(AppColor.black)
            .cornerRadius(10)
        }
    }
}
