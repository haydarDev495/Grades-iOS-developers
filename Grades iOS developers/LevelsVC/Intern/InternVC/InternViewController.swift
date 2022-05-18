//
//  InternViewController.swift
//  Grades iOS developers
//
//  Created by Haydar Bekmuradov on 18.05.22.
//

import UIKit

class InternViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let computerScience = ["Computer Science:", "   Data", "   OOP", "   Architecture", "   Network"]
    let iOSPlatform = ["iOS Platform:", "   iOS SDK + 3rd", "   UI", "   Threading", "   Tools", "   Xcode"]
    let memoryManagement = ["Memory Management:", "   Memory"]
    let language = ["Language:", "   Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}

extension InternViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InternTableViewCell", for: indexPath) as! InternTableViewCell
        
        if indexPath.section == 0 {
            cell.internTextLabel.text = computerScience[indexPath.row]
        }
        
        if indexPath.section == 1 {
            cell.internTextLabel.text = iOSPlatform[indexPath.row]
        }
        
        if indexPath.section == 2 {
            cell.internTextLabel.text = memoryManagement[indexPath.row]
        }
        
        if indexPath.section == 3  {
            cell.internTextLabel.text = language[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return computerScience.count
        } else if section == 1 {
            return iOSPlatform.count
        } else {
            return language.count
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
}
