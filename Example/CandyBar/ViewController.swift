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
                            icon: CandyIcon.stars,
                            backgroundColor: UIColor.purple
        )
        // if `nil` or no duration is provided, the CandyBar will go away when the user taps it or `candybar.dismiss()` is used
        topCandy?.show()
    }
    
    func showCandyBarOnBottom(){
        bottomCandy = CandyBar(title: "Use a custom image!",
                               subtitle: "This will disappear after 3 seconds",
                               image: UIImage(named: "DopamineLogo"),
                               position: .bottom,
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
        topCandyButton = UIButton.init(frame: CGRect(x: 0, y: 0, width: viewSize.width/3, height: viewSize.width/6+10))
        topCandyButton.center = CGPoint(x: viewSize.width/4, y: viewCenter.y)
        topCandyButton.layer.cornerRadius = 5
        topCandyButton.setTitle("Candy on Top", for: UIControlState())
        topCandyButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        topCandyButton.titleLabel?.textAlignment = NSTextAlignment.center
        topCandyButton.backgroundColor = UIColor.init(red: 51/255.0, green: 153/255.0, blue: 51/255.0, alpha: 1.0)
        topCandyButton.addTarget(self, action: #selector(ViewController.showCandyBarOnTop), for: UIControlEvents.touchUpInside)
        self.view.addSubview(topCandyButton)
        
        // Button to represent some user action to Track
        bottomCandyButton = UIButton.init(frame: CGRect(x: 0, y: 0, width: viewSize.width/3, height: viewSize.width/6+10))
        bottomCandyButton.center = CGPoint(x: viewSize.width/4*3, y: viewCenter.y)
        bottomCandyButton.layer.cornerRadius = 5
        bottomCandyButton.setTitle("Candy on Bottom", for: UIControlState())
        bottomCandyButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        bottomCandyButton.titleLabel?.textAlignment = NSTextAlignment.center
        bottomCandyButton.backgroundColor = UIColor.init(red: 204/255.0, green: 51/255.0, blue: 51/255.0, alpha: 1.0)
        bottomCandyButton.addTarget(self, action: #selector(ViewController.showCandyBarOnBottom), for: UIControlEvents.touchUpInside)
        self.view.addSubview(bottomCandyButton)
    }
        
//    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//        return UIInterfaceOrientationMask.Portrait
//    }
    
}
