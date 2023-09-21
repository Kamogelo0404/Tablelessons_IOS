//
//  ViewController.swift
//  tableLessons
//
//  Created by DA MAC M1 156 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var cars = ["Toyota", "Mercedes", "Jeppe", "BMW", "Audi", "Isuzu" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }


}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cars[indexPath.row]
        return cell
        
    }
    
    
}

