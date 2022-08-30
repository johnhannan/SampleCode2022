//
//  CheerModel.swift
//  We Are
//
//  Created by Hannan, John Joseph on 8/30/22.
//

import Foundation

struct OneCheer {
    let imageName : String
    let title : String
}

struct CheerRound {
    let firstCheer : OneCheer
    let secondCheer : OneCheer
    let count : Int
}

struct PSUCheer : Cheering {
    let initialCheer = OneCheer(imageName: "Mascot 0", title: "")
    let firstRound = CheerRound(firstCheer: OneCheer(imageName: "Mascot 1", title: "We Are"), secondCheer: OneCheer(imageName: "Mascot 2", title: "Penn State"), count: 3)
    let secondRound = CheerRound(firstCheer: OneCheer(imageName: "Mascot 1", title: "Thank You"), secondCheer: OneCheer(imageName: "Mascot 2", title: "You're Welcome"), count: 1)
}

protocol Cheering {
    var initialCheer : OneCheer {get}
    var firstRound : CheerRound {get}
    var secondRound : CheerRound {get}
}

extension Cheering {
    var totalCheers : Int {(firstRound.count + secondRound.count) * 2 + 1}
    var firstRoundCount : Int {firstRound.count}
    var secondRoundCount : Int {secondRound.count}
}
