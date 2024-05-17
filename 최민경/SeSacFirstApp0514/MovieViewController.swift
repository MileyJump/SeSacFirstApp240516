//
//  MovieViewController.swift
//  SeSacFirstApp0514
//
//  Created by 최민경 on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var nickNameLabel: UILabel!
    @IBOutlet var posterImageView: UIImageView!
    
    @IBOutlet var keyWordLabel: UILabel!
    
    @IBOutlet var playButton: UIButton!
    @IBOutlet var listButton: UIButton!
    @IBOutlet var contentsLabel: UILabel!
    @IBOutlet var firstMovieImageView: UIImageView!
    @IBOutlet var secondMovieImageView: UIImageView!
    @IBOutlet var thirdMovieImageView: UIImageView!
    
    @IBOutlet var firstTop10ImageView: UIImageView!
    @IBOutlet var secondTop10ImageView: UIImageView!
    @IBOutlet var thirdTop10ImageView: UIImageView!
    
    @IBOutlet weak var firstNewSeriesLabel: UILabel!
    @IBOutlet weak var secondNewSeriesLabel: UILabel!
    @IBOutlet weak var thirdNewSeriesLabel: UILabel!
    
    @IBOutlet weak var firstEpisodeLabel: UILabel!
    @IBOutlet weak var secondEpisodeLabel: UILabel!
    @IBOutlet weak var thirdEpisodeLabel: UILabel!
    
    var imageArray = [UIImage(named: "명량"),UIImage(named: "무빙"),UIImage(named: "구미호뎐"), UIImage(named: "마스크걸"), UIImage(named: "고려거란전쟁"),UIImage(named: "비질란테"),UIImage(named: "소년시대")]
    
    var top10Image = UIImage(named: "top10 badge")
    
    enum ContentsCase: CaseIterable {
        case episode
        case series
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nickNameLabel.text = "고래밥님"
        nickNameLabel.textAlignment = .center
        nickNameLabel.font = UIFont.boldSystemFont(ofSize: 20)

        posterImageView.image = imageArray[0]
        posterImageView.layer.cornerRadius = 10
        posterImageView.contentMode = .scaleAspectFill
        
        keyWordLabel.text = "응원하고픈 · 흥미미진진 · 사극 · 전투 · 한국 작품"
        keyWordLabel.font = UIFont.systemFont(ofSize: 14)
        
        playButton.setImage(UIImage(named: "play_normal"), for: .normal)
        playButton.setTitle("", for: .normal)
        
        listButton.setImage(UIImage(systemName: "plus"), for: .normal)
        listButton.setTitle("내가 찜한 리스트", for: .normal)
        listButton.backgroundColor = .gray
        listButton.titleLabel?.tintColor = .white
        listButton.layer.cornerRadius = 5
        listButton.tintColor = .white
        
        contentsLabel.text = "지금 뜨는 콘텐츠"
        contentsLabel.textColor = .white
        
        firstMovieImageView.image = imageArray[1]
        firstMovieImageView.layer.cornerRadius = 5
        
        secondMovieImageView.image = imageArray[2]
        secondMovieImageView.layer.cornerRadius = 5
        
        thirdMovieImageView.image = imageArray[3]
        thirdMovieImageView.layer.cornerRadius = 5
        
        firstNewSeriesLabel.text = "새로운 시리즈"
        firstNewSeriesLabel.textColor = .white
        firstNewSeriesLabel.font = UIFont.systemFont(ofSize: 12)
        firstNewSeriesLabel.backgroundColor = .red
        
        secondNewSeriesLabel.text = "새로운 시리즈"
        secondNewSeriesLabel.textColor = .white
        secondNewSeriesLabel.font = UIFont.systemFont(ofSize: 12)
        secondNewSeriesLabel.backgroundColor = .red
        
        thirdNewSeriesLabel.text = "새로운 시리즈"
        thirdNewSeriesLabel.textColor = .white
        thirdNewSeriesLabel.font = UIFont.systemFont(ofSize: 12)
        thirdNewSeriesLabel.backgroundColor = .red
        
        firstEpisodeLabel.text = "새로운 에피소드"
        firstEpisodeLabel.textColor = .black
        firstEpisodeLabel.font = UIFont.systemFont(ofSize: 12)
        firstEpisodeLabel.backgroundColor = .white
        
        secondEpisodeLabel.text = "새로운 에피소드"
        secondEpisodeLabel.textColor = .black
        secondEpisodeLabel.font = UIFont.systemFont(ofSize: 11)
        secondEpisodeLabel.backgroundColor = .white
        
        thirdEpisodeLabel.text = "새로운 에피소드"
        thirdEpisodeLabel.textColor = .black
        thirdEpisodeLabel.font = UIFont.systemFont(ofSize: 11)
        thirdEpisodeLabel.backgroundColor = .white
    }

    @IBAction func playButtonTapped(_ sender: UIButton) {
        print(#function)
        
        firstMovieImageView.image = imageArray.randomElement() ?? UIImage(named: "무빙")
        secondMovieImageView.image = imageArray.randomElement() ?? UIImage(named: "무빙")
        thirdMovieImageView.image = imageArray.randomElement() ?? UIImage(named: "무빙")
        
        firstTop10ImageView.image = nil
        secondTop10ImageView.image = nil
        thirdTop10ImageView.image = nil
        
        let imageViews = [firstTop10ImageView, secondTop10ImageView, thirdTop10ImageView]
                let randomIndex = Int.random(in: 0..<imageViews.count)
                imageViews[randomIndex]?.image = top10Image
        
        var contentsCases: [ContentsCase] = []
        
        for _ in 0...2 {
            contentsCases.append(ContentsCase.allCases.randomElement() ?? .episode)
        }
        
        for (index, contentsCase) in contentsCases.enumerated() {
            
            if index == 0 {
                if contentsCase == .episode {
                    redLabel(firstEpisodeLabel)
                    whiteLabel(firstNewSeriesLabel)
                    firstEpisodeLabel.alpha = 1
                    firstNewSeriesLabel.text = "지금 시청하기"
                } else {
                    redLabel(firstNewSeriesLabel)
                    firstEpisodeLabel.alpha = 0
                    firstNewSeriesLabel.text = "새로운 시리즈"
                }
            } else if index == 1 {
                if contentsCase == .episode {
                    redLabel(secondEpisodeLabel)
                    whiteLabel(secondNewSeriesLabel)
                    secondEpisodeLabel.alpha = 1
                    secondNewSeriesLabel.text = "지금 시청하기"
                } else {
                    redLabel(secondNewSeriesLabel)
                    secondEpisodeLabel.alpha = 0
                    secondNewSeriesLabel.text = "새로운 시리즈"
                }
            } else {
                if contentsCase == .episode {
                    redLabel(thirdEpisodeLabel)
                    whiteLabel(thirdNewSeriesLabel)
                    thirdEpisodeLabel.alpha = 1
                    thirdNewSeriesLabel.text = "지금 시청하기"
                } else {
                    thirdEpisodeLabel.alpha = 0
                    thirdNewSeriesLabel.text = "새로운 시리즈"
                    redLabel(thirdNewSeriesLabel)
                }
            }
        }
        
        func redLabel(_ label: UILabel) {
            label.backgroundColor = .red
            label.textColor = .white
        }
        
        func whiteLabel(_ label: UILabel) {
            label.backgroundColor = .white
            label.textColor = .black
        }
    }
}
