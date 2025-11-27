//
//  SegueOption.swift
//  CustomRouterSwiftUI
//
//  Created by Dilshodbek Qulmirzayev on 27/11/25.
//
import SwiftUI

public enum SegueOption {
    case push, sheet, fullScreenCover
    
    var shouldAddNewNavigationView: Bool {
        switch self {
        case .push:
            return false
        case .sheet, .fullScreenCover:
            return true
        }
    }
}
