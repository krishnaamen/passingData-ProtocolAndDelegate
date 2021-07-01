//
//  ViewController.swift
//  passingData-ProtocolAndDelegate
//
//  Created by Macbook on 26/06/2021.
//

import UIKit

class ViewController: UIViewController,PassMyData {
    
    

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnGoClicked(_ sender: UIButton) {
        let SecondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        SecondVC.delegate = self
        self.navigationController?.pushViewController(SecondVC, animated: true)
            }
    func dataDetail(name: String, address: String, city: String) {
        lblName.text = name
        lblAddress.text = address
        lblCity.text = city
    }
    
}


