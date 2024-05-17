//
//  NetflixViewController.swift
//  SeSacFirstApp0514
//
//  Created by 최민경 on 5/16/24.
//

import UIKit

class NetflixViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nickNameTextField: UITextField!
    @IBOutlet var codeTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var joinButton: UIButton!
    @IBOutlet var addLabel: UILabel!
    @IBOutlet var addSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        titleLabel.text = "JACKFLIX"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 26)
        titleLabel.textColor = .red
        
       
        emailTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        emailTextField.backgroundColor = .gray
        emailTextField.layer.cornerRadius = 5
        emailTextField.keyboardType = .default
        emailTextField.textAlignment = .center
        
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        passwordTextField.backgroundColor = .gray
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.keyboardType = .numberPad
        passwordTextField.isSecureTextEntry = true
        passwordTextField.textAlignment = .center
        
        
        nickNameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        nickNameTextField.backgroundColor = .gray
        nickNameTextField.layer.cornerRadius = 5
        nickNameTextField.keyboardType = .default
        nickNameTextField.textAlignment = .center
        
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        locationTextField.backgroundColor = .gray
        locationTextField.layer.cornerRadius = 5
        locationTextField.keyboardType = .default
        locationTextField.textAlignment = .center
        
        codeTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        codeTextField.backgroundColor = .gray
        codeTextField.layer.cornerRadius = 5
        codeTextField.keyboardType = .default
        codeTextField.textAlignment = .center
        
        
        joinButton.setTitle("회원가입", for: .normal)
        joinButton.setTitleColor(.black, for: .normal)
        joinButton.backgroundColor = .white
        joinButton.layer.cornerRadius = 5
        
        addLabel.text = "추가 정보 입력"
        addLabel.textColor = .white
        
        addSwitch.setOn(true, animated: true)
        addSwitch.onTintColor = .red
        addSwitch.thumbTintColor = .white
    }
    
    
    
   
    
    @IBAction func joinButtonTapped(_ sender: UIButton) {
        self.view.endEditing(true)
    }
    
    
    
 

}
