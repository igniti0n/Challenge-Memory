//
//  GameView.swift
//  Challenge - Memory game
//
//  Created by Ivan Stajcer on 27.08.2021..
//

import UIKit
import Foundation

class GameView : UIView {
    
    var cards : Array<Card> = []
    var cardsView : UIView!
    
    func setUpCards(for pairs : Array<CardPair>){
        
        let choosenPairs = pairs.shuffled().prefix(8)
        
        for (index, pair) in choosenPairs.enumerated(){
            
            let choosenIndex = index * 2
            cards[choosenIndex].text = pair.wordA
            cards[choosenIndex + 1].text = pair.wordB
            
        }
        
    }
    
    //test function bezveze
    
    
    
    //
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setUpView()
        setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
        setUpContraints()
    }
    
    
    private func setUpView(){
        
        cardsView = UIView()
        //cardsView.backgroundColor = UIColor.blue
        addSubview(cardsView)
        
                  
    }
    
    private func setUpContraints(){
        
        cardsView.snp.makeConstraints { make in
            make.edges.equalTo(safeAreaLayoutGuide).inset(25)
        }
        
        print("superview: \(safeAreaLayoutGuide.layoutFrame.height)")
        let cardWidth = (UIScreen.main.bounds.width - 50) / 4
        let cardHeight = (UIScreen.main.bounds.height - 150) / 4
        var i : Int = 0
        
        for row in 0...3 {
            for column in 0...3 {
                
                let card = Card()
                card.frame = CGRect(x: CGFloat(column) * CGFloat(cardWidth), y: CGFloat(row) * CGFloat(cardHeight), width: CGFloat(cardWidth-2), height: CGFloat(cardHeight-2))
                
                cards.append(card)
                cardsView.addSubview(card)

                
                i += 1
            }
        }
        
        
    }
    
}
