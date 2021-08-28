

import Foundation
import UIKit
import SnapKit

class CardDown : UIView {
    
    var imageView : UIImageView!
    
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
        
        imageView = UIImageView()
        let bounds = CGRect(origin: .zero, size: CGSize(width: 40, height: 80))
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        let img = renderer.image {
            context in
            context.cgContext.setFillColor(UIColor.gray.cgColor)
            context.cgContext.setStrokeColor(UIColor.red.cgColor)
            context.cgContext.setLineWidth(10)
            
            context.cgContext.fill(bounds)
            context.cgContext.stroke(bounds)
        }
        imageView.image = img
        
        addSubview(imageView)
        
    }
    
    private func setUpContraints(){
        
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
    
}
