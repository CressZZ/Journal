//
//  UserDefaultsSettings.swift
//  Journal
//
<<<<<<< HEAD
//  Created by JinSeo Yoon on 2018. 8. 25..
=======
//  Created by 윤진서 on 2018. 8. 24..
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import UIKit

private let dateFormatOptionKey: String = "dateFormatOptionKey"
private let fontSizeOptionKey: String = "fontSizeOptionKey"

extension UserDefaults: Settings {
<<<<<<< HEAD
    var dateFormatOption: DateFormatOption {
        get {
            let rawValue = object(forKey: dateFormatOptionKey) as? String
            return rawValue.flatMap(DateFormatOption.init) ?? .default
        }
        set { set(newValue.rawValue, forKey: dateFormatOptionKey) }
    }
    
    var fontSizeOption: FontSizeOption {
        get {
            let rawValue = object(forKey: fontSizeOptionKey) as? CGFloat
            if 
                let rawValue = rawValue,
                let option = FontSizeOption(rawValue: rawValue)
            {
                return option
            } else {
                return FontSizeOption.default
            }
        }
        set { set(newValue.rawValue, forKey: fontSizeOptionKey) }
=======
    var dateFormat: DateFormatOption {
        set {
            set(newValue.rawValue, forKey: dateFormatOptionKey)
            synchronize()
        }
        
        get {
            let rawValue = object(forKey: dateFormatOptionKey) as? String
            return rawValue.flatMap(DateFormatOption.init) ?? DateFormatOption.default
        }
    }
    
    var fontSize: FontSizeOption {
        set {
            set(newValue.rawValue, forKey: fontSizeOptionKey)
            synchronize()
        }
        
        get {
            let rawValue = object(forKey: fontSizeOptionKey) as? CGFloat
            return rawValue.flatMap(FontSizeOption.init) ?? FontSizeOption.default
        }
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
    }
}
