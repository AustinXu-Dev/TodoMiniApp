//
//  MiniAppProtocol.swift
//  TodoMiniApp
//
//  Created by Austin Xu on 2024/12/14.
//

import Foundation
import SwiftUI

@MainActor
public protocol MiniAppProtocol {
    var view: AnyView { get }
}
