//
//  ViewController.swift
//  CowboyWisdomUIKit
//
//  Created by Nicholas Solter on 12/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var cowboyWisdomView: CowboyWisdomView {
        return view as! CowboyWisdomView
    }

    override func loadView() {
        view = CowboyWisdomView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        cowboyWisdomView.button.addTarget(self, action: #selector(dispenseWisdom), for: .touchUpInside)
    }
 
    @objc func dispenseWisdom() {
        cowboyWisdomView.quote.text = getRandomWisdom()
        cowboyWisdomView.button.setTitle("Get some more cowboy wisdom", for: .normal)
    }
}

