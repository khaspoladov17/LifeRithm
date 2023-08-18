//
//  EmptyIconView.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 08.04.23.
//

import SwiftUI

struct EmptyIconView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(AppImage.AppIcon.imageEmptyState)
                .resizable()
                .scaledToFit()
                .frame(width: getWidth() - 100, height: getWidth() - 100)
            
            VStack {
                Text("Наслождайтесь отдыхом")
                    .bold()
                    .foregroundColor(AppColor.gray)
                    .font(.system(size: 20))
                Text("Отдохните и восстанавливайтесь силами, вы это заслужили")
                    .bold()
                    .foregroundColor(AppColor.gray)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
            }
            .frame(width: getWidth() - 100, alignment: .center)
            Spacer()
        }
    }
}

struct EmptyIconView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyIconView()
    }
}
