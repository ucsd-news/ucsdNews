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
        
        cell.webImageView.layer.cornerRadius = 20
        
        let article = articles[indexPath.row]
        let title = article["title"] as! String
        let description = article["description"] as? String
        let urlImage = article["urlToImage"] as? String
        
        
        cell.webTitle!.text = title
        cell.webSummary!.text = description
        
        if (urlImage != nil) {
            let imageURL = URL(string: urlImage!)!
        cell.webImageView.af_setImage(withURL: imageURL)
        }
        return cell
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let cell = sender as! UITableViewCell
        let indexPath = newsTableView.indexPath(for: cell)!
        let article = articles[indexPath.row]
        let url = article["url"] as! String
        let webViewController = segue.destination as! WebPageViewController
        webViewController.url = url
        newsTableView.deselectRow(at: indexPath, animated: true)
        
      
    }
    

}
