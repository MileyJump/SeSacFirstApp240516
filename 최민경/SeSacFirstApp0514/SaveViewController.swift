//
//  SaveViewController.swift
//  SeSacFirstApp0514
//
//  Created by 최민경 on 5/16/24.
//

import UIKit

class SaveViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var autoSaveLabel: UILabel!
    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var savedListButton: UIButton!
    @IBOutlet var settingsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        titleLabel.text = "저장한 콘텐츠 목록"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        
        autoSaveLabel.text = "'나만의 자동 저장' 기능"
        autoSaveLabel.textColor = .white
        autoSaveLabel.textAlignment = .center
        autoSaveLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        detailLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다. \n 디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 \n 없어요."
        detailLabel.numberOfLines = 3
        detailLabel.font = .systemFont(ofSize: 15)
        detailLabel.textColor = .lightGray
        detailLabel.textAlignment = .center

        posterImageView.image = UIImage(named: "dummy")
        posterImageView.contentMode = .scaleAspectFill
        
        settingsButton.setTitle("설정하기", for: .normal)
        settingsButton.backgroundColor = UIColor.blue
        settingsButton.setTitleColor(.white, for: .normal)
        settingsButton.layer.cornerRadius = 5
        settingsButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        savedListButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        savedListButton.backgroundColor = .white
        savedListButton.layer.cornerRadius = 5
        savedListButton.setTitleColor(.black, for: .normal)
        
        
    }
    

   

}
