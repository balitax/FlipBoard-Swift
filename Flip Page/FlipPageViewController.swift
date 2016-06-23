//
//  FlipPageViewController.swift
//  Flip Page
//
//  Created by Agus Cahyono on 6/23/16.
//  Copyright © 2016 DOT Indonesia. All rights reserved.
//

import UIKit

class FlipPageViewController: UIViewController {

    
    @IBOutlet weak var labelPageNumber: UILabel!
    
    var stringPageNumber: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelPageNumber.text = stringPageNumber!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
