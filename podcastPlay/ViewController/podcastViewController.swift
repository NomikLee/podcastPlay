//
//  podcastViewController.swift
//  podcastPlay
//
//  Created by Pinocchio on 2023/8/11.
//

import UIKit
import SafariServices

class podcastViewController: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func startPodcast(_ sender: Any)
    {
        if let audioURL = URL(string: "https://rss.soundon.fm/rssf/73930beb-4136-4b36-a910-39984335b7bb/feedurl/1e366221-00a6-401e-a6d6-b113cc7d4488/rssFileVip.mp3?timestamp=1691712060725")
        {
            let safariViewController = SFSafariViewController(url: audioURL)
            present(safariViewController, animated: true, completion: nil)
        }
    }
}
