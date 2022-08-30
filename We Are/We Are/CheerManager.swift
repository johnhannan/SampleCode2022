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
    
    enum CheerState {
        case initial, firstRoundFirstCheer, firstRoundSecondCheer, secondRoundFirstCheer, secondRoundSecondCheer
    }
    var cheerState : CheerState = .initial
    
    // changes in cheerCount updated in cheerState
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
}


// computed properties
extension CheerManager {
    var mascotImageName : String {
        switch cheerState {
        case .initial:
            return cheers.initialCheer.imageName
        case .firstRoundFirstCheer:
            return cheers.firstRound.firstCheer.imageName
        case .firstRoundSecondCheer:
            return cheers.firstRound.secondCheer.imageName
        case .secondRoundFirstCheer:
            return cheers.secondRound.firstCheer.imageName
        case .secondRoundSecondCheer:
            return cheers.secondRound.secondCheer.imageName
        }
    }
    var cheerText : String {
        switch cheerState {
        case .initial:
            return cheers.initialCheer.title
        case .firstRoundFirstCheer:
            return cheers.firstRound.firstCheer.title
        case .firstRoundSecondCheer:
            return cheers.firstRound.secondCheer.title
        case .secondRoundFirstCheer:
            return cheers.secondRound.firstCheer.title
        case .secondRoundSecondCheer:
            return cheers.secondRound.secondCheer.title

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


// intents
extension CheerManager {
    func doACheer() {
        cheerCount = (cheerCount + 1) % cheers.totalCheers
    }
}
