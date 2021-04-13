//
//  CustomView.swift
//  easyXilTest
//
//  Created by chenzhizs on 2021/04/13.
//

import UIKit

@IBDesignable
final class CustomView: UIView {

    @IBOutlet private weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()
    }
    
    private func configureView() {
        guard let view = self.loadViewFormNib(nibName: "CustomView") else { return  }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func configureView(title: String) {
        self.titleLabel.text = title
    }
    
}
