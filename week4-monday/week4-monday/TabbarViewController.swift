//
//  TabbarViewController.swift
//  week4-monday
//
//  Created by Court Kizer on 5/25/15.
//  Copyright (c) 2015 blackislandstudio. All rights reserved.
//

import UIKit

class TabbarViewController: UIViewController {

    var BlueViewController: UIViewController!
    
    @IBOutlet weak var contentView: UIView!
    @IBAction func onPink(sender: AnyObject) {
    }

    @IBAction func onBlue(sender: AnyObject) {
        
        
        BlueViewController.view.frame = contentView.bounds
        contentView.addSubview(BlueViewController.view)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        storyboard.instantiateViewControllerWithIdentifier("BlueViewController") as! UIViewController
        println("ran")
        
        // Do any additional setup after loading the view.
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
