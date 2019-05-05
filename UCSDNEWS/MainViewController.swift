//
//  MainViewController.swift
//  UCSDNEWS
//
//  Created by Donald Truong on 5/4/19.
//

import UIKit

class MainViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
   
    let newsSources = [String](arrayLiteral: "Math", "CSE", "ECE", "MAE")
    
    
    @IBOutlet weak var newsTextField: UITextField!
    @IBOutlet weak var newsPicker: UIPickerView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsTextField.inputView = newsPicker
        newsPicker.delegate = self
        newsPicker.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func searchNewsButton(_ sender: Any) {
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return newsSources.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return newsSources[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.newsTextField.text = newsSources[row]
        self.newsPicker.isHidden = true
    
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == self.newsTextField {
            self.newsPicker.isHidden = false
            //if you don't want the users to se the keyboard type:
            
            textField.endEditing(true)
        }
    }
    
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
