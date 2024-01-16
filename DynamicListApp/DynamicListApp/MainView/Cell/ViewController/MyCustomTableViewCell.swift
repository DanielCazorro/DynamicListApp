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
        
        numberLabel.font = UIFont.boldSystemFont(ofSize: 20)
        numberLabel.textColor = .blue
        
        numberLabel.numberOfLines = 0
        
        backgroundColor = .gray
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        print(numberLabel.text ?? "")
    }
    
}
