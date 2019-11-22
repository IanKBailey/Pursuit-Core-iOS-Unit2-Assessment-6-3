//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    var crayons = [Crayon]()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    crayons = Crayon.allTheCrayons
    tableView.dataSource = self
    
    
  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? DetailViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
        let crayonData = crayons[indexPath.row]
        detailViewController.crayonData = crayonData
    }
    
    
    
    
    
    

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red)/255, green: CGFloat(crayon.green)/255, blue: CGFloat(crayon.blue)/255
            , alpha: 1.0)
        return cell
    }
    
    
}
