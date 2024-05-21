//
//  ProfileViewController.swift
//  SeSacFirstApp0514
//
//  Created by 최민경 on 5/17/24.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var checkButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //닉네임
    //1. 버튼 클릭 인식
    //2. 텍스트 필드 글자 표현
    //3. resultLabel.text = userTextField.text
    //4. 2글자 이상 8글자 미만 >>
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
    
        
        // 둘 다 타입이 옵셔널이라 nil이 있어도 되는 거라 ! 안 해도 됨
        resultLabel.text = userTextField.text
        
        if userTextField.text!.count > 2 && userTextField.text!.count < 8  {
            resultLabel.text = userTextField.text
        }else {
            resultLabel.text = "다시 확인해주세요"
        }
    }
}
