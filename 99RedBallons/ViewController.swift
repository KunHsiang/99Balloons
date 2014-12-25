//
//  ViewController.swift
//  99RedBallons
//
//  Created by ChangKH on 2014/12/25.
//  Copyright (c) 2014年 kunhsiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var balloons:[Balloon] = []
    var currentIndex = 0
    
    @IBOutlet weak var ballonsLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createBallons()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonBarButtonItemPressed(sender: UIBarButtonItem) {
        
        let balloon = balloons[currentIndex]
        
        ballonsLabel.text = "\(balloon.number) balloon"
        backgroundImageView.image = balloon.image
        
        currentIndex += 1
    }
    
    func createBallons(){
        
        for var balloonCount = 0; balloonCount<=99 ; balloonCount++ {
            
            var balloon = Balloon()
            balloon.number = balloonCount
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            switch randomNumber {
            case 1:
                balloon.image = UIImage(named:"RedBalloon1.jpg")
            case 2:
                balloon.image = UIImage(named:"RedBalloon2.jpg")
            case 3:
                balloon.image = UIImage(named:"RedBalloon3.jpg")
            default:
                balloon.image = UIImage(named:"RedBalloon4.jpg")
            }
            self.balloons.append(balloon)
            
            
        }
            
        
    }
}