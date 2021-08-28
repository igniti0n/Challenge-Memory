//
//  Card.swift
//  Challenge - Memory game
//
//  Created by Ivan Stajcer on 27.08.2021..
//

import Foundation
import UIKit
import SnapKit

class CardUp : UIView {
    
    var label : UILabel!
    
    
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
    
    
    private func setUpView(){
        label = UILabel()
        label.font = UIFont.systemFont(ofSize: 35)
        label.textColor = UIColor.blue
        addSubview(label)
    }
    
    private func setUpContraints(){
        
        label.snp.makeConstraints { make in
            make.centerX.centerY.width.equalToSuperview()
        }
        
    }
    
}
