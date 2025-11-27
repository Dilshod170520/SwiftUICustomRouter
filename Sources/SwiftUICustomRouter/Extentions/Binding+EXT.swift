//
//  Binding+EXT.swift
//  CustomRouterSwiftUI
//
//  Created by Dilshodbek Qulmirzayev on 27/11/25.
//

import SwiftUI

public extension Binding where Value == Bool {
    
    init<T: Sendable>(ifNotNil value: Binding<T?>) {
        self.init {
            value.wrappedValue != nil
        } set: { newValue in
            if !newValue {
                value.wrappedValue = nil
            }
        }
    }
}
