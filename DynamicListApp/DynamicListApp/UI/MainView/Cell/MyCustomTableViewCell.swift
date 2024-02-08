//
//  MyCustomTableViewCell.swift
//  TableViews
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Configuración de la apariencia de la etiqueta de número
        numberLabel.font = UIFont.boldSystemFont(ofSize: 40)
        numberLabel.textColor = .black
        
        // Permite que la etiqueta se expanda en múltiples líneas
        numberLabel.numberOfLines = 0
        
        // Configuración del fondo de la celda
        backgroundColor = .clear
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Imprime el texto de la etiqueta cuando se selecciona la celda
        print(numberLabel.text ?? "")
    }
    
}
