//
//  We_AreApp.swift
//  We Are
//
//  Created by Hannan, John Joseph on 8/25/22.
//

import SwiftUI

@main
struct We_AreApp: App {
    @StateObject var cheerManager = CheerManager()
    var body: some Scene {
        WindowGroup {
            WeAreView()
                .environmentObject(cheerManager)
        }
    }
}
