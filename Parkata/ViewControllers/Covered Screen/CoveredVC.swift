//
//  CoveredVC.swift
//  Parkata
//
//  Created by Kaustabh on 18/12/21.
//

import UIKit

class CoveredVC: UIViewController {

    
    
    @IBOutlet weak var viewFlexible: UIView!{
        didSet{
            self.viewFlexible.layer.borderWidth = 2.0
            self.viewFlexible.layer.cornerRadius = 8.0
            self.viewFlexible.layer.borderColor = UIColor(hexString: "080F2A").cgColor
        }
    }
    @IBOutlet weak var viewUncovered: UIView!{
        didSet{
            self.viewUncovered.layer.borderWidth = 2.0
            self.viewUncovered.layer.cornerRadius = 8.0
            self.viewUncovered.layer.borderColor = UIColor(hexString: "080F2A").cgColor
        }
    }
    @IBOutlet weak var viewCovered: UIView!{
        didSet{
            self.viewCovered.layer.borderWidth = 2.0
            self.viewCovered.layer.cornerRadius = 8.0
            self.viewCovered.layer.borderColor = UIColor(hexString: "080F2A").cgColor
        }
    }
    @IBAction func buttonNext(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBOutlet weak var buttonNextOutlet: UIButton!{
        didSet{
            self.buttonNextOutlet.layer.cornerRadius = self.buttonNextOutlet.frame.size.height/2
        }
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
