//
//  CardSelectionVC.swift
//  CardWorkout-programmatic
//
//  Created by Bharti Sagar on 24/12/24.
//

import UIKit

class CardSelectionVC: UIViewController {

    let cardImageView = UIImageView()
    let cards = CardDeck.allValues
    let stopButton = CWButton(backgroundColor: .systemRed, title: "Stop!")
    let restartButton = CWButton(backgroundColor: .systemGreen, title: "Restart")
    let rulesButton = CWButton(backgroundColor: .systemBlue, title: "Rules")
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
        configureUI()
        startTimer()
    }
    func configureUI(){
        configureCardImageView()
        configureStopButton()
        confiureRestartButton()
        configureRulesButton()
        
    }
    
    func configureCardImageView(){
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }
    
    func configureStopButton(){
        view.addSubview(stopButton)
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
        stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)
    }
    func confiureRestartButton(){
        view.addSubview(restartButton)
        NSLayoutConstraint.activate([
            restartButton.widthAnchor.constraint(equalToConstant: 115),
            restartButton.heightAnchor.constraint(equalToConstant: 50),
            restartButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
        restartButton.addTarget(self, action: #selector(restartTimer), for: .touchUpInside)
    }
    func configureRulesButton(){
        view.addSubview(rulesButton)
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }
    @objc func presentRulesVC(){
        let rulesVC  = RulesViewController()
        present(rulesVC, animated: true)
        
    }
    @objc func stopTimer(){
        timer.invalidate()
    }
    @objc func restartTimer(){
        timer.invalidate()
        startTimer()
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    @objc func showRandomCard(){
        cardImageView.image = cards.randomElement()
    }
    

}
