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
        self.view.backgroundColor = .black
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
        
        cell.backgroundColor = .orange
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = 100
        cell.layer.borderColor = CGColor(red: 0, green: 0, blue: 1, alpha: 2)
        
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
