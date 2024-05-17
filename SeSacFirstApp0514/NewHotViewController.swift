//
//  NewHotViewController.swift
//  SeSacFirstApp0514
//
//  Created by 최민경 on 5/16/24.
//

import UIKit

class NewHotViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var searchImageView: UIImageView!
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var openButton: UIButton!
    @IBOutlet var contentsButton: UIButton!
    @IBOutlet var top10Button: UIButton!
    @IBOutlet var contentsTitleLabel: UILabel!
    @IBOutlet var contentsSubTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        titleLabel.text = "NEW & HOT 검색"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textColor = .white
        
        searchImageView.image = UIImage(systemName: "magnifyingglass")
        searchImageView.backgroundColor = .gray
        searchImageView.layer.cornerRadius = 5
        searchImageView.tintColor = .lightGray
        
    
        searchTextField.backgroundColor = .gray
        searchTextField.attributedPlaceholder = NSAttributedString(string: "게임, 시리즈, 영화를 검색하세요...", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])

        openButton.setTitle("공개 예정", for: .normal)
        openButton.backgroundColor = .white
        openButton.setImage(UIImage(named: "blue"), for: .normal)
        openButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        openButton.setTitleColor(.black, for: .normal)
        openButton.layer.cornerRadius = 20
        
        contentsButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        contentsButton.setImage(UIImage(named: "turquoise"), for: .normal)
        contentsButton.layer.cornerRadius = 20
        contentsButton.setTitleColor(.white, for: .normal)
        
        top10Button.setTitle("Top 10 시리즈", for: .normal)
        top10Button.setImage(UIImage(named: "pink"), for: .normal)
        top10Button.layer.cornerRadius = 20
        top10Button.setTitleColor(.white, for: .normal)
        
        contentsTitleLabel.text = "이런! 찾으시는 작품이 없습니다."
        contentsTitleLabel.textAlignment = .center
        contentsTitleLabel.font = UIFont.boldSystemFont(ofSize: 23)
        contentsTitleLabel.textColor = .white
        
        contentsSubTitleLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요."
        contentsSubTitleLabel.textAlignment = .center
        contentsSubTitleLabel.font = UIFont.systemFont(ofSize: 15)
        contentsSubTitleLabel.textColor = .lightGray
    }
    
    
    @IBAction func openButtonTapped(_ sender: UIButton) {
        contentsTitleLabel.text = "이런! 찾으시는 작품이 없습니다."
        contentsSubTitleLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요."
        openButton.backgroundColor = .white
        openButton.setTitleColor(.black, for: .normal)
        
        contentsButton.backgroundColor = .black
        contentsButton.titleLabel?.textColor = .white
        
        top10Button.backgroundColor = .black
        top10Button.titleLabel?.textColor = .white
    }
    
    @IBAction func contentsButtonTapped(_ sender: UIButton) {
        contentsTitleLabel.text = "인기 콘텐츠가 없습니다"
        contentsSubTitleLabel.text = ""
        
        contentsButton.backgroundColor = .white
        contentsButton.setTitleColor(.black, for: .normal)
        
        openButton.backgroundColor = .black
        openButton.titleLabel?.textColor = .white
        
        top10Button.backgroundColor = .black
        top10Button.titleLabel?.textColor = .white
    }
    
    @IBAction func top10ButtonTapped(_ sender: Any) {
        contentsTitleLabel.text = "인기 시리즈가 없습니다"
        contentsSubTitleLabel.text = ""
        contentsSubTitleLabel.textColor = .white
        
        contentsButton.backgroundColor = .black
        contentsButton.titleLabel?.textColor = .white
        
        openButton.backgroundColor = .black
        openButton.titleLabel?.textColor = .white
        
        top10Button.backgroundColor = .white
        top10Button.setTitleColor(.black, for: .normal)
      
        
        
    }
    
}
