//
//  WebPageViewController.swift
//  UCSDNEWS
//
//  Created by user150601 on 5/23/19.
//

import UIKit
import WebKit

class WebPageViewController: UIViewController {

    
    var url: String!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let webPage = URL(string: url)!
        webView.load(URLRequest(url: webPage))
        // Do any additional setup after loading the view.
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
