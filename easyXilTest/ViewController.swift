//
//  ViewController.swift
//  easyXilTest
//
//  Created by chenzhizs on 2021/04/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var firstCustomView: CustomView!
    @IBOutlet private weak var secondCustomView: CustomView!
    @IBOutlet private weak var thirdCustomView: CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.firstCustomView.configureView(title: "First Title")
        self.secondCustomView.configureView(title: "Second Title")
        self.thirdCustomView.configureView(title: "Third Title")
    }


}

