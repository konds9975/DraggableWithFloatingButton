//
//  ViewController.swift
//  DraggableWithFloatingButtonKonds
//
//  Created by Inkswipe on 7/20/18.
//  Copyright © 2018 Fortune4 Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addButton()
     }

    func addButton()  {
        
        var addButton: ActionButton!
        let addInhaler = UIImage(named: "Add-inhalers.png")!
        let addInhalerBtn = ActionButtonItem(title: "Add", image: addInhaler)
        addInhalerBtn.action = { item in print("Btn Click...")
            if addButton.active {
                addButton.toggle()
            }
         }
        addButton = ActionButton(attachedToView: self.view, items: [addInhalerBtn],bottomPadding:45)
        
        addButton.action = { button in button.toggleMenu() }
        addButton.setTitle("+", forState: UIControlState())
        
        addButton.backgroundColor = UIColor(red: 136.0/255.0, green: 204.0/255.0, blue: 92.0/255.0, alpha:1.0)
    }
}

