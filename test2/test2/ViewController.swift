//
//  ViewController.swift
//  test2
//
//  Created by Katarina Veljkovic on 01/07/2020.
//  Copyright © 2020 Katarina Veljkovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let visinaSlider = UISlider()
    let visinaTextField = UITextField()
    let potvrdiButton = UIButton()
    let tezinaTextField = UITextField()
    let tezinaSlider = UISlider()
    let mButton = UIButton();
    let zButton = UIButton();
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()


        let mainStack = UIStackView()
        view.addSubview(mainStack)
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        mainStack.axis = .vertical
        mainStack.alignment = .fill
        mainStack.distribution = .fill
        mainStack.spacing = 20
        
        mainStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        mainStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        mainStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true;
 //ime stack
        let imeStack = UIStackView()
        mainStack.addArrangedSubview(imeStack)
        imeStack.translatesAutoresizingMaskIntoConstraints = false
        imeStack.axis = .horizontal
        imeStack.alignment = .fill
        imeStack.distribution = .fill
        
        let imeLabel = UILabel()
        imeStack.addArrangedSubview(imeLabel)
        imeLabel.topAnchor.constraint(equalTo: imeStack.topAnchor ).isActive = true
        imeLabel.bottomAnchor.constraint(equalTo: imeStack.bottomAnchor).isActive = true
        imeLabel.leadingAnchor.constraint(equalTo: imeStack.leadingAnchor).isActive = true
    
        imeLabel.text = "Ime:"
        
        let imeTextField = UITextField()
        imeStack.addArrangedSubview(imeTextField)
        imeTextField.translatesAutoresizingMaskIntoConstraints = false
        imeTextField.topAnchor.constraint(equalTo: imeStack.topAnchor ).isActive = true
        imeTextField.bottomAnchor.constraint(equalTo: imeStack.bottomAnchor).isActive = true
        imeTextField.trailingAnchor.constraint(equalTo: imeStack.trailingAnchor).isActive = true
        imeTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier:0.4).isActive = true
        imeTextField.placeholder = "ime"
  //prezime stack
        let prezimeStack = UIStackView()
        mainStack.addArrangedSubview(prezimeStack)
        prezimeStack.translatesAutoresizingMaskIntoConstraints = false
        prezimeStack.axis = .horizontal
        prezimeStack.alignment = .fill
        prezimeStack.distribution = .fill
        
        let prezimeLabel = UILabel();
        prezimeStack.addArrangedSubview(prezimeLabel)
        prezimeLabel.topAnchor.constraint(equalTo: prezimeStack.topAnchor ).isActive = true
        prezimeLabel.bottomAnchor.constraint(equalTo: prezimeStack.bottomAnchor).isActive = true
        prezimeLabel.leadingAnchor.constraint(equalTo: prezimeStack.leadingAnchor).isActive = true
        prezimeLabel.text = "Prezime:"
   
        let prezimeTextField = UITextField()
        
        prezimeStack.addArrangedSubview(prezimeTextField)
        prezimeTextField.translatesAutoresizingMaskIntoConstraints = false
        prezimeTextField.topAnchor.constraint(equalTo: prezimeStack.topAnchor ).isActive = true
        prezimeTextField.bottomAnchor.constraint(equalTo: prezimeStack.bottomAnchor).isActive = true
        prezimeTextField.trailingAnchor.constraint(equalTo: prezimeStack.trailingAnchor).isActive = true
        prezimeTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier:0.4).isActive = true
        prezimeTextField.placeholder = "prezime"
   //datum stack
        
        let datumStack = UIStackView()
        mainStack.addArrangedSubview(datumStack)
        datumStack.translatesAutoresizingMaskIntoConstraints = false
        datumStack.axis = .horizontal
        datumStack.alignment = .fill
        datumStack.distribution = .fill
        
        let datumLabel = UILabel();
             datumStack.addArrangedSubview(datumLabel)
             datumLabel.topAnchor.constraint(equalTo: datumStack.topAnchor ).isActive = true
             datumLabel.bottomAnchor.constraint(equalTo: datumStack.bottomAnchor).isActive = true
             datumLabel.leadingAnchor.constraint(equalTo: datumStack.leadingAnchor).isActive = true
             datumLabel.text = "Datum:"
        
        let datumTextField = UITextField()
             
             datumStack.addArrangedSubview(datumTextField)
             datumTextField.translatesAutoresizingMaskIntoConstraints = false
             datumTextField.topAnchor.constraint(equalTo: datumStack.topAnchor ).isActive = true
             datumTextField.bottomAnchor.constraint(equalTo: datumStack.bottomAnchor).isActive = true
             datumTextField.trailingAnchor.constraint(equalTo: datumStack.trailingAnchor).isActive = true
             datumTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier:0.4).isActive = true
             datumTextField.placeholder = "datum"
        
    //pol stack
        let polStack = UIStackView()
        mainStack.addArrangedSubview(polStack)
        polStack.translatesAutoresizingMaskIntoConstraints = false
        polStack.axis = .horizontal
        polStack.alignment = .fill
        polStack.distribution = .fill
        
        let polLabel = UILabel();
             polStack.addArrangedSubview(polLabel)
        polLabel.translatesAutoresizingMaskIntoConstraints = false
             polLabel.topAnchor.constraint(equalTo: polStack.topAnchor ).isActive = true
             polLabel.bottomAnchor.constraint(equalTo: polStack.bottomAnchor).isActive = true
             polLabel.leadingAnchor.constraint(equalTo: polStack.leadingAnchor).isActive = true
             polLabel.text = "Pol:"
        
        
        let mzStack = UIStackView()
        polStack.addArrangedSubview(mzStack)
        mzStack.translatesAutoresizingMaskIntoConstraints = false
        mzStack.axis = .horizontal
        mzStack.alignment = .fill
        mzStack.distribution = .fill
        mzStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier:0.4).isActive = true
        mzStack.spacing = 20
        
        
        
        mzStack.addArrangedSubview(mButton)
        mButton.translatesAutoresizingMaskIntoConstraints = false
        mButton.topAnchor.constraint(equalTo: mzStack.topAnchor ).isActive = true
        mButton.bottomAnchor.constraint(equalTo: mzStack.bottomAnchor).isActive = true
        mButton.leadingAnchor.constraint(equalTo: mzStack.leadingAnchor).isActive = true
        mButton.setTitle("M", for:.normal)
        mButton.setTitleColor(.black, for: .normal)
        mButton.addTarget(self, action: #selector(isClickedButtonM), for: .touchUpInside)
        
        
        
        mzStack.addArrangedSubview(zButton)
        zButton.translatesAutoresizingMaskIntoConstraints = false
        zButton.topAnchor.constraint(equalTo: mzStack.topAnchor ).isActive = true
        zButton.bottomAnchor.constraint(equalTo: mzStack.bottomAnchor).isActive = true
        zButton.trailingAnchor.constraint(equalTo: mzStack.trailingAnchor).isActive = true
        zButton.setTitle("Z", for:.normal)
        zButton.setTitleColor(.black, for: .normal)
        mButton.widthAnchor.constraint(equalTo: zButton.widthAnchor).isActive = true
        zButton.addTarget(self, action: #selector(isClickedButtonZ), for: .touchUpInside)
        
//Opis Stack
        let opisStack = UIStackView()
        mainStack.addArrangedSubview(opisStack)
        opisStack.translatesAutoresizingMaskIntoConstraints = false
        opisStack.axis = .vertical
        opisStack.alignment = .fill
        opisStack.distribution = .fill
        
        
        let opisLabel = UILabel()
             opisStack.addArrangedSubview(opisLabel)
        opisLabel.translatesAutoresizingMaskIntoConstraints = false
             
             opisLabel.text = "Opis:"
        opisLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        let opisTextView = UITextView()
        opisStack.addArrangedSubview(opisTextView)
        opisTextView.translatesAutoresizingMaskIntoConstraints = false
        
        opisTextView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        opisTextView.text = "das"
        
//visina stack
        let visinaStack = UIStackView()
        mainStack.addArrangedSubview(visinaStack)
        visinaStack.translatesAutoresizingMaskIntoConstraints = false
        visinaStack.axis = .vertical
        visinaStack.alignment = .fill
        visinaStack.distribution = .fill
        
        let visina2Stack = UIStackView()
        visinaStack.addArrangedSubview(visina2Stack)
        visina2Stack.translatesAutoresizingMaskIntoConstraints = false
        visina2Stack.axis = .horizontal
        visina2Stack.alignment = .fill
        visina2Stack.distribution = .fill
        
        let visina3Stack = UIStackView()
        visinaStack.addArrangedSubview(visina3Stack)
        visina3Stack.translatesAutoresizingMaskIntoConstraints = false
        visina3Stack.axis = .horizontal
        visina3Stack.alignment = .fill
        visina3Stack.distribution = .fill
        
        
        let visinaLabel = UILabel()
             visina2Stack.addArrangedSubview(visinaLabel)
        visinaLabel.translatesAutoresizingMaskIntoConstraints = false
        visinaLabel.text = "Visina:"
        visinaLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        visina2Stack.addArrangedSubview(visinaTextField)
        visinaTextField.translatesAutoresizingMaskIntoConstraints = false
        visinaTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier:0.4).isActive = true
        visinaTextField.placeholder = "visina"
        visinaTextField.delegate = self
        
        let visina50Label = UILabel()
             visina3Stack.addArrangedSubview(visina50Label)
        visina50Label.translatesAutoresizingMaskIntoConstraints = false
        visina50Label.text = "50"
        visina50Label.heightAnchor.constraint(equalToConstant: 25).isActive = true
        let visina250Label = UILabel()
             visina3Stack.addArrangedSubview(visina250Label)
        visina250Label.translatesAutoresizingMaskIntoConstraints = false
        visina250Label.text = "250"
        visina250Label.heightAnchor.constraint(equalToConstant: 25).isActive = true
        visina250Label.textAlignment = .right
        
        
        
        visinaStack.addArrangedSubview(visinaSlider)
        visinaSlider.translatesAutoresizingMaskIntoConstraints = false
        visinaSlider.widthAnchor.constraint(equalTo: mainStack.widthAnchor).isActive = true
        visinaSlider.minimumValue = 50
        visinaSlider.maximumValue = 250
        
        visinaSlider.addTarget(self, action: #selector(visinaSliderValueChanged), for: .editingChanged)
        visinaTextField.addTarget(self, action: #selector(visinaTextViewValueChanged), for: .editingChanged)

        
//tezina stack
        let tezinaStack = UIStackView()
        mainStack.addArrangedSubview(tezinaStack)
        tezinaStack.translatesAutoresizingMaskIntoConstraints = false
        tezinaStack.axis = .vertical
        tezinaStack.alignment = .fill
        tezinaStack.distribution = .fill
        
        let tezina2Stack = UIStackView()
        tezinaStack.addArrangedSubview(tezina2Stack)
        tezina2Stack.translatesAutoresizingMaskIntoConstraints = false
        tezina2Stack.axis = .horizontal
        tezina2Stack.alignment = .fill
        tezina2Stack.distribution = .fill
        
        let tezina3Stack = UIStackView()
        tezinaStack.addArrangedSubview(tezina3Stack)
        tezina3Stack.translatesAutoresizingMaskIntoConstraints = false
        tezina3Stack.axis = .horizontal
        tezina3Stack.alignment = .fill
        tezina3Stack.distribution = .fill
        
        
        let tezinaLabel = UILabel()
             tezina2Stack.addArrangedSubview(tezinaLabel)
        tezinaLabel.translatesAutoresizingMaskIntoConstraints = false
        tezinaLabel.text = "Tezina:"
        tezinaLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        tezina2Stack.addArrangedSubview(tezinaTextField)
        tezinaTextField.translatesAutoresizingMaskIntoConstraints = false
        tezinaTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier:0.4).isActive = true
        tezinaTextField.placeholder = "tezina"
        
        let tezina20Label = UILabel()
             tezina3Stack.addArrangedSubview(tezina20Label)
        tezina20Label.translatesAutoresizingMaskIntoConstraints = false
        tezina20Label.text = "20"
        tezina20Label.heightAnchor.constraint(equalToConstant: 25).isActive = true
        let tezina200Label = UILabel()
             tezina3Stack.addArrangedSubview(tezina200Label)
        tezina200Label.translatesAutoresizingMaskIntoConstraints = false
        tezina200Label.text = "200"
        tezina200Label.heightAnchor.constraint(equalToConstant: 25).isActive = true
        tezina200Label.textAlignment = .right
        
        
        tezinaStack.addArrangedSubview(tezinaSlider)
        tezinaSlider.translatesAutoresizingMaskIntoConstraints = false
        tezinaSlider.widthAnchor.constraint(equalTo: mainStack.widthAnchor).isActive = true
        tezinaSlider.minimumValue = 20
        tezinaSlider.maximumValue = 200
        
        tezinaSlider.addTarget(self, action: #selector(tezinaSliderValueChanged), for: .valueChanged)
        tezinaTextField.addTarget(self, action: #selector(tezinaTextViewValueChanged), for: .valueChanged)
        
//Potvrdi stack
        let potvrdiStack = UIStackView()
        mainStack.addArrangedSubview(potvrdiStack)
        potvrdiStack.translatesAutoresizingMaskIntoConstraints = false
        potvrdiStack.axis = .horizontal
        potvrdiStack.alignment = .fill
        potvrdiStack.distribution = .fill
        
        
        potvrdiStack.addArrangedSubview(potvrdiButton)
        potvrdiButton.translatesAutoresizingMaskIntoConstraints = false
        potvrdiButton.setTitle("Potvrdi", for:.normal)
        potvrdiButton.setTitleColor(.black, for: .normal)
        
        
    }
    
    @objc func visinaSliderValueChanged(){
        visinaTextField.text = String(visinaSlider.value)
    }
    
    @objc func tezinaSliderValueChanged(){
        tezinaTextField.text = String(tezinaSlider.value)
    }

    @objc func isClickedButtonM(){
            zButton.isSelected = false
            mButton.isSelected = true
        mButton.backgroundColor = .systemBlue
            zButton.backgroundColor = .none
    }
    @objc func isClickedButtonZ(){
            zButton.isSelected = true
            mButton.isSelected = false
            zButton.backgroundColor = .systemBlue
            mButton.backgroundColor = .none
    }
    @objc func tezinaTextViewValueChanged(){
        if let tezinaValue = Float(tezinaTextField.text!){
            tezinaSlider.value = tezinaValue
        }
        
    }
    @objc func visinaTextViewValueChanged(){
        
        
        if let visinaValue = Float(visinaTextField.text!){

            visinaSlider.value = visinaValue
        }
    }
}

extension ViewController : UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       return string.isDecimal()
     }
    
}
extension String {
  func isDecimal() -> Bool {
    let alphaNumeric = CharacterSet.decimalDigits
    return components(separatedBy: alphaNumeric).joined(separator: "").count == 0
  }
}


