//
//  MainViewController.swift
//  DynamicListApp
//
//  Created by Daniel Cazorro Frias  on 16/1/24.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    private var viewModel = MainViewModel()
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Asigna el delegado y el fuente de datos de la tabla
        tableView.dataSource = self
        tableView.delegate = self
        
        // Registra la celda personalizada
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
        
    }
    
    // MARK: -Functions
    func set(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }
}

// MARK: - Extensions -
// UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Retorna la cantidad de elementos en el array como el número de filas
        return viewModel.numberOfRows()
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configura y retorna la celda personalizada
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as! MyCustomTableViewCell
        cell.numberLabel.text = "\(viewModel.number(at: indexPath.row))"
        
        return cell
    }
}

// MARK: - UITableViewDelegate

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Cuando se selecciona una fila, se llama al método en el ViewModel para actualizar el modelo
        viewModel.didSelectRow(at: indexPath.row)
        
        // Luego, recarga la tabla para reflejar los cambios
        tableView.reloadData()
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        // Agrega un nuevo número al array y recarga la tabla
        viewModel.addNumber()
        tableView.reloadData()
    }
    
}
