//
//  AddTaskView.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 14.04.23.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject private var taskVM: TaskViewModel
 
    @State private var date_start = Date()
    @State private var date_finish = Date()
    
    @Binding var backButton: Bool
    
    private var puseButtonOffset: (x: CGFloat, y: CGFloat) {
        return ((getWidth() / 2 - 50), (getHeight() / 2 - 110))
    }
    
    var body: some View {
        ZStack {
            List {
                Section("Задача", content: {
                    VStack(spacing: 10, content: {
                        Text("Заголовок")
                            .frame(maxWidth: .infinity, alignment: .leading)
                                                    
                        TextField("Заголовок", text: $taskVM.item.name)
                            .padding()
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: 10).stroke(AppColor.gray.opacity(0.5), lineWidth: 1)
                            })
                        
                        Text("Описание")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        TextEditor(text: $taskVM.item.description)
                            .padding()
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: 10).stroke(AppColor.gray.opacity(0.5), lineWidth: 1)
                            })
                    })
                    .padding()
                })
                
                Section("Дата", content: {
                    VStack(content: {
                        DatePicker("Начала",
                                   selection: $date_start,
                                   in: Date()...)
                        
                        DatePicker("Конца",
                                   selection: $date_finish,
                                   in: date_start...)
                    })
                })
                
                Button(action: {
                    guard self.taskVM.cheackFilder() == true else { return }
                    self.taskVM.setValue(form: date_start, to: date_finish)
                    self.taskVM.addObject()
                    self.backButton.toggle()
                }, label: {
                    SaveButton()
                })
            }
        }
        .onAppear {
            taskVM.clearFilder()
        }
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView(backButton: .constant(false))
            .environmentObject(TaskViewModel())
    }
}
