//
//  CaptionedImageView.swift
//  SwiftUI Examples
//
//  Created by Hannan, John Joseph on 8/23/22.
//

import SwiftUI

struct CaptionedImageView: View {
    var body: some View {
        VStack {
            Image("Grand Canyon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Text("The Grand Canyon")
        }
    }
}

struct CaptionedImageView_Previews: PreviewProvider {
    static var previews: some View {
        CaptionedImageView()
    }
}
