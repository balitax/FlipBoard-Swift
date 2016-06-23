//
//  ViewController.swift
//  Flip Page
//
//  Created by Agus Cahyono on 6/23/16.
//  Copyright © 2016 DOT Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController , MAOFlipViewControllerDelegate {

    var flipBoard: MAOFlipViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.flipBoard = MAOFlipViewController()
        self.flipBoard.delegate = self
        self.addChildViewController(self.flipBoard)
        self.flipBoard.view.frame = self.view.frame
        self.view.addSubview(self.flipBoard.view)
        self.flipBoard.didMoveToParentViewController(self)
        
    }
    
    /**
     Number of flip page
     
     - returns: page number
     */
    func numberOfFlipViewControllerContents() -> UInt {
        return 10
    }
    
    func flipViewController(flipViewController: MAOFlipViewController!, contentIndex: UInt) -> UIViewController! {
        
        let flipPage = self.storyboard?.instantiateViewControllerWithIdentifier("flipPage") as! FlipPageViewController
        
        flipPage.stringPageNumber = NSString(format: "%d", contentIndex + 1) as String
        
        return flipPage
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

