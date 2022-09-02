//
//  CheerButton.swift
//  We Are
//
//  Created by Hannan, John Joseph on 8/25/22.
//

import SwiftUI

struct CheerButton: View {
    @EnvironmentObject var cheerManager : CheerManager

    var action : () -> Void
    var body: some View {
        Button(action: action) {
            Text("Cheer")
                .font(.largeTitle)
                //.padding()
        }
        .buttonStyle(.borderedProminent)
        .cornerRadius(10)
    }
}

struct CheerButton_Previews: PreviewProvider {
    static var previews: some View {
        CheerButton(action: {})
    }
}
