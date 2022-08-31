//
//  SecondViewController.swift
//  SeguesAndGestures
//
//  Created by Ahmad Ardal on 2022-08-31.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var lblSecond: UILabel!
    
    @IBOutlet weak var viewBox: UIView!
    
    var receivingMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblSecond.text = receivingMessage ?? "Ingen data mottagen."

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        print("Tapped!")
    }
    
    
    @IBAction func onDrag(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: self.view)
        
        
        
        if let viewToPan = sender.view {
            
            viewToPan.center = CGPoint(x: viewToPan.center.x + translation.x, y: viewToPan.center.y + translation.y)
            
            if viewBox.frame.intersects(viewToPan.frame) {
                print("Bingo!")
            }
            
        }
        
        sender.setTranslation(CGPoint.zero, in: self.view)
        
    }
    
    
}
