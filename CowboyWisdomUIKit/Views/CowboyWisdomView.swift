//
//  CowboyWisdomView.swift
//  CowboyWisdomUIKit
//
//  Created by Nicholas Solter on 12/8/23.
//

import Foundation
import UIKit

class CowboyWisdomView: UIView {
    
    let quote = UILabel()
    let button = UIButton()
    let title = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        backgroundColor = .white
        title.text = "Cowboy Wisdom"
        title.textAlignment = .center
        title.font = UIFont.preferredFont(forTextStyle: .title1)
        addSubview(title)

        quote.text = ""
        quote.numberOfLines = 0
        quote.textAlignment = .center
        quote.font = UIFont.preferredFont(forTextStyle: .body)
        addSubview(quote)
        
        button.setTitle("Get some cowboy wisdom", for: .normal)
        var config = UIButton.Configuration.filled()
        config.baseForegroundColor = .white
        config.baseBackgroundColor = .black
        config.cornerStyle = .capsule
        config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
        button.configuration = config
        addSubview(button)
    }

    private func setupConstraints() {
        title.translatesAutoresizingMaskIntoConstraints = false
        quote.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            quote.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 20),
            quote.centerXAnchor.constraint(equalTo: centerXAnchor),
            quote.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -20),
            quote.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            quote.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            button.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            button.centerXAnchor.constraint(equalTo: centerXAnchor)

        ])
    }
}
