//
//  UIKit+Journal.swift
//  Journal
//
<<<<<<< HEAD
//  Created by JinSeo Yoon on 2018. 8. 11..
=======
//  Created by 윤진서 on 2018. 8. 11..
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import UIKit

extension UIImage {
<<<<<<< HEAD
    static func gradientImage(with colors: [UIColor], size:CGSize) -> UIImage? {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
=======
    static func gradientImage(with colors: [UIColor], size:CGSize, horizontally:Bool = true) -> UIImage? {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        gradientLayer.colors = colors.map { $0.cgColor }
        
        gradientLayer.startPoint = horizontally ? CGPoint(x: 0.0, y: 0.5) : CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = horizontally ? CGPoint(x: 1.0, y: 0.5) : CGPoint(x: 0.5, y: 1.0)
        
        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        return image
    }
}

extension UIColor {
    static var gradientStart: UIColor {
        return .init(red: 0.109, green: 0.110, blue: 0.188, alpha: 1.0)
    }
<<<<<<< HEAD
    static var gradientEnd: UIColor {
        return .init(red: 0.203, green: 0.340, blue: 0.474, alpha: 1.0)
    } 
=======
    
    static var gradientEnd: UIColor {
        return .init(red: 0.203, green: 0.340, blue: 0.474, alpha: 1.0)
    }
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
}
