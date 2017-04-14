//
//  LoginViewController.swift
//  SimpleTwitterClient
//
//  Created by Curtis Wilcox on 4/12/17.
//  Copyright © 2017 DevFountain LLC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var user: User!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTap(_ sender: Any) {
        TwitterClient.sharedInstance.authTwitterClient(sender: self) {
            self.performSegue(withIdentifier: "ShowTweets", sender: self)
        }

//        User.getCurrentAccount { (user: User?, error: Error?) in
//            self.user = user
//            print("User: \(self.user.name!)")
//        }
//
//        Tweet.getHomeTimeline { (tweets: [Tweet]?, error: Error?) in
//            self.tweets = tweets
//            for tweet in self.tweets {
//                print("Tweet: \(tweet.text!)")
//            }
//        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
