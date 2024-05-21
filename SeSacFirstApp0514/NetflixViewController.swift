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
        
       textFieldLayout(emailTextField, textLabel: "이메일 주소 또는 비밀번호")
       textFieldLayout(passwordTextField, textLabel: "비밀번호")
       textFieldLayout(nickNameTextField, textLabel: "닉네임")
       textFieldLayout(locationTextField, textLabel: "위치")
       textFieldLayout(codeTextField, textLabel: "추천 코드 입력")
        
    
        
        
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
    
    func textFieldLayout(_ textField: UITextField, textLabel: String){
        textField.attributedPlaceholder = NSAttributedString(string: textLabel, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        textField.backgroundColor = .gray
        textField.layer.cornerRadius = 5
        textField.keyboardType = .default
        textField.textAlignment = .center
        
    }
    
   
    
    @IBAction func joinButtonTapped(_ sender: UIButton) {
        self.view.endEditing(true)
    }
    
    
    
 

}
