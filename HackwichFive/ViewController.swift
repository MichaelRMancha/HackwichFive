//
//  ViewController.swift
//  HackwichFive
//
//  Created by CM Student on 2/26/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet var tableView: UITableView!
    var arrayOne = ["Lyn", "Kent", "Sain", "Florina", "Wil"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //set VC as delegate
            //self.tableView.datasource = self
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOne.count
    
    }
        
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let text = arrayOne[indexPath.row]
        cell.textLabel?.text = text
        return cell

}

}




