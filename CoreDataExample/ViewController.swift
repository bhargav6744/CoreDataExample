//
//  ViewController.swift
//  CoreDataExample
//
//  Created by Cognisun on 19/09/17.
//  Copyright © 2017 Cognisun. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet var Fname: UITextField!
    @IBOutlet var Lname: UITextField!
    @IBOutlet var Position: UITextField!
    
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    
    @IBAction func SubmitBtn(_ sender: UIButton) {
    
        
        if Fname?.text != "" && Lname?.text != "" && Position?.text != ""{
            
           let newUser = NSEntityDescription.insertNewObject(forEntityName: "Hello", into: context)
            newUser.setValue(self.Fname!.text, forKey: "fName")
            newUser.setValue(self.Lname!.text, forKey: "lName")
            newUser.setValue(self.Position.text, forKey: "position")
            
            
            
            
            do{
                
                try context.save()
                
                print("saved")
                
            }
            catch{
                
                print(error)
                
            }
            
            
        }
        
        else{
            
            print("Empty")
            
            
            
            
            
            
        }
    
    
    
    
    }
    
    
    
    
    
    
    @IBAction func ShowData(_ sender: UIButton) {
        
        
        
    }
    
    
    
    
    
}

