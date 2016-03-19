//
//  ViewController.swift
//  NameGenerator
//
//  Created by Alex Bornos on 19/03/2016.
//  Copyright © 2016 mecar6. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet var inputFirstName: UITextField!
    @IBOutlet var inputLastName: UITextField!
    @IBOutlet var inputMaidenName: UITextField!
    @IBOutlet var inputBirthplace: UITextField!
    @IBOutlet var inputFavBrand: UITextField!
    
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "NameGenSegue"){
            
            if (inputFirstName.text!.characters.count) > 2 && (inputLastName.text!.characters.count) > 1 && (inputMaidenName.text!.characters.count) > 1 && (inputBirthplace.text!.characters.count) > 1 && (inputFavBrand.text!.characters.count) > 0{
                
                if let destinationVC = segue.destinationViewController as? GeneratedNameViewController{
                    
                    destinationVC.newFName = "\(substring(inputFirstName.text!.startIndex, finish: inputFirstName.text!.startIndex.advancedBy(3), str: inputFirstName.text!)) \( substring(inputLastName.text!.startIndex, finish: inputLastName.text!.startIndex.advancedBy(2), str: inputLastName.text!).lowercaseString)"
                    
                    destinationVC.newLName = "\(substring(inputMaidenName.text!.startIndex, finish: inputMaidenName.text!.startIndex.advancedBy(2), str: inputMaidenName.text!)) \( substring(inputBirthplace.text!.startIndex, finish: inputBirthplace.text!.startIndex.advancedBy(3), str: inputBirthplace.text!).lowercaseString)"
                    
                    destinationVC.newPName = "\(substring(inputMaidenName.text!.endIndex.advancedBy(-2), finish: inputMaidenName.text!.endIndex, str: inputMaidenName.text!)) \( inputFavBrand.text!.lowercaseString)"
                }
                    
      
                
               
                   
                
            }else{
                          createAlert("Try again", message: "One or more fields are empty or not long enough")
            }
        }
        
    }
    
    func substring (begin: String.Index, finish: String.Index, str: String) -> String{
        
        return str.substringWithRange(Range<String.Index>(start: begin, end: finish))
        //TODO improvements that can be made -take the string input and index integers, then do the processing of String.Index here that will clean up the code inside here
        
    }
    
    func createAlert(title: String, message: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
   
    
    func hasEmptyField() -> Bool{
    
        if(inputFirstName == "" ||    inputLastName == "" ||
            inputMaidenName == "" ||    inputBirthplace == "" ||
            inputFavBrand == ""){
                return true
        }else{
            return false
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


    
    //"\(inputMaidenName.text!.substringWithRange(Range<String.Index>(start: inputMaidenName.text!.endIndex.advancedBy(-2), end: inputMaidenName.text!.startIndex))) \(inputBirthplace.text!.startIndex.advancedBy(3)))"
    
    
    //didn't work
    //let convFirstName: String = "\(inputFirstName.text!.startIndex.advancedBy(3)) \( inputLastName.text!.startIndex.advancedBy(2))"
    //let convLastName: String = "\(inputMaidenName.text!.startIndex.advancedBy(2)) \(inputBirthplace.text!.startIndex.advancedBy(3)))"
    
    
    
    //"\(inputLastName.text!.substringWithRange(Range<String.Index>(start: inputLastName.text!.endIndex.advancedBy(-2), end: inputLastName.text!.endIndex)))  \(inputFavBrand.text!)"
    
    //"\(inputMaidenName.text!.substringWithRange(Range<String.Index>(start: inputMaidenName.text!.endIndex.advancedBy(-2), end: inputMaidenName.text!.startIndex))) \(substring(inputBirthplace.text!.startIndex, finish: inputBirthplace.text!.startIndex.advancedBy(3), str: inputBirthplace.text!))"
    
    //destinationVC.planetLabel.text = "\(inputLastName.text!.substringWithRange(Range<String.Index>(start: inputLastName.text!.endIndex.advancedBy(-2), end: inputLastName.text!.endIndex)))  \(inputFavBrand.text!)"
}

