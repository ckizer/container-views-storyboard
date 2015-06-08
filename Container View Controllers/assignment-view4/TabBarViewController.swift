//
//  TabBarViewController.swift
//  assignment-view4
//
//  Created by Court Kizer on 6/7/15.
//  Copyright (c) 2015 blackislandstudio. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    var blueViewController: UIViewController!
    var pinkViewController: UIViewController!
    var greenViewController: UIViewController!


    
    
    
    @IBAction func onGreenButton(sender: AnyObject) {
        // resize it to fit completely in the view
        greenViewController.view.frame = contentView.frame
        // add the subview
        contentView.addSubview(greenViewController.view)
    }
    
    @IBAction func onPinkButton(sender: AnyObject) {
        // resize it to fit completely in the view
        pinkViewController.view.frame = contentView.frame
        // add the subview
        contentView.addSubview(pinkViewController.view)
    }
    
    @IBAction func onBlueButton(sender: AnyObject) {
        // resize it to fit completely in the view
        blueViewController.view.frame = contentView.frame
        // add the subview
        contentView.addSubview(blueViewController.view)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        blueViewController = storyboard.instantiateViewControllerWithIdentifier("BlueViewController") as! UIViewController
        pinkViewController = storyboard.instantiateViewControllerWithIdentifier("PinkViewController") as! UIViewController
        greenViewController = storyboard.instantiateViewControllerWithIdentifier("GreenViewController") as! UIViewController
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
