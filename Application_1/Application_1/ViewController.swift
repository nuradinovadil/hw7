//
//  ViewController.swift
//  Application_1
//
//  Created by Nuradinov Adil on 13/12/22.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var myLabelOne: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.text = "I am Rich"
        label.textColor = .white
        return label
    }()
    
    private lazy var myDiamond: UIImageView = {
       let imageView = UIImageView()
       imageView.image = UIImage(named: "Diamond")
       return imageView
    }()
    
    private lazy var myLabelTwo: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "I can buy anything"
        label.textColor = .white
        return label
    }()
    
    private lazy var myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show my money", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(generateRandomNumber), for: .touchUpInside)
        return button
    }()
    
    @objc func generateRandomNumber() {
        let randomNumber = Int.random(in: 1000...10000)
        myLabelThree.text = "Account: \(String(randomNumber))$"
    }
    
    private lazy var myLabelThree: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemGreen
        setUpViews()
        setUpConstraints()
    }

}
 
private extension ViewController {
    func setUpViews() {
        view.addSubview(myLabelOne)
        view.addSubview(myDiamond)
        view.addSubview(myLabelTwo)
        view.addSubview(myButton)
        view.addSubview(myLabelThree)
    }
    
    func setUpConstraints() {
        myLabelOne.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myDiamond.snp.top).offset(-50)
        }
        
        myDiamond.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(300)
        }
        
        myLabelTwo.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(myDiamond.snp.bottom).offset(15)
        }
        
        myButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(myLabelTwo.snp.bottom).offset(20)
        }
        
        myLabelThree.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(myButton.snp.bottom).offset(15)
        }
    }
}


