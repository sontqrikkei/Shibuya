//
//  SplashViewController.swift
//  Shibuya
//
//  Created by SonTQ on 3/11/16.
//  Copyright © 2016 RikkeiSoft. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var imgBackground: UIImageView!
    
    @IBOutlet weak var blurView: UIView!
    @IBOutlet weak var languagesView: UIView!

    @IBOutlet weak var languagesViewHeightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presentSplash()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK:- View functions
    func presentSplash(){
        //set languages view height = 0
//        languagesViewHeightConstraint.constant = 0
        self.view.layoutIfNeeded()
        
        let blurView = UIVisualEffectView()
        blurView.frame = self.view.bounds
        blurView.alpha = 1
        blurView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        self.imgBackground.addSubview(blurView)
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            blurView.effect = UIBlurEffect(style: .Dark)
            }) { (finished) -> Void in
                self.blurView.hidden = false
                UIView.animateWithDuration(1.0, animations: { () -> Void in
                    self.blurView.alpha = 1.0
                    }, completion: {
                        finished -> Void in
                        UIView.animateWithDuration(1.0, animations: { () -> Void in
//                            self.languagesViewHeightConstraint.constant = 270
                            }, completion: nil)
                })
        }

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
