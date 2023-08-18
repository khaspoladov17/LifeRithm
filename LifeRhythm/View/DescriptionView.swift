//
//  DescriptionView.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 22.04.23.
//

import SwiftUI

struct DescriptionView: View {
    @EnvironmentObject private var task: TaskViewModel
    @Binding var backButton: Bool
    var body: some View {
        VStack(spacing: 10, content: {
            Text("Заголовок")
                .frame(width: getWidth() - 40, alignment: .leading)
                .foregroundColor(.blue)
            if let name = task.item.name {
                Text(name)
                    .frame(width: getWidth() - 40, alignment: .leading)
            } else {
                Text("Пусто")
                    .frame(width: getWidth() - 40, alignment: .leading)
                    .foregroundColor(AppColor.gray)
            }
             
            Text("Описание")
                .frame(width: getWidth() - 40, alignment: .leading)
                .foregroundColor(.blue)
            if let description = task.item.description {
                Text(description)
                    .frame(width: getWidth() - 40, alignment: .leading)
            } else {
                Text("Пусто")
                    .frame(width: getWidth() - 40, alignment: .leading)
                    .foregroundColor(AppColor.gray)
            }
            Button(action: {
                task.remove(id: task.item.id)
                backButton.toggle()
            }, label: {
                Text("Удалить")
                    .foregroundColor(.red)
            })
            Spacer()
        }).padding()
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(backButton: .constant(false))
    }
}
