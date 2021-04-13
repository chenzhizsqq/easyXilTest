//
//  UIViewExtension.swift
//  easyXilTest
//
//  Created by chenzhizs on 2021/04/13.
//

import Foundation
import UIKit

extension UIView {
    
    func loadViewFormNib(nibName : String) -> UIView? {
        let bundle = Bundle(for:  type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
        
    }
}
