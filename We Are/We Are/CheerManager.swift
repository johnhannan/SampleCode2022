//
//  CheerManager.swift
//  We Are
//
//  Created by Hannan, John Joseph on 8/25/22.
//

import Foundation

class CheerManager : ObservableObject {
    


    let cheers : Cheering = PSUCheer()
    
    enum CheerState {
        case initial, firstRoundFirstCheer, firstRoundSecondCheer, secondRoundFirstCheer, secondRoundSecondCheer
    }
    
    var cheerState : CheerState = .initial
    
    var mascotImageName : String {
        switch cheerState {
        case .initial:
            cheers.initialCheer.imageName
        case .firstRoundFirstCheer:
            cheers.firstRound.firstCheer.imageName
        case .firstRoundSecondCheer:
            <#code#>
        case .secondRoundFirstCheer:
            <#code#>
        case .secondRoundSecondCheer:
            <#code#>
        }
    }
    var firstCheerText = "We Are"
    var secondCheerText = "Penn State"
    
    var shouldShowFirstCheer : Bool { cheerCount % 2 == 1 }
    var shouldShowSecondCheer : Bool  { cheerCount != 0 && cheerCount % 2 == 0  }
    
    private var inFirstRound : Bool {cheerCount <= cheers.firstRoundCount*2}
    private var oddCheer : Bool {cheerCount > 0 && cheerCount % 2 == 1}
    
    @Published var cheerCount = 0 {
        didSet {
            if cheerCount == 0 {
                cheerState = .initial
            } else if  inFirstRound {
                cheerState = oddCheer ? .firstRoundFirstCheer : .firstRoundSecondCheer
            } else { // secondRound
                cheerState = oddCheer ? .secondRoundFirstCheer : .secondRoundSecondCheer
            }
        }
    }
    
    func doACheer() {
        cheerCount = (cheerCount + 1) % cheers.totalCheers
        
    }
}
