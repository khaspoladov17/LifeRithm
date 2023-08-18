//
//  TopBarView.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 08.04.23.
//

import SwiftUI

struct TopBarView: View {
    @State var title: String
    
    var body: some View {
        ZStack{
            VStack(content: {
                HStack{
                    Text(title)
                        .bold()
                        .font(.system(size: 34))
                        .foregroundColor(AppColor.black)
                    Spacer()
                }
                .frame(width: getWidth() - 40, height: 50)
                Divider()
            })
           
        }
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView(title: "Сегодня")
    }
}
