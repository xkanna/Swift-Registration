//
//  FourthTypeTableViewCell.swift
//  test2
//
//  Created by Katarina Veljkovic on 02/07/2020.
//  Copyright © 2020 Katarina Veljkovic. All rights reserved.
//

import UIKit

class FourthTypeTableViewCell: UITableViewCell {
    let label = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let textField = UITextField()
    let slider = UISlider()
    
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
        Stack.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -20).isActive = true
        Stack.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20).isActive = true
        Stack.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 20).isActive = true
        Stack.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        //Stack.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20).isActive = true
        
               
               let Stack2 = UIStackView()
               Stack.addArrangedSubview(Stack2)
               Stack2.translatesAutoresizingMaskIntoConstraints = false
               Stack2.axis = .horizontal
               Stack2.alignment = .fill
               Stack2.distribution = .fill
        Stack2.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20).isActive = true
        
               
               let Stack3 = UIStackView()
               Stack.addArrangedSubview(Stack3)
               Stack3.translatesAutoresizingMaskIntoConstraints = false
               Stack3.axis = .horizontal
               Stack3.alignment = .fill
               Stack3.distribution = .fill
        Stack3.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20).isActive = true
        
        
               
               
               
                    Stack2.addArrangedSubview(label)
               label.translatesAutoresizingMaskIntoConstraints = false
               label.heightAnchor.constraint(equalToConstant: 20).isActive = true
               
               
               Stack2.addArrangedSubview(textField)
               textField.translatesAutoresizingMaskIntoConstraints = false
        textField.widthAnchor.constraint(equalTo: self.contentView.widthAnchor, multiplier:0.4).isActive = true
               
               
                    Stack3.addArrangedSubview(label2)
               label2.translatesAutoresizingMaskIntoConstraints = false
               label2.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
                    Stack3.addArrangedSubview(label3)
               label3.translatesAutoresizingMaskIntoConstraints = false
               label3.heightAnchor.constraint(equalToConstant: 25).isActive = true
        label3.widthAnchor.constraint(equalTo: self.contentView.widthAnchor, multiplier:0.4).isActive = true
               label3.textAlignment = .right
                

               Stack.addArrangedSubview(slider)
               slider.translatesAutoresizingMaskIntoConstraints = false
        //slider.widthAnchor.constraint(equalTo: self.contentView.widthAnchor).isActive = true
        
    }
    

}
