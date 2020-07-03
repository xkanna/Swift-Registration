//
//  ThirdTypeTableViewCell.swift
//  test2
//
//  Created by Katarina Veljkovic on 02/07/2020.
//  Copyright © 2020 Katarina Veljkovic. All rights reserved.
//

import UIKit

class ThirdTypeTableViewCell: UITableViewCell {

    let label = UILabel()
    let textView = UITextView()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupUI(){
        
        let Stack = UIStackView()
        contentView.addSubview(Stack)
        Stack.translatesAutoresizingMaskIntoConstraints = false
        Stack.axis = .vertical
        Stack.alignment = .fill
        Stack.distribution = .fill
        Stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
        Stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        //Stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        Stack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        
        Stack.addArrangedSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalTo: self.contentView.widthAnchor).isActive = true
        
        Stack.addArrangedSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        
    }

}
