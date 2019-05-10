//
//  MainViewController.swift
//  UCSDNEWS
//
//  Created by Donald Truong on 5/4/19.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var csButton: UIButton!
    @IBOutlet weak var engineeringButton: UIButton!
    @IBOutlet weak var cogsciButton: UIButton!
    @IBOutlet weak var biologyButton: UIButton!
    @IBOutlet weak var chemButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var mathButton: UIButton!
    @IBOutlet weak var healthButton: UIButton!
    @IBOutlet weak var humanitiesButton: UIButton!
    @IBOutlet weak var medButton: UIButton!
    
    override func viewDidLoad() {

        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let button = sender as! UIButton
        let keyword = button.titleLabel!.text
        
        let newsVC = segue.destination as! newsViewController
        newsVC.keyword = keyword
    }
    

}
