//
//  AnyDestination.swift
//  CustomRouterSwiftUI
//
//  Created by Dilshodbek Qulmirzayev on 27/11/25.
//

import SwiftUI

public struct AnyDestination: Hashable {
    let id = UUID().uuidString
    var destination: AnyView
    
    init<T: View>(destination: T) {
        self.destination = AnyView(destination)
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public static func == (lhs: AnyDestination, rhs: AnyDestination) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}
//
// UI-only, not truly Sendable; safe because used on main actor.
extension AnyDestination: @unchecked Sendable {}
