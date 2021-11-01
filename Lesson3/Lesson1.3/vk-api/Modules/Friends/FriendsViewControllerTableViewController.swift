//
//  FriendsViewControllerTableViewController.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/23/21.
//

import UIKit

class FriendsViewController: UITableViewController {
    
    let friendsService = FriendsAPI()
    
    var friends:[FriendDataBase] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        /*friendsService.getFriends2 { [weak self] friends in
            
            guard let self = self else { return }
            
            self?.friends = friends
            self?.tableView.reloadData()
        }*/
        friendsService.getFriends4 { [weak self] friends in
            self?.friends = friends
            self?.tableView.reloadedData()
        }
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let friend = friends[indexPath.row]
        cell.textLabel?.text = friend.fullName
        
        return cell
    }
}
