//
//  ViewController.swift
//  New DD Menu
//
//  Created by sainath bamen on 01/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectColourButton: UIButton!
    
    @IBOutlet weak var colourView: UIView!
    @IBOutlet var colourButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func showButtonVisibility(){
        colourButtons.forEach { button in
            UIView.animate(withDuration: 0.7) {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            }
            
            
            
        }
    }
    
    
    @IBAction func selectColourAction(_ sender: Any) {
        showButtonVisibility()
    }
    
    @IBAction func colourButtonAction(_ sender: UIButton) {
        showButtonVisibility()
        print(sender.titleLabel?.text)
        switch (sender.titleLabel?.text)! {
        case "Orange":
            selectColourButton.backgroundColor = .systemOrange
            selectColourButton.setTitle("Orange", for: .normal)
            colourView.backgroundColor = .systemOrange
            
        case "Yellow":
            selectColourButton.backgroundColor = .systemYellow
            selectColourButton.setTitle("Yellow", for: .normal)

            colourView.backgroundColor = .systemYellow
            
            
        case "Purple":
            selectColourButton.backgroundColor = .systemPurple
            selectColourButton.setTitle("Orange", for: .normal)

            colourView.backgroundColor = .systemPurple
        default:
            
            colourView.backgroundColor = .orange
            
        
        }
        
    }
        
    }
    


