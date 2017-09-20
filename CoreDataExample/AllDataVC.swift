//
//  AllDataVC.swift
//  CoreDataExample
//
//  Created by Cognisun on 20/09/17.
//  Copyright © 2017 Cognisun. All rights reserved.
//

import UIKit
import CoreData

class AllDataVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tblView: UITableView!

    var userArray:[Hello] = []
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        self.FatchData()
        tblView.reloadData()
        print(self.userArray)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete{
            
            
            
            
        }
        else{
            
        }
        
        
    }
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArray.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let name = userArray[indexPath.row]
        cell.textLabel?.text = name.fName! + " " + name.lName! + " " + name.position!
        
        return cell
        
    }
    
    
    func FatchData(){
       
        var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do{
            userArray = try context.fetch(Hello.fetchRequest())
            
            
            
        }
        catch{
            
            print(error)
        }
        
        
        
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
