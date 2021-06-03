//
//  ViewController.swift
//  Tinder
//
//  Created by 大西玲音 on 2021/06/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        let view1 = UIView()
        view1.backgroundColor = .green
        let view2 = UIView()
        view2.backgroundColor = .red
        let view3 = UIView()
        view3.backgroundColor = .blue
        let stackView = UIStackView(arrangedSubviews: [view1, view2, view3])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        self.view.addSubview(stackView)
        [view1.heightAnchor.constraint(equalToConstant: 100),
         view3.heightAnchor.constraint(equalToConstant: 100),
         stackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
         stackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
         stackView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
         stackView.rightAnchor.constraint(equalTo: self.view.rightAnchor)
        ].forEach { $0.isActive = true }
        
    }


}

