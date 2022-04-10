//
//  ViewController.swift
//  firstGame
//
//  Created by Dorukhan Demir on 9.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    var score = 0
    var highScore = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView6: UIImageView!
    @IBOutlet weak var imageView7: UIImageView!
    @IBOutlet weak var imageView8: UIImageView!
    @IBOutlet weak var imageView9: UIImageView!
    
    var kennyArray = [UIImageView]()
    
    var countdowntime = Timer()
    var kennyControl = Timer()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        kennyArray = [imageView9, imageView8, imageView7, imageView6, imageView5, imageView4, imageView3, imageView2, imageView1]
        
        imageView1.image = UIImage(named: "morty")
        imageView2.image = UIImage(named: "morty")
        imageView3.image = UIImage(named: "morty")
        imageView4.image = UIImage(named: "morty")
        imageView5.image = UIImage(named: "morty")
        imageView6.image = UIImage(named: "morty")
        imageView7.image = UIImage(named: "morty")
        imageView8.image = UIImage(named: "morty")
        imageView9.image = UIImage(named: "morty")

        imageView1.isUserInteractionEnabled = true
        imageView2.isUserInteractionEnabled = true
        imageView3.isUserInteractionEnabled = true
        imageView4.isUserInteractionEnabled = true
        imageView5.isUserInteractionEnabled = true
        imageView6.isUserInteractionEnabled = true
        imageView7.isUserInteractionEnabled = true
        imageView8.isUserInteractionEnabled = true
        imageView9.isUserInteractionEnabled = true
        
        let gestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(tapped))
        let gestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(tapped))
        let gestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(tapped))
        let gestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(tapped))
        let gestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(tapped))
        let gestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(tapped))
        let gestureRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(tapped))
        let gestureRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(tapped))
        let gestureRecognizer9 = UITapGestureRecognizer(target: self, action: #selector(tapped))
        
        imageView1.addGestureRecognizer(gestureRecognizer1)
        imageView2.addGestureRecognizer(gestureRecognizer2)
        imageView3.addGestureRecognizer(gestureRecognizer3)
        imageView4.addGestureRecognizer(gestureRecognizer4)
        imageView5.addGestureRecognizer(gestureRecognizer5)
        imageView6.addGestureRecognizer(gestureRecognizer6)
        imageView7.addGestureRecognizer(gestureRecognizer7)
        imageView8.addGestureRecognizer(gestureRecognizer8)
        imageView9.addGestureRecognizer(gestureRecognizer9)
        
    }
    
    @objc func tapped () {
        score += 1
        scoreLabel.text = "Your Score : \(score)"
        
    }


}

