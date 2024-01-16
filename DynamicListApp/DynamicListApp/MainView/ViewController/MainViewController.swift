//
//  MainViewController.swift
//  DynamicListApp
//
//  Created by Daniel Cazorro Frias  on 16/1/24.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var numbers = [Int] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as! MyCustomTableViewCell
        cell.numberLabel.text = "\(numbers[indexPath.row])"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedNumber = numbers[indexPath.row]
        numbers[indexPath.row] = selectedNumber * 2
        tableView.reloadData()   
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        let newNumber = numbers.count + 1
        numbers.append(newNumber)
        tableView.reloadData()
    }
    
    
}
