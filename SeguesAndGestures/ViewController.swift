//
//  ViewController.swift
//  SeguesAndGestures
//
//  Created by Ahmad Ardal on 2022-08-31.
//

import UIKit

class ViewController: UIViewController {

    var firstToSecondSegue: String = "firstToSecondSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onNavigate(_ sender: Any) {
        performSegue(withIdentifier: firstToSecondSegue, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == firstToSecondSegue {
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.receivingMessage = "Hello there!"
            
        }
    }
    
    
    
}
