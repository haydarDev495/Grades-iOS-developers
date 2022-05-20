//
//  DataViewController.swift
//  Grades iOS developers
//
//  Created by Haydar Bekmuradov on 19.05.22.
//

import UIKit

class DataViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func collectionsButtonAction(_ sender: Any) {
         guard let url = URL(string: "https://swiftbook.ru/content/languageguide/collection-types/") else { return }
         UIApplication.shared.open(url)
    }
}
