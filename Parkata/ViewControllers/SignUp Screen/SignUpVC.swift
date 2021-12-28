//
//  SignUpVC.swift
//  Parkata
//
//  Created by Kaustabh on 17/12/21.
//

import UIKit

class SignUpVC: UIViewController {

    
    @IBOutlet weak var signupLabel: UILabel!{
        didSet {
            let attrs1 = [NSAttributedString.Key.font : UIFont(name: "Lato-Bold", size: 26), NSAttributedString.Key.foregroundColor : UIColor(hexString: "080F2A")]

                let attrs2 = [NSAttributedString.Key.font : UIFont(name: "Lato-Regular", size: 26), NSAttributedString.Key.foregroundColor : UIColor(hexString: "080F2A")]

                let attributedString1 = NSMutableAttributedString(string:"Sign up ", attributes:attrs1)

                let attributedString2 = NSMutableAttributedString(string:"with Phone Number", attributes:attrs2)

                attributedString1.append(attributedString2)
                self.signupLabel.attributedText = attributedString1
        }
    }
    @IBOutlet weak var loginAccountLabel: UILabel!{
        didSet{
            self.loginAccountLabel.attributedText = NSMutableAttributedString(string: "Log into existing account", attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue, NSAttributedString.Key.kern: -0.3])

        }
    }
    @IBOutlet weak var viewPhoneNumber: UIView!{
        didSet{
            self.viewPhoneNumber.layer.cornerRadius = self.viewPhoneNumber.frame.size.height/2
        }
    }
    @IBOutlet weak var viewCountryCode: UIView!{
        didSet{
            self.viewCountryCode.layer.cornerRadius = self.viewCountryCode.frame.size.height/2
        }
    }
    @IBOutlet weak var buttonConnectEmail: UIButton!{
        didSet{
            self.buttonConnectEmail.layer.cornerRadius = self.buttonConnectEmail.frame.size.height/2
        }
    }
    @IBOutlet weak var buttonConnectApple: UIButton!{
        didSet{
            self.buttonConnectApple.layer.cornerRadius = self.buttonConnectApple.frame.size.height/2
        }
    }
    @IBOutlet weak var buttonConnectFacebook: UIButton!{
        didSet{
            self.buttonConnectFacebook.layer.cornerRadius = self.buttonConnectFacebook.frame.size.height/2
        }
    }
    @IBOutlet weak var buttonGoogleOutlet: UIButton!{
        didSet{
            self.buttonGoogleOutlet.layer.cornerRadius = self.buttonGoogleOutlet.frame.size.height/2
        }
    }
    @IBAction func buttonConnectGoogle(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CoveredVC") as! CoveredVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func buttonConnectFacebook(_ sender: UIButton) {
    }
    @IBAction func buttonConnectApple(_ sender: UIButton) {
    }
    @IBAction func buttonConnectEmail(_ sender: UIButton) {
    }
    @IBOutlet weak var buttonContinueOutlet: UIButton!{
        didSet{
            self.buttonContinueOutlet.layer.cornerRadius = self.buttonContinueOutlet.frame.size.height/2
        }
    }
    @IBAction func buttonContinue(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OTPVC") as! OTPVC
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
