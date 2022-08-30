//
//  WeAreView.swift
//  We Are
//
//  Created by Hannan, John Joseph on 8/25/22.
//

import SwiftUI

struct WeAreView: View {
    @ObservedObject var cheerManager = CheerManager()
    var body: some View {
        ZStack {
            Color.orange
                .opacity(0.5)
                .ignoresSafeArea()
            VStack {
                MascotView(imageName: cheerManager.mascotImageName)
                CheerTextView(title: cheerManager.cheerText, isVisible: cheerManager.shouldShowFirstCheer)
                CheerTextView(title: cheerManager.cheerText, isVisible: cheerManager.shouldShowSecondCheer)
                CheerButton(action: cheerManager.doACheer)
            }
            .padding()
   
        }
    }
}

struct WeAreView_Previews: PreviewProvider {
    static var previews: some View {
        WeAreView()
    }
}
