//
//  ViewController.swift
//  CandyBar
//
//  Created by Akash Desai on 09/28/2016.
//  Copyright (c) 2016 Akash Desai. All rights reserved.
//

import UIKit
import CandyBar

class ViewController: UIViewController {
    // Try out CandyBar as a form of reinforcement!
    var topCandy: CandyBar? = nil
    var bottomCandy: CandyBar? = nil
    
    func showCandyBarOnTop(){
        topCandy?.dismiss()
        topCandy = CandyBar(title: "That was awesome! 💯",
                            subtitle: "Tap to dismiss",
                            icon: CandyIcon.Stars,
                            backgroundColor: UIColor.purpleColor()
        )
        // if `nil` or no duration is provided, the CandyBar will go away when the user taps it or `candybar.dismiss()` is used
        topCandy?.show()
    }
    
    func showCandyBarOnBottom(){
        bottomCandy = CandyBar(title: "Use a custom image!",
                               subtitle: "This will disappear after 3 seconds",
                               image: UIImage(named: "DopamineLogo"),
                               position: .Bottom,
                               backgroundColor: CandyBar.hexStringToUIColor("#4286f4")  // CandyBar also includes a function for quick color picking
        )
        bottomCandy?.show(3.0)
    }
    
    
    
    
    ///////////////////////////////////////
    //
    //  UI Setup
    //
    ///////////////////////////////////////
    
    var topCandyButton:UIButton = UIButton()
    var bottomCandyButton:UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBasicUI()
    }
    
    func loadBasicUI(){
        let viewSize = self.view.frame.size
        let viewCenter = self.view.center
        
        // Button to represent some user action to Reinforce
        topCandyButton = UIButton.init(frame: CGRectMake(0, 0, viewSize.width/3, viewSize.width/6+10))
        topCandyButton.center = CGPointMake(viewSize.width/4, viewCenter.y)
        topCandyButton.layer.cornerRadius = 5
        topCandyButton.setTitle("Candy on Top", forState: UIControlState.Normal)
        topCandyButton.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        topCandyButton.titleLabel?.textAlignment = NSTextAlignment.Center
        topCandyButton.backgroundColor = UIColor.init(red: 51/255.0, green: 153/255.0, blue: 51/255.0, alpha: 1.0)
        topCandyButton.addTarget(self, action: #selector(ViewController.showCandyBarOnTop), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(topCandyButton)
        
        // Button to represent some user action to Track
        bottomCandyButton = UIButton.init(frame: CGRectMake(0, 0, viewSize.width/3, viewSize.width/6+10))
        bottomCandyButton.center = CGPointMake(viewSize.width/4*3, viewCenter.y)
        bottomCandyButton.layer.cornerRadius = 5
        bottomCandyButton.setTitle("Candy on Bottom", forState: UIControlState.Normal)
        bottomCandyButton.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        bottomCandyButton.titleLabel?.textAlignment = NSTextAlignment.Center
        bottomCandyButton.backgroundColor = UIColor.init(red: 204/255.0, green: 51/255.0, blue: 51/255.0, alpha: 1.0)
        bottomCandyButton.addTarget(self, action: #selector(ViewController.showCandyBarOnBottom), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(bottomCandyButton)
    }
        
//    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//        return UIInterfaceOrientationMask.Portrait
//    }
    
}
