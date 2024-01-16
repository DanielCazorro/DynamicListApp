//
//  MainViewController.swift
//  DynamicListApp
//
//  Created by Daniel Cazorro Frias  on 16/1/24.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var labelTesting: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        labelTesting.text = "Test Complete"
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
