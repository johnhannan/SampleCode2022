//
//  MascotView.swift
//  We Are
//
//  Created by Hannan, John Joseph on 8/25/22.
//

import SwiftUI

struct MascotView: View {
    let imageName : String
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
    }
}

struct MascotView_Previews: PreviewProvider {
    static var previews: some View {
        MascotView(imageName: "Mascot 0")
    }
}
