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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newsPicker = UIPickerView()
        
        newsTextField.inputView = newsPicker
        newsPicker.delegate = self
        newsPicker.dataSource = self

        // Do any additional setup after loading the view.
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
        return newsSources[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.newsTextField.text = newsSources[row]
        
        
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
