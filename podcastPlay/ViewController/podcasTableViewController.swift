//
//  podcasTableViewController.swift
//  podcastPlay
//
//  Created by Pinocchio on 2023/8/12.
//

import UIKit
import SafariServices

class podcasTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundView = UIImageView(image: UIImage(named: "背景9"))
        tableView.backgroundView?.alpha = 0.5
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return podcastDatas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "podcasTableViewCell", for: indexPath) as! podcasTableViewCell
        
        
        cell.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7)
        cell.layer.borderWidth = 10
        cell.layer.cornerRadius = 240
        cell.layer.borderColor = CGColor(red: 241/255, green: 90/255, blue: 34/255, alpha: 2)
        
        let podcasData = podcastDatas[indexPath.row]
        cell.podcasNameLable.text = podcasData.podcastName
        cell.podcasPeopleNameLable.text = podcasData.podcastPeopleName
        cell.podcasImageView.image = UIImage(named: podcasData.podcastImage)
        cell.podcasImageView.layer.cornerRadius = 30
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let podcasSelect = podcastDatas[indexPath.row]
        if let podcasUrl = URL(string: podcasSelect.podcastWebUrl)
        {
            let safariViewController = SFSafariViewController(url: podcasUrl)
            present(safariViewController, animated: true, completion: nil)
        }
    }

}

#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "podcasTableViewController")
}
