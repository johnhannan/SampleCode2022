//
//  CheerManager.swift
//  We Are
//
//  Created by Hannan, John Joseph on 8/25/22.
//

import Foundation

class CheerManager : ObservableObject {
    

    // The model
    let cheers : Cheering = PSUCheer()
    // changes in cheerCount updated in cheerState
    @Published var cheerCount = 0
    
    
    enum CheerState {
        case initial, firstRoundFirstCheer, firstRoundSecondCheer, secondRoundFirstCheer, secondRoundSecondCheer
    }
    private var cheerState : CheerState {
        if cheerCount == 0 {
            return .initial
        } else if  inFirstRound {
            return oddCheer ? .firstRoundFirstCheer : .firstRoundSecondCheer
        } else { // secondRound
            return oddCheer ? .secondRoundFirstCheer : .secondRoundSecondCheer
        }
    }
    

}


// computed properties
extension CheerManager {
    var mascotImageName : String {
        currentCheer.imageName
    }
    var cheerText : String {
        currentCheer.title
    }
    
    private var currentCheer : OneCheer {
        switch cheerState {
        case .initial:
            return cheers.initialCheer
        case .firstRoundFirstCheer:
            return cheers.firstRound.firstCheer
        case .firstRoundSecondCheer:
            return cheers.firstRound.secondCheer
        case .secondRoundFirstCheer:
            return cheers.secondRound.firstCheer
        case .secondRoundSecondCheer:
            return cheers.secondRound.secondCheer
        }
    }

    
    var shouldShowFirstCheer : Bool {
        [.firstRoundFirstCheer, .secondRoundFirstCheer].contains(cheerState)
    }
    var shouldShowSecondCheer : Bool  { [.firstRoundSecondCheer, .secondRoundSecondCheer].contains(cheerState) }
    
    //private -- needed just for the computed properties above
    private var inFirstRound : Bool {cheerCount > 0 && cheerCount <= cheers.firstRoundCount*2}
    private var oddCheer : Bool {cheerCount > 0 && cheerCount % 2 == 1}
}


//intents
extension CheerManager {
    func doACheer() {
        cheerCount = (cheerCount + 1) % cheers.totalCheers
    }
}
