//
//  RedSquare.swift
//  SwiftUI Examples
//
//  Created by Hannan, John Joseph on 8/23/22.
//

import SwiftUI

struct RedSquare: View {
    let size :CGFloat = 75
    var body: some View {
        Rectangle()
            .fill(.red)
            .frame(width: size, height: size)
            //.aspectRatio(1.0, contentMode: .fit)
    }
}

struct RedSquare_Previews: PreviewProvider {
    static var previews: some View {
        RedSquare()
    }
}
