//
//  newsViewController.swift
//  UCSDNEWS
//
//  Created by user150601 on 5/10/19.
//

import UIKit

class newsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    var keyword: String!
    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        
        newsTableView.delegate = self
        newsTableView.dataSource = self
        
        print(keyword)
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = newsTableView.dequeueReusableCell(withIdentifier: "newsTableCell") as! NewsTableViewCell
        
        return cell
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
