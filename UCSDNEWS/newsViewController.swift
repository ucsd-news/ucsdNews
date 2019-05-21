//
//  newsViewController.swift
//  UCSDNEWS
//
//  Created by user150601 on 5/10/19.
//

import UIKit
import AlamofireImage

class newsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  
    
    var keyword: String!
    let UCSDKeyword = "UC+San+Diego+"
    
    var articles = [[String: Any]]()
    
    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print(keyword)
        newsTableView.delegate = self
        newsTableView.dataSource = self
        
        let url = URL(string: "https://newsapi.org/v2/everything?q=" + UCSDKeyword + keyword + "&apiKey=a16776c507fb498e9e86e14e94659d54")!
        
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            // This will run when the network request returns
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                self.articles = dataDictionary["articles"] as! [[String:Any]]
                self.newsTableView.reloadData()
                
                
                // TODO: Get the array of movies
                // TODO: Store the movies in a property to use elsewhere
                // TODO: Reload your table view data
                
            }
        }
        task.resume()
        
    }
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = newsTableView.dequeueReusableCell(withIdentifier: "newsTableCell") as! NewsTableViewCell
        
        let article = articles[indexPath.row]
        let title = article["title"] as! String
        
        let description = article["description"] as! String
        let url = article["url"] as! String
        print(description)
        let urlImage = article["urlToImage"] as? String
        
        
        cell.webTitle!.text = title
        cell.webSummary!.text = description
        cell.hyperlinkLabel!.text = url
        
        if (urlImage != nil) {
            let imageURL = URL(string: urlImage!)!
        cell.webImageView.af_setImage(withURL: imageURL)
        }
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
