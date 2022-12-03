//
//  ViewController.swift
//  Project2
//
//  Created by Ali Görkem Aksöz on 24.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var questionCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland","russia","spain","uk","us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQouestion()
    }
    func askQouestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        correctAnswer = Int.random(in: 0...2)
        title = countries[correctAnswer].uppercased() + "  \(score)"
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        var subtitle: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
            questionCount += 1
        }else {
            title = "Wrong"
            score -= 1
            questionCount += 1
            if sender.tag == 0 {
                subtitle = "Wrong! That's the flag of \(countries[0].uppercased())"
                alertMaker(alertTitle: title, alertMessage: subtitle, actionTitle: "OK")
            }else{
                subtitle = "That's the flag of \(countries[1].uppercased())"
                alertMaker(alertTitle: title, alertMessage: subtitle, actionTitle: "OK")
            }
        }
        
        
        if questionCount == 10 {
            alertMaker(alertTitle: "\(questionCount) questions asked",
                       alertMessage: "You answered \(score) of them correctly ",
                       actionTitle: "Ok")
            score = 0
        }else{
            alertMaker(alertTitle: title,
                       alertMessage: "Your score is \(score)",
                       actionTitle: title)
            score = 0
        }
    }
    
    func alertMaker(alertTitle: String, alertMessage: String, actionTitle: String) {
        let ac = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: actionTitle, style: .default, handler: askQouestion))
        
        present(ac, animated: true)
    }
    
}

