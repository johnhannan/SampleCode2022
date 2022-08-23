//
//  RedRow.swift
//  SwiftUI Examples
//
//  Created by Hannan, John Joseph on 8/23/22.
//

import SwiftUI

struct RedRow: View {
    var body: some View {
        HStack {
            RedSquare()
            Spacer()
            RedSquare()
        }
    }
}

struct RedRow_Previews: PreviewProvider {
    static var previews: some View {
        RedRow()
    }
}
