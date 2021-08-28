//
//  Card.swift
//  Challenge - Memory game
//
//  Created by Ivan Stajcer on 27.08.2021..
//

import Foundation
import UIKit
import SnapKit

class Card : UIView {


//  Zakomentiran kod je work arround, CardUp i CardDown oboje stavim an screen te mjenjam koji je hidden, zanima me zasto se nemoze deklirar jedan view i mjenjat da bude card up ili card down po zelji (trenutni, ne komentirani kod)
    
    
//    let backSide = CardDown()
//    let frontSide = CardUp()
    
    var text : String!
    var currentSide : UIView!
    var isOpen = false

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
        setUpContraints()
    }
    
    @objc func flipCard(){
        
        isOpen.toggle()
        
        if isOpen {
            
             let up = CardUp()
             up.label.text = text
             currentSide = up
             setNeedsDisplay()
             currentSide.setNeedsDisplay()
            
//            frontSide.isHidden = false
//            backSide.isHidden = true
            
            
        }else{
//            frontSide.isHidden = true
//            backSide.isHidden = false
            
            currentSide = CardDown()
            
            
        }
    }
    
    
    
    private func setUpView(){
        
        currentSide = CardDown()
//        frontSide.label.text = "hello"
//        addSubview(frontSide)
//        addSubview(backSide)
        
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(flipCard)))
        
    }
    
    private func setUpContraints(){
        
        currentSide.snp.makeConstraints { make in
                    make.top.bottom.equalToSuperview().inset(10)
                    make.left.right.equalToSuperview().inset(60)
        }
        
//        frontSide.snp.makeConstraints { make in
//            make.top.bottom.equalToSuperview().inset(10)
//            make.left.right.equalToSuperview().inset(60)
//        }
//
//        backSide.snp.makeConstraints { make in
//            make.top.bottom.equalToSuperview().inset(10)
//            make.left.right.equalToSuperview().inset(60)
//        }
        
    }
    
    
}
