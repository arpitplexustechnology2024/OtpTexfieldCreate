//
//  ViewController.swift
//  OtpTexfieldCreate
//
//  Created by Arpit iOS Dev. on 08/05/24.
//

import UIKit
import AEOTPTextField

class ViewController: UIViewController {

    @IBOutlet weak var otpTextField: AEOTPTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        otpTextField.otpDelegate = self
                otpTextField.otpFontSize = 50
                otpTextField.otpTextColor = .red
                otpTextField.otpCornerRaduis = 5
                otpTextField.otpFilledBorderColor = .black
                otpTextField.configure(with: 4)
        otpTextField.otpFilledBorderWidth = 1
    }
}

extension ViewController: AEOTPTextFieldDelegate {
    func didUserFinishEnter(the code: String) {
        print(code)
    }
}
