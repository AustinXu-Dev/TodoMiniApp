//
//  TodoMiniAppView.swift
//  TodoMiniApp
//
//  Created by Austin Xu on 2024/12/14.
//

import Foundation
import SwiftUI

public class TodoMiniAppView{
    
    public init() {}

    public static func createSampleView() -> some View{
        let sampleView = sampleView()
        return sampleView
    }
    
}

struct sampleView: View {
    var toDoTasks: [String] = ["Buy a cup of coffee...", "Buy a cup of tea..."]
    var body: some View {
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
    }
}
