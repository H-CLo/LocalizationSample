//
//  LocalizationTableViewController.swift
//  LocalizationSample
//
//  Created by HungCLo on 9/28/16.
//  Copyright © 2016 HungCLo. All rights reserved.
//

import UIKit

class LocalizationTableViewController: UITableViewController {
    
    /* The below is the example for localization */
    var sectionTitle: [String] = ["Country", "Fruit"]
    var country: [String]      = ["Taiwan", "American", "Australia"]
    var fruits: [String]       = ["Apple", "Lemon", "Banana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionTitle.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return country.count
    }

    /* Set row title with tableview delegate */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = country[indexPath.row]
            cell.textLabel?.text = country[indexPath.row].localized
        } else if indexPath.section == 1 {
            cell.textLabel?.text = fruits[indexPath.row]
            cell.textLabel?.text = fruits[indexPath.row].localized
        }

        return cell
    }
    
    /* Set section tiltle with tableview delegate */
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sectionTitle[section] = sectionTitle[section].localized
        return sectionTitle[section]
    }

}
