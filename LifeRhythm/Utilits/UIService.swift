//
//  UIService.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 08.04.23.
//

import Foundation
import SwiftUI
// Размеры Экрана
extension View {
    func getWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }
    
    func getHeight() -> CGFloat {
        return UIScreen.main.bounds.height
    }
}
