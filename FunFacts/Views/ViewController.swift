//
//  ViewController.swift
//  FunFacts
//
//  Created by Stephen Wall on 2/3/20.
//  Copyright © 2020 Stephen Wall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var showFactButton: UIButton!
    private var count = 0;
    
    let factProvider = FactProvider()
    let colorProvider = ColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        funFactLabel.text = factProvider.getRandomFact()
        setThemeColor()
    }
    
    
    @IBAction func buttonClicked(_ sender: Any) {
        count += 1
        if (count > factProvider.facts.count - 1) {
            count = 0
        }
        funFactLabel.text = factProvider.getRandomFact()
        setThemeColor()
    }
    
    func setThemeColor() {
        let color = colorProvider.getRandomColor()
        view.backgroundColor = color
        showFactButton.tintColor = color
    }
    

}

