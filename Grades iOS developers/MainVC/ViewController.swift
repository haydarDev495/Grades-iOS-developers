//
//  ViewController.swift
//  Grades iOS developers
//
//  Created by Haydar Bekmuradov on 18.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let levels = ["Intern", "Junior 1", "Junior 2", "Junior 3", "Middle 1", "Middle 2", "Middle 3", "Senior"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "LEVELS"
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return levels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.levelsLabelText.text = levels[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 && indexPath.row == 0 {
            let vc1 = UIStoryboard(name: "InternVC", bundle: nil).instantiateViewController(withIdentifier: "InternViewController") as! InternViewController
            navigationController?.pushViewController(vc1, animated: true)
        }
    }
}
