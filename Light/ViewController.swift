//
//  ViewController.swift
//  Light
//
//  Created by Kenneth W Jackson on 10/10/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import UIKit

//Hex Custom Color Test
//let conRed = UIColor(hexString: "#e32400")

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
   
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
            lightButton.setTitleColor(.black, for: .normal)
            //lightButton.setTitleColor(conRed, for: .normal) //Hex Custom Color Test
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
            lightButton.setTitleColor(.white, for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
}

