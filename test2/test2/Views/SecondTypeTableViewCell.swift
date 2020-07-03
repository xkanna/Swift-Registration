//
//  SecondTypeTableViewCell.swift
//  test2
//
//  Created by Katarina Veljkovic on 02/07/2020.
//  Copyright © 2020 Katarina Veljkovic. All rights reserved.
//

import UIKit

class SecondTypeTableViewCell: UITableViewCell {
        let label = UILabel()
        let button1 = UIButton()
        let button2 = UIButton()
    
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)
          setupUI()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        func setupUI(){
            
            contentView.addSubview(label)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 20).isActive = true
            label.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -20).isActive = true
            label.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20).isActive = true
            label.widthAnchor.constraint(equalTo: self.contentView.widthAnchor, multiplier: 0.4).isActive = true
            
            
            
            let mzStack = UIStackView()
            contentView.addSubview(mzStack)
            mzStack.translatesAutoresizingMaskIntoConstraints = false
            mzStack.axis = .horizontal
            mzStack.alignment = .fill
            mzStack.distribution = .fill
            mzStack.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier:0.4).isActive = true
            mzStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
            mzStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
            mzStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
            mzStack.spacing = 20
            
            
            
            mzStack.addArrangedSubview(button1)
            button1.translatesAutoresizingMaskIntoConstraints = false
            button1.topAnchor.constraint(equalTo: mzStack.topAnchor).isActive = true
            button1.bottomAnchor.constraint(equalTo: mzStack.bottomAnchor).isActive = true
            button1.leadingAnchor.constraint(equalTo: mzStack.leadingAnchor).isActive = true
            button1.setTitleColor(.black, for: .normal)
            
            
            
            mzStack.addArrangedSubview(button2)
            button2.translatesAutoresizingMaskIntoConstraints = false
            button2.topAnchor.constraint(equalTo: mzStack.topAnchor).isActive = true
            button2.bottomAnchor.constraint(equalTo: mzStack.bottomAnchor).isActive = true
            button2.trailingAnchor.constraint(equalTo: mzStack.trailingAnchor).isActive = true
            button2.setTitleColor(.black, for: .normal)
            button2.widthAnchor.constraint(equalTo: button1.widthAnchor).isActive = true
        }
    }
