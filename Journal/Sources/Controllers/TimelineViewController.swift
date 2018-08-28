//
//  TimelineViewController.swift
//  Journal
//
<<<<<<< HEAD
//  Created by JinSeo Yoon on 2018. 8. 18..
=======
//  Created by 윤진서 on 2018. 8. 11..
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {
    @IBOutlet weak var tableview: UITableView!
    
<<<<<<< HEAD
    var viewModel: TimelineViewViewModel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        switch identifier {
        case "addEntry":
            let entryVC = segue.destination as? EntryViewController
            entryVC?.viewModel = viewModel.newEntryViewViewModel
            
        case "showEntry":
            if 
                let entryVC = segue.destination as? EntryViewController,
                let selectedIndexPath = tableview.indexPathForSelectedRow {
                entryVC.viewModel = viewModel.entryViewViewModel(for: selectedIndexPath) 
            }
        
        case "showSetting":
            if 
                let settingsVC = segue.destination as? SettingsTableViewController {
                 settingsVC.viewModel = viewModel.settingsViewModel 
            }
        
=======
    var viewModel: TimelineViewControllerModel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case .some("addEntry"):
            if let vc = segue.destination as? EntryViewController {
                vc.viewModel = viewModel.newEntryViewViewModel()
                vc.delegate = self
            }
            
        case .some("showEntry"):
            if
                let vc = segue.destination as? EntryViewController,
                let selectedIP = tableview.indexPathForSelectedRow {
                vc.viewModel = viewModel.entryViewModel(for: selectedIP)
                vc.delegate = self
            }
            
        case .some("showSetting"):
            if
                let vc = segue.destination as? SettingsTableViewController {
                vc.viewModel = viewModel.settingsViewModel
            }
            
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< HEAD
        title = "Journal"
=======
        title = viewModel.title
        tableview.dataSource = self
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        tableview.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
<<<<<<< HEAD
                
=======
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        tableview.reloadData()
    }
}

<<<<<<< HEAD
extension TimelineViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.title(for: section)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section) 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableview.dequeueReusableCell(withIdentifier: "EntryTableViewCell", for: indexPath) as! EntryTableViewCell 
        tableViewCell.viewModel = viewModel.entryTableViewCellViewModel(for: indexPath)
        return tableViewCell
=======
extension TimelineViewController: EntryViewControllerDelegate {
    func didRemoveEntry(_ entry: Entry) {
        navigationController?.popViewController(animated: true)
    }
}

extension TimelineViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfDates
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.headerTitle(of: section)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems(of: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "EntryCell", for: indexPath) as! EntryTableViewCell
        cell.viewModel = viewModel.entryTableViewCellModel(for: indexPath)
        return cell
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
    }
}

extension TimelineViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .normal, title:  nil) { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
<<<<<<< HEAD
            
            let isLastRowInSection = self.viewModel.numberOfRows(in: indexPath.section) == 1
            self.viewModel.removeEntry(at: indexPath)
            
            UIView.animate(withDuration: 0.3) {
                
                tableView.beginUpdates()
                
                if isLastRowInSection {
                    
                    tableView.deleteSections(IndexSet.init(integer: indexPath.section), with: .automatic)
                    
                } else {
                    tableView.deleteRows(at: [indexPath], with: .automatic)
                }
                
=======
            let isLastEntryInSection = self.viewModel.numberOfItems(of: indexPath.section) == 1
            self.viewModel.removeEntry(at: indexPath)
            
            UIView.animate(withDuration: 0.3) {
                tableView.beginUpdates()
                if isLastEntryInSection {
                    tableView.deleteSections(IndexSet.init(integer: indexPath.section), with: .automatic)
                } else {
                    tableView.deleteRows(at: [indexPath], with: .automatic)
                }
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
                tableView.endUpdates()
            }
            
            success(true)
        }
        
        deleteAction.image = #imageLiteral(resourceName: "baseline_delete_white_24pt")
        deleteAction.backgroundColor = UIColor.gradientEnd
        
<<<<<<< HEAD
        return UISwipeActionsConfiguration(actions: 
            [deleteAction]
        )
=======
        return UISwipeActionsConfiguration(actions: [deleteAction])
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
    }
}
