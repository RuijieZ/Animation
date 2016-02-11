//
//  ViewController.swift
//  Animation
//
//  Created by Ruijie Zhang on 2015-08-09.
//  Copyright (c) 2015 Ruijie Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //var numSequence = [1,2,3,4,5,6,7,8]
    var currentIndex = 1
    
    var ifStart = false
    
    var timer = NSTimer()
    
    @IBOutlet var image: UIImageView!
    
    @IBOutlet var moveButton: UIButton!
    
    
    @IBAction func move(sender: AnyObject)
    {
        
      
        if (ifStart)
        {
            timer.invalidate()
            ifStart = false
            moveButton.setTitle("START", forState: .Normal)
        }
        else
        {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            ifStart = true
            moveButton.setTitle("STOP", forState: .Normal)
        }
        
        
    }

    func doAnimation()
    {
        
        if currentIndex != 8
        {
            currentIndex++
            
            var imageName = "Frame " + String(currentIndex) + ".png"
            
            image.image = UIImage(named: imageName)
            
            println(1)
            
        }
        else
        {
            currentIndex = 1
            
            image.image = UIImage(named: "Frame 1.png")
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}