//
//  ViewController.swift
//  StoryPromptF
//
//  Created by Arya Vashisht on 16/02/22.
//


import UIKit

class StackViewController: UIViewController {
    
    let stackView = ContainerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }
}

extension StackViewController{
    private func style(){
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = UIColor(named: "BackgroundColor")
       
    }
    private func layout(){
        
        view.addSubview(stackView)
        
        //Stack View
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 7),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2.5),
            view.bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2.5)
        ])
    }
}


