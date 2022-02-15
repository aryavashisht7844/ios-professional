//
//  StackView.swift
//  StoryPromptwithoutStoryboard
//
//  Created by Arya Vashisht on 10/02/22.
//

import Foundation
import UIKit


class ContainerView: UIView{
    

    
    lazy var stackView: UIStackView = {
        
        let stackview = UIStackView()
    
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .vertical
        stackview.spacing = 10
        stackview.distribution = .fill
        
        return stackview
    }()
    
    //
    
    lazy var nounstackView: UIStackView = {
        
        
        let nounlabel = UILabel()
        let nountextView = UITextField()
        
        let nounstackview = UIStackView()
        nounstackview.translatesAutoresizingMaskIntoConstraints = false
        nounstackview.axis = .horizontal
        nounstackview.distribution = .fillProportionally
        nounstackview.spacing = 10
        
        nounlabel.translatesAutoresizingMaskIntoConstraints = false
        nounlabel.text = "Noun"
        nounlabel.font = .systemFont(ofSize: 15)
        nounlabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        nountextView.translatesAutoresizingMaskIntoConstraints = false
        nountextView.backgroundColor = .white
        
        
        nounstackview.addArrangedSubview(nounlabel)
        nounstackview.addArrangedSubview(nountextView)
        addSubview(nounstackview)

        return nounstackview
    }()
    
    //
    
    lazy var adjectivestackView: UIStackView = {
        
        let adjectivestackview = UIStackView()
        let adjectivelabel = UILabel()
        let adjectivetextView = UITextField()
        
        adjectivestackview.translatesAutoresizingMaskIntoConstraints = false
        adjectivestackview.axis = .horizontal
        adjectivestackview.distribution = .fillProportionally
        adjectivestackview.spacing = 10
        
        adjectivelabel.translatesAutoresizingMaskIntoConstraints = false
        adjectivelabel.text = "Adjective"
        adjectivelabel.font = .systemFont(ofSize: 15)
        adjectivelabel.widthAnchor.constraint(equalToConstant: 65).isActive = true
        
        adjectivetextView.translatesAutoresizingMaskIntoConstraints = false
        adjectivetextView.backgroundColor = .white
        
        adjectivestackview.addArrangedSubview(adjectivelabel)
        adjectivestackview.addArrangedSubview(adjectivetextView)
        addSubview(adjectivestackview)
        
        return adjectivestackview
        
    }()
    
    //
    
    lazy var verbstackView: UIStackView = {
        
        let verbstackview = UIStackView()
        let verblabel = UILabel()
        let verbtextView = UITextField()
        
        verbstackview.translatesAutoresizingMaskIntoConstraints = false
        verbstackview.axis = .horizontal
        verbstackview.distribution = .fillProportionally
        verbstackview.spacing = 10
        
        
        verblabel.translatesAutoresizingMaskIntoConstraints = false
        verblabel.text = "Verb"
        verblabel.font = .systemFont(ofSize: 15)
        verblabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        verbtextView.translatesAutoresizingMaskIntoConstraints = false
        verbtextView.backgroundColor = .white
        
        
        verbstackview.addArrangedSubview(verblabel)
        verbstackview.addArrangedSubview(verbtextView)
        addSubview(verbstackview)
        return verbstackview
        
    }()
    
    
    //
    
    lazy var numberlabelView: UILabel = {
        let numberlabel = UILabel()
        
        numberlabel.text = "Number: 7"
        numberlabel.font = .systemFont(ofSize: 15)
        
        numberlabel.translatesAutoresizingMaskIntoConstraints = false
        return numberlabel
    }()
    
    
    //
    
    
    lazy var numbersliderView: UISlider = {
        let slider = UISlider()
        
        return slider
    }()
    
    
    //
    
    lazy var imageLabel: UILabel = {
        
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Picture:"
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    
    //
    
    
    lazy var imageView: UIImageView = {
        
        let imageview = UIImageView()
        let width = 180
        let height = 50
        
        
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.image = UIImage(named: "object-object_box-of-books")
        

       
        imageview.frame = CGRect(x: 0, y: 0, width: width, height: height )
        
        

        return imageview
    }()
    
    
    //
    
    lazy var storyLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Story Type"
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    
    lazy var storyGenre: UISegmentedControl = {
        let genres = ["Sci-Fi", "Horror"]
        let customSC = UISegmentedControl(items: genres)
        customSC.selectedSegmentIndex = 0

        return customSC
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ContainerView {
    private func style() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layout() {
        
        
        
        
        
        stackView.addArrangedSubview(nounstackView)
        stackView.addArrangedSubview(adjectivestackView)
        stackView.addArrangedSubview(verbstackView)
        stackView.addArrangedSubview(numbersliderView)
        stackView.addArrangedSubview(numberlabelView)
        stackView.addArrangedSubview(numbersliderView)
        stackView.addArrangedSubview(imageLabel)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(storyLabel)
        stackView.addArrangedSubview(storyGenre)
        addSubview(stackView)
        
        
        
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 7),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2.5),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2.5)
        ])
        
        nounstackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        adjectivestackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        verbstackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        numberlabelView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        numbersliderView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true

        storyLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        storyGenre.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
}
