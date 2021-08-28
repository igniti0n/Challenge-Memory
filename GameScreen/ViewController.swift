//
//  ViewController.swift
//  Challenge - Memory game
//
//  Created by Ivan Stajcer on 27.08.2021..
//



import UIKit

class GameViewController: UIViewController {
    
    var cardPairs = [CardPair]([
        CardPair(wordA: "a", wordB: "a"),
        CardPair(wordA: "b", wordB: "b"),
        CardPair(wordA: "c", wordB: "c"),
        CardPair(wordA: "e", wordB: "e"),
        CardPair(wordA: "f", wordB: "f"),
        CardPair(wordA: "g", wordB: "g"),
        CardPair(wordA: "h", wordB: "h"),
        CardPair(wordA: "i", wordB: "i"),
    ])
    
    
    var gameView : GameView!
    
    override func loadView() {
        super.loadView()
        gameView = GameView()
        gameView.setUpCards(for: cardPairs)
        self.view = gameView
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}

