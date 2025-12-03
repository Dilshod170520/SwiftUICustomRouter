//
//  NavigationStackIfNeeded.swift
//  CustomRouterSwiftUI
//
//  Created by Dilshodbek Qulmirzayev on 27/11/25.
//

import SwiftUI

struct NavigationStackIfNeeded<Content: View>: View {
    
    @Binding var path: [AnyDestination]
    var addNavigationView: Bool = true
    @ViewBuilder var content: Content
    
    var body: some View {
        if addNavigationView {
            NavigationStack(path: $path) {
                content
                    .navigationDestination(for: AnyDestination.self) { value in
                        value.destination
                            .toolbarVisibility(.hidden, for: .bottomBar)
                    }
            }
        } else {
            content
        }
    }
}
