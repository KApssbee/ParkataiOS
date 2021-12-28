//
//  DecisionVC.swift
//  Parkata
//
//  Created by Kaustabh on 17/12/21.
//

import UIKit

class DecisionVC: UIViewController {

    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var addParkingOutlet: UIButton!
    @IBOutlet weak var findParkingOutlet: UIButton!
    @IBAction func buttonAddParking(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FindParkingVC") as! FindParkingVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func buttonFindParking(_ sender: UIButton) {
    }
    @IBOutlet weak var bottomView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()

        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        self.addParkingOutlet.layer.cornerRadius = self.addParkingOutlet.frame.size.height/2
        self.findParkingOutlet.layer.cornerRadius = self.findParkingOutlet.frame.size.height/2
        self.addParkingOutlet.setTitle("ADD PARKING", for: .normal)
        self.findParkingOutlet.setTitle("FIND PARKING", for: .normal)
        self.addParkingOutlet.titleLabel?.font = UIFont(name: "Lato-Bold", size: 20)
        self.findParkingOutlet.titleLabel?.font = UIFont(name: "Lato-Bold", size: 20)
        self.loginLabel.attributedText = NSMutableAttributedString(string: "Log into My Account ", attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue, NSAttributedString.Key.kern: -0.33])
        self.loginLabel.textColor = UIColor(red: 0.521, green: 0.527, blue: 0.549, alpha: 1)
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
