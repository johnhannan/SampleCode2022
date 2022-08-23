//
//  Overlay.swift
//  SwiftUI Examples
//
//  Created by Hannan, John Joseph on 8/23/22.
//

import SwiftUI

struct Overlay: View {
    var body: some View {
        VStack {
            Image("Grand Canyon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(alignment: .bottomTrailing) {
                    Text("The Grand Canyon")
                        .foregroundColor(.white)
                        .padding(3)
                }
            
        }
    }
}

struct Overlay_Previews: PreviewProvider {
    static var previews: some View {
        Overlay()
    }
}
