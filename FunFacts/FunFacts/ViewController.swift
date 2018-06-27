//
//  ViewController.swift
//  FunFacts
//
//  Created by Tim Holmes on 6/22/18.
//  Copyright © 2018 Tim Holmes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // @IBOutlet allows Interface Builder to hook up to this variable. Hover over
    // circle in gutter to see where it hooks up to IB
    
    // weak has to do with memory management. Describes its relationship to ViewController.
    
    // ! means this is an Optional, ie it will be LazyLoaded in the view.
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    let backgroundColorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        // overriding the viewDidLoad method, so we need to manually fire the super's method
        super.viewDidLoad()
        
        showFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // @IBAction links to Interface Builder
    
    // Target Action - Common design pattern. ViewController is target, showFact is the action.
    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        view.backgroundColor = backgroundColorProvider.randomBackgroundColor()
        funFactButton.tintColor = view.backgroundColor
    }
}
