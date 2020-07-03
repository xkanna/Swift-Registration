//
//  testTableViewController.swift
//  test2
//
//  Created by Katarina Veljkovic on 02/07/2020.
//  Copyright © 2020 Katarina Veljkovic. All rights reserved.
//

import UIKit

class testTableViewController: UITableViewController {

    
     weak var firstNameTextField: UITextField?
     weak var lastNameTextField: UITextField?
     weak var dateTextField: UITextField?
     weak var genderButton1: UIButton?
     weak var genderButton2: UIButton?
     weak var descriptionTextView: UITextView?
     var heightSlider = UISlider()
     var heightTextField = UITextField()
    var weightTextField = UITextField()
     var weightSlider = UISlider()
    weak var submitButton : UIButton?
     var gender: Gender?
    var user : User?
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
//        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.allowsSelection = false
        tableView.register(FirstTypeTableViewCell.self, forCellReuseIdentifier: String(describing: FirstTypeTableViewCell.self))
        tableView.register(SecondTypeTableViewCell.self, forCellReuseIdentifier: String(describing: SecondTypeTableViewCell.self))
        tableView.register(ThirdTypeTableViewCell.self, forCellReuseIdentifier: String(describing: ThirdTypeTableViewCell.self))
        tableView.register(FourthTypeTableViewCell.self, forCellReuseIdentifier: String(describing: FourthTypeTableViewCell.self))
        tableView.register(FifthTypeTableViewCell.self, forCellReuseIdentifier: String(describing: FifthTypeTableViewCell.self))

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 8
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0,1,2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FirstTypeTableViewCell.self)) as! FirstTypeTableViewCell
            if indexPath.row == 0 {
                cell.label.text = "Ime:"
                cell.textField.placeholder = "ime"
                firstNameTextField = cell.textField
            }
            else if(indexPath.row == 1){
                cell.label.text = "Prezime:"
                cell.textField.placeholder = "prezime"
                lastNameTextField = cell.textField
            }
            else if(indexPath.row == 2){
                cell.label.text = "Datum rodjenja:"
                cell.textField.placeholder = "datum rodjenja"
                dateTextField = cell.textField
            }
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SecondTypeTableViewCell.self)) as! SecondTypeTableViewCell
            cell.label.text = "Pol:"
            cell.button1.setTitle("M", for: .normal)
            cell.button2.setTitle("Z", for: .normal)
            genderButton1 = cell.button1
            genderButton2 = cell.button2
            genderButton1!.addTarget(self, action: #selector(button1Tapped), for: .touchUpInside)
            genderButton2?.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)
            
            
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ThirdTypeTableViewCell.self)) as! ThirdTypeTableViewCell
            cell.label.text = "Opis:"
            cell.textView.text = "opis opis"
            descriptionTextView = cell.textView
            return cell
        case 5,6:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FourthTypeTableViewCell.self)) as! FourthTypeTableViewCell
            if(indexPath.row == 5){
                cell.label.text = "Visina:"
                cell.textField.placeholder = "visina"
                cell.label2.text = "50"
                cell.label3.text = "250"
                cell.slider.minimumValue = 50
                cell.slider.maximumValue = 250
                heightTextField = cell.textField
                heightSlider = cell.slider
                cell.slider.addTarget(self, action: #selector(slider1ValueChanged), for: .valueChanged)
                
                
            }   
            else if(indexPath.row == 6){
                cell.label.text = "Tezina:"
                cell.textField.placeholder = "tezina"
                cell.label2.text = "20"
                cell.label3.text = "200"
                cell.slider.minimumValue = 20
                cell.slider.maximumValue = 200
                weightSlider = cell.slider
                weightTextField = cell.textField
                cell.slider.addTarget(self, action: #selector(slider2ValueChanged), for: .valueChanged)
                
  
            }
            return cell;
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FifthTypeTableViewCell.self)) as! FifthTypeTableViewCell
            cell.button.setTitle("Povrdi", for: .normal)
            submitButton = cell.button
            submitButton?.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)

            return cell;
        default:
            return UITableViewCell()
            
        }
    
    }
    
    @objc func submitButtonTapped() {
       user =  User(firstName: firstNameTextField!.text!, lastName: lastNameTextField!.text!, date: dateTextField!.text!, gender: gender!, description: descriptionTextView!.text!, height: heightSlider.value, weight: heightSlider.value)
        
        descriptionTextView?.text = user?.firstName
        
    }
    @objc func button1Tapped(){
        gender = .male
        genderButton1?.setTitleColor(.red, for: .normal)
        genderButton2?.setTitleColor(.black, for: .normal)
    }
    @objc func button2Tapped(){
        gender = .female
        genderButton1?.setTitleColor(.black, for: .normal)
        genderButton2?.setTitleColor(.red, for: .normal)
    }
    @objc func slider1ValueChanged(){
        
        heightTextField.text = String(heightSlider.value)
        
    }
    @objc func slider2ValueChanged(){
        
        weightTextField.text = String(weightSlider.value)
        
    }
}
extension testTableViewController : UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       return string.isDecimal()
     }
    
}

