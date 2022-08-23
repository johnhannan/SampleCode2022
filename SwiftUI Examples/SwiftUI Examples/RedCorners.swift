//
//  RedCorners.swift
//  SwiftUI Examples
//
//  Created by Hannan, John Joseph on 8/23/22.
//

import SwiftUI

struct RedCorners: View {
    var body: some View {
        VStack {
            RedRow()
            Spacer()
            RedRow()
        }
    }
}

struct RedCorners_Previews: PreviewProvider {
    static var previews: some View {
        RedCorners()
    }
}
