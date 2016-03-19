//
//  GeneratedNameViewController.swift
//  NameGenerator
//
//  Created by Alex Bornos on 19/03/2016.
//  Copyright © 2016 mecar6. All rights reserved.
//

import UIKit

class GeneratedNameViewController: UIViewController {

    @IBOutlet var fNameLabel: UILabel!
    @IBOutlet var lNameLabel: UILabel!
    @IBOutlet var planetLabel: UILabel!
    
    var newFName: String?
    var newLName: String?
    var newPName: String?
    
    override func viewWillAppear(animated:Bool){
        super.viewWillAppear(animated)
        self.fNameLabel.text = newFName
        self.lNameLabel.text = newLName
        self.planetLabel.text = newPName
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
