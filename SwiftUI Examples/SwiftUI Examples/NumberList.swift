//
//  NumberList.swift
//  SwiftUI Examples
//
//  Created by Hannan, John Joseph on 8/23/22.
//

import SwiftUI

struct NumberList: View {
    var count:Int
    var body: some View {
        HStack(alignment:.top, spacing:20) {
            //Spacer()
            Text("this")
            ScrollView {
                VStack(alignment:.trailing, spacing:10) {
                    ForEach(0..<count, id:\.self) { i in
                        Text("Number \(i)")
                    }
                    .font(.largeTitle)
                }
            }
            //Spacer()
            Text("hello")
        }
        .padding()
    }
}

struct NumberList_Previews: PreviewProvider {
    static var previews: some View {
        NumberList(count: 8)
    }
}
