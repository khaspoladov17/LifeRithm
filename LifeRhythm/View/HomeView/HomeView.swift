//
//  HomeView.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 08.04.23.
//

import SwiftUI
import Foundation

struct HomeView: View {
    @StateObject private var taskVM = TaskViewModel()
    @State private var showDescription: Bool = false
    @State private var showAddView: Bool = false
    private var puseButtonOffset: (x: CGFloat, y: CGFloat) {
        return ((getWidth() / 2 - 50), (getHeight() / 2 - 70))
    }
     
    var body: some View {
        ZStack(content: {
            VStack(spacing: 0, content:{
                TopBarView(title: "Сегодня")
                
                if !taskVM.taskData.isEmpty {
                    List(taskVM.taskData.indices, id: \.self) { index in
                        self.cell(index: index)
                    }
                    .listStyle(.plain)
                } else {
                    EmptyIconView()
                }
            })
            
            Button(action: {
                showAddView.toggle()
            }, label: {
                PlusButtonView()
            })
            .offset(x: puseButtonOffset.x, y: puseButtonOffset.y)
            .sheet(isPresented: $showAddView, content: {
                AddTaskView(backButton: $showAddView)
                    .environmentObject(taskVM)
            })
        })
    }
    
    func cell(index: Int) -> some View {
        Button(action: {
            showDescription.toggle()
            taskVM.item = taskVM.taskData[index]
        }, label: {
            HStack(content: {
                if let id = taskVM.taskData[index].id {
                    Text("\(id + 1)")
                        .bold()
                }
                
                VStack(content: {
                    if let name = taskVM.taskData[index].name {
                        Text(name)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)
                            })
                            .cornerRadius(10)
                    }
                })
            })
            .frame(width: getWidth() - 20, alignment: .leading)
            .listRowSeparator(.hidden)
        })
        .sheet(isPresented: $showDescription, content: {
            DescriptionView(backButton: $showDescription)
                .environmentObject(taskVM)
        })
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

