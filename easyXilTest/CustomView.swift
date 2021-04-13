//
//  CustomView.swift
//  easyXilTest
//
//  Created by chenzhizs on 2021/04/13.
//

import UIKit

//@IBDesignable,可以把控件的属性映射到XIB上
@IBDesignable
final class CustomView: UIView {

    @IBOutlet private weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //这里的初始化函数里，要用上下面这个函数，说明此代码是对应着哪个xib
        self.configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        //这里的初始化函数里，要用上下面这个函数，说明此代码是对应着哪个xib
        self.configureView()
    }
    
    private func configureView() {
        
        //在这里写上要对应的xib文件的名字。
        guard let view = self.loadViewFormNib(nibName: "CustomView") else { return  }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func configureView(title: String) {
        self.titleLabel.text = title
    }
    
}
