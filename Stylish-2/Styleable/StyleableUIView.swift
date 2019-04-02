//
//  UIViewPropertySet.swift
//  Stylish-2.0
//
//  Created by Piotr Gawlowski on 08/05/2017.
//  Copyright © 2017 Piotr Gawlowski. All rights reserved.
//

import UIKit

private var _styles: String = ""
@IBDesignable public class StyleableUIView : UIView {}

extension UIView : Styleable {

    @IBInspectable var styles: String {
        set (key) {
            _styles = key
            parseAndApply(styles: key)
        }
        get {
            return _styles
        }
    }
    
    public func applyStyle(_ style: StyleClassMap) {
        apply(style: style)
    }
    
    public func parseStyles(style: StyleClassMap, map: [StyleClassMap]) {
        parseMultipleStyles(style: style, map: map)
    }
    
}
