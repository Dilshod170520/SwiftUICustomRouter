//
//  AnyAppAlert.swift
//  CustomRouterSwiftUI
//
//  Created by Dilshodbek Qulmirzayev on 27/11/25.
//

import SwiftUI

public struct AnyAppAlert: Sendable {
    var title: String
    var subtitle: String?
    var buttons: @Sendable () -> AnyView
    
    public init(
        title: String,
        subtitle: String? = nil,
        buttons: (@Sendable () -> AnyView)? = nil
    ) {
        self.title = title
        self.subtitle = subtitle
        self.buttons = buttons ?? {
            AnyView(
                Button("OK", action: {
                    
                })
            )
        }
    }
    
    public init(error: Error) {
        self.init(title: "Error", subtitle: error.localizedDescription, buttons: nil)
    }
}
