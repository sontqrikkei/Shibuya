//
//  TopViewController.swift
//  Shibuya
//
//  Created by SonTQ on 3/11/16.
//  Copyright © 2016 RikkeiSoft. All rights reserved.
//

import UIKit
import PagingMenuController

class TopViewController: UIViewController, PagingMenuControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let loadingView = LoadingView(frame: self.view.bounds)
//        self.view.addSubview(loadingView)
//        loadingView.show()
        setupPages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- View setup functions
    func setupPages(){
        let suggestViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SuggestViewController") as! SuggestViewController
        suggestViewController.title = "Suggestion"
        
        let suggestViewController2 = self.storyboard?.instantiateViewControllerWithIdentifier("SuggestViewController") as! SuggestViewController
        suggestViewController2.title = "Event Information"
        
        let suggestViewController3 = self.storyboard?.instantiateViewControllerWithIdentifier("SuggestViewController") as! SuggestViewController
        suggestViewController3.title = "Shibuya town"
        
        let viewControllers = [suggestViewController, suggestViewController2, suggestViewController3]
    
        
        let pagingMenuController = self.childViewControllers.first as! PagingMenuController
        pagingMenuController.delegate = self
        pagingMenuController.setup(viewControllers: viewControllers, options: getMenuOptions())
    }
    
    func getMenuOptions()->PagingMenuOptions {
        let options = PagingMenuOptions()
//        options.menuHeight = 48
        options.menuItemMode = PagingMenuOptions.MenuItemMode.Underline(height: 2.0, color: SELECTED_NAV_COLOR, horizontalPadding: 1.0, verticalPadding: 1.0)
        options.selectedTextColor = SELECTED_NAV_COLOR
//        options.menuDisplayMode = PagingMenuOptions.MenuDisplayMode.SegmentedControl
        options.menuDisplayMode = PagingMenuOptions.MenuDisplayMode.Standard(
            widthMode: PagingMenuOptions.MenuItemWidthMode.Flexible,
            centerItem: false, scrollingMode: PagingMenuOptions.MenuScrollingMode.ScrollEnabledAndBouces
        )
        return options
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - PagingMenuControllerDelegate
    
    func willMoveToPageMenuController(menuController: UIViewController, previousMenuController: UIViewController) {
        
    }
    
    func didMoveToPageMenuController(menuController: UIViewController, previousMenuController: UIViewController) {
        
    }

}
