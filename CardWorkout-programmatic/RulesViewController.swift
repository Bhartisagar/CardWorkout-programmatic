//
//  RulesViewController.swift
//  CardWorkout-programmatic
//
//  Created by Bharti Sagar on 24/12/24.
//

import UIKit

class RulesViewController: UIViewController {
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let exerciseLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
        configuretitleLabel()
        configureRulesLabel()
        configureexerciseLabel()
    }
    
    func configuretitleLabel() {
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            ])
    }
    func configureRulesLabel() {
        rulesLabel.text = "The value of each card represent the number of exercise you do \n\n J = 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        view.addSubview(rulesLabel)
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            ])
    }
    
    func configureexerciseLabel() {
        exerciseLabel.text = "♠️ = Push-ups\n\n♣️ = Squats\n\n❤️ = Lunges\n\n🔹 = Jumping Jackson"
        exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.numberOfLines = 0
        view.addSubview(exerciseLabel)
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 25),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    
}
