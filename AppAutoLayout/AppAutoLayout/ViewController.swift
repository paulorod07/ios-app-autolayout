//
//  ViewController.swift
//  AppAutoLayout
//
//  Created by Paulo Rodrigues on 19/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    // let's avoid polluting viewDidLoad
    let bearImageView: UIImageView = {
        let image = UIImage(named: "bear_first.png")
        let imageView = UIImageView(image: image)
        
        // esse código habilita o autolayout para a imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        // esse código habilita o autolayout para o textView
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        
        setupLayout()
    }

    private func setupLayout() {
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }

}

