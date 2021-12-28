//
//  LoginVC.swift
//  Parkata
//
//  Created by Kaustabh on 18/12/21.
//

import UIKit

class LoginVC: UIViewController {

    
    @IBOutlet weak var forgetPasswordLabel: UILabel!{
        didSet{
            self.forgetPasswordLabel.attributedText = NSMutableAttributedString(string: "Forgot Password?", attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue, NSAttributedString.Key.kern: -0.3])
        }
    }
    @IBOutlet weak var signUpLabel: UILabel!{
        didSet {
            let attrs1 = [NSAttributedString.Key.font : UIFont(name: "Lato-Regular", size: 12), NSAttributedString.Key.foregroundColor : UIColor(hexString: "080F2A")]

                let attrs2 = [NSAttributedString.Key.font : UIFont(name: "Lato-Bold", size: 12), NSAttributedString.Key.foregroundColor : UIColor(hexString: "080F2A")]

                let attributedString1 = NSMutableAttributedString(string:"Don’t have an account? ", attributes:attrs1)

                let attributedString2 = NSMutableAttributedString(string:"SIGN UP", attributes:attrs2)

                attributedString1.append(attributedString2)
                attributedString1.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
                NSRange.init(location: 0, length: attributedString1.length))
                self.signUpLabel.attributedText = attributedString1
                
        }
    }
    @IBOutlet weak var viewEmail: UIView!{
        didSet{
            self.viewEmail.layer.cornerRadius = self.viewEmail.frame.size.height/2
        }
    }
    @IBOutlet weak var viewPassword: UIView!{
        didSet{
            self.viewPassword.layer.cornerRadius = self.viewPassword.frame.size.height/2
        }
    }
    
    @IBAction func buttonSkip(_ sender: UIButton) {
    }
    @IBOutlet weak var buttonGoogleOutlet: UIButton!{
        didSet{
            self.buttonGoogleOutlet.layer.cornerRadius = self.buttonGoogleOutlet.frame.size.height/2
        }
    }
    @IBAction func buttonGoogle(_ sender: UIButton) {
    }
    @IBOutlet weak var buttonFacebookOutlet: UIButton!{
        didSet{
            self.buttonFacebookOutlet.layer.cornerRadius = self.buttonFacebookOutlet.frame.size.height/2
        }
    }
    @IBAction func buttonFacebook(_ sender: UIButton) {
    }
    @IBOutlet weak var buttonAppleOutlet: UIButton!{
        didSet{
            self.buttonAppleOutlet.layer.cornerRadius = self.buttonAppleOutlet.frame.size.height/2
        }
    }
    @IBAction func buttonApple(_ sender: UIButton) {
    }
    @IBOutlet weak var buttonEmailOutlet: UIButton!{
        didSet{
            self.buttonEmailOutlet.layer.cornerRadius = self.buttonEmailOutlet.frame.size.height/2
        }
    }
    @IBAction func buttonEmail(_ sender: UIButton) {
    }
    @IBOutlet weak var buttonSigninOutlet: UIButton!{
        didSet{
            self.buttonSigninOutlet.layer.cornerRadius = self.buttonSigninOutlet.frame.size.height/2
        }
    }
    @IBAction func buttonSignin(_ sender: UIButton) {
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
