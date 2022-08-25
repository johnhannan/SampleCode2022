//
//  CheerTextView.swift
//  We Are
//
//  Created by Hannan, John Joseph on 8/25/22.
//

import SwiftUI

struct CheerTextView: View {
    let title: String
    let isVisible : Bool
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .opacity(isVisible ? 1.0 : 0.0)
    }
}

struct CheerTextView_Previews: PreviewProvider {
    static var previews: some View {
        CheerTextView(title: "We Are", isVisible: true)
    }
}
