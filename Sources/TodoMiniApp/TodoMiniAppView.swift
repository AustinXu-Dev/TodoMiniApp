//
//  TodoMiniAppView.swift
//  TodoMiniApp
//
//  Created by Austin Xu on 2024/12/14.
//

import Foundation
import SwiftUI

public class TodoMiniAppView: MiniAppProtocol{
    var toDoTasks: [String] = ["Buy a cup of coffee...", "Buy a cup of tea..."]
    
    public init() {}

    public var view: AnyView {
        AnyView(
            VStack{
                List(toDoTasks, id: \.self) { item  in
                    HStack{
                        Text(item)
                            .font(.headline)
                        Spacer()
                        Image(systemName: "circle")
                    }
                }
            }
        )
    }
}
