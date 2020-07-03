//
//  FifthTypeTableViewCell.swift
//  test2
//
//  Created by Katarina Veljkovic on 03/07/2020.
//  Copyright © 2020 Katarina Veljkovic. All rights reserved.
//

import UIKit

class FifthTypeTableViewCell: UITableViewCell {

    let button = UIButton()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupUI(){
        
        
        
        contentView.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 20).isActive = true
        button.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -20).isActive = true
        //button.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20).isActive = true
        button.widthAnchor.constraint(equalTo: self.contentView.widthAnchor).isActive = true
        button.setTitleColor(.black, for: .normal)
        
        
        
    }

}
