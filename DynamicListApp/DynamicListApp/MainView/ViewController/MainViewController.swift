//
//  MainViewController.swift
//  DynamicListApp
//
//  Created by Daniel Cazorro Frias  on 16/1/24.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    private var numbers = [Int] ()
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Asigna el delegado y el fuente de datos de la tabla
        tableView.dataSource = self
        tableView.delegate = self
        
        // Registra la celda personalizada
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
        
    }

    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Retorna la cantidad de elementos en el array como el número de filas
        return numbers.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configura y retorna la celda personalizada
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as! MyCustomTableViewCell
        cell.numberLabel.text = "\(numbers[indexPath.row])"
        
        return cell
    }
    
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Multiplica el número seleccionado por 2 y actualiza la tabla
        let selectedNumber = numbers[indexPath.row]
        numbers[indexPath.row] = selectedNumber * 2
        tableView.reloadData()   
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        // Agrega un nuevo número al array y recarga la tabla
        let newNumber = numbers.count + 1
        numbers.append(newNumber)
        tableView.reloadData()
    }
    
    
}
