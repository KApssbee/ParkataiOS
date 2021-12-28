//
//  FindParkingVC.swift
//  Parkata
//
//  Created by Kaustabh on 17/12/21.
//

import UIKit

class FindParkingVC: UIViewController {

    
    @IBOutlet weak var textfield: UITextField!{
        didSet{
            self.textfield.textColor = UIColor(red: 0.031, green: 0.059, blue: 0.165, alpha: 1)
            self.textfield.font = UIFont(name: "Lato-Regular", size: 16)
            
        }
    }
    @IBOutlet weak var useMyLocationView: UIView!{
        didSet{
            self.useMyLocationView.layer.borderWidth = 2.0
            self.useMyLocationView.layer.borderColor = UIColor(hexString: "080F2A").cgColor
            self.useMyLocationView.layer.cornerRadius = 5.0
        }
    }
    @IBOutlet weak var buttonNextOutlet: UIButton!{
        didSet{
            self.buttonNextOutlet.layer.cornerRadius = self.buttonNextOutlet.frame.size.height/2
        }
    }
    @IBAction func buttonNext(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
