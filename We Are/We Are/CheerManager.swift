//
//  CheerManager.swift
//  We Are
//
//  Created by Hannan, John Joseph on 8/25/22.
//

import Foundation

class CheerManager : ObservableObject {
    
    var mascotImageName = "Mascot 0"
    var firstCheerText = "We Are"
    var secondCheerText = "Penn State"
    
    var shouldShowFirstCheer : Bool { cheerCount % 2 == 1 }
    var shouldShowSecondCheer : Bool  { cheerCount > 0 && cheerCount % 2 == 0  }
    
    @Published var cheerCount = 0
    private var totalCount = 7
    
    func doACheer() {
        cheerCount = (cheerCount + 1) % totalCount
        
    }
}
