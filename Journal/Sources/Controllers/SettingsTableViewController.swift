//
//  SettingsTableViewController.swift
//  Journal
//
<<<<<<< HEAD
//  Created by JinSeo Yoon on 2018. 8. 25..
=======
//  Created by 윤진서 on 2018. 8. 20..
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    var viewModel: SettingsTableViewViewModel!
    
<<<<<<< HEAD
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
=======
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.selectOption(at: indexPath)
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.sectionModels.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.sectionModels[section].title
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.sectionModels[section].cellModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
<<<<<<< HEAD
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingItemCell", for: indexPath)
        
        let cellModel = viewModel.sectionModels[indexPath.section].cellModels[indexPath.row]
        cell.textLabel?.text = cellModel.title
        cell.textLabel?.font = cellModel.font
        cell.accessoryType = cellModel.isChecked 
            ? .checkmark
            : .none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.selectOption(for: indexPath)
        tableView.reloadData()
    }
=======
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath)
        let cellModel = viewModel.sectionModels[indexPath.section].cellModels[indexPath.row]
        cell.textLabel?.text = cellModel.title
        cell.textLabel?.font = cellModel.titleFont
        cell.accessoryType = cellModel.isChecked ? .checkmark : .none
        return cell
    }
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
}
