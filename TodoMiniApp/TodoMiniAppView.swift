//
//  TodoMiniAppView.swift
//  TodoMiniApp
//
//  Created by Austin Xu on 2568/1/28.
//

import Foundation
import SwiftUI

public class TodoMiniAppView{
    
    public init() {}

        // This is the func we have to call in super app
    public static func createSampleView() -> some View{
        let sampleView = WelcomeView()
        return sampleView
    }
    
}

struct WelcomeView: View{
    var body: some View{
        VStack{
            Text("Welcome to Todo Mini App View")
        }
    }
}
