//
//  ViewController.swift
//  tableView2
//
//  Created by DDUKK on 07/10/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    let friuts = ["Magno","WaterMelon","Orange","Pinaple"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friuts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
      
      let cellOne =   table.dequeueReusableCell(withIdentifier: "cell1", for: indexPath as IndexPath)
        if indexPath.row>2
        {
            
            cellOne.textLabel?.text =
            "Hello"
            return cellOne
        }
       
        else{
        cellOne.textLabel?.text = friuts[indexPath.row]
        
        return cellOne
        }
    }
    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        // Do any additional setup after loading the view.
    }


}

