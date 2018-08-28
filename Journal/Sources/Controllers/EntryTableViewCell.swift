//
//  EntryTableViewCell.swift
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

<<<<<<< HEAD
class EntryTableViewCellViewModel {
    let environment: Environment
    let entry: Entry
    
    init(entry: Entry, environment: Environment) {
        self.entry = entry
        self.environment = environment
    }
    
    var entryText: String { return entry.text }
    var entryTextFont: UIFont { 
        return UIFont.systemFont(ofSize: environment.settings.fontSizeOption.rawValue)
    }
    var timeText: String { return DateFormatter.entryTimeFormatter.string(from: entry.createdAt) }
    var ampmText: String { return DateFormatter.ampmFormatter.string(from: entry.createdAt) }
} 
=======
struct EntryTableViewCellModel {
    let entry: Entry
    let environment: Environment
    
    var entryText: String { return entry.text }
    var entryTextFont: UIFont { return UIFont.systemFont(ofSize: environment.settings.fontSize.rawValue) }
    var createdDateText: String { return DateFormatter.timeFormatter.string(from: entry.createdAt) }
    var ampmText: String { return DateFormatter.ampmFormatter.string(from: entry.createdAt) }
}
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581

class EntryTableViewCell: UITableViewCell {
    @IBOutlet weak var entryTextLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var ampmLabel: UILabel!
    
<<<<<<< HEAD
    var viewModel: EntryTableViewCellViewModel? {
        didSet {
            guard let vm = viewModel else { return }
            entryTextLabel.text = vm.entryText
            entryTextLabel.font = vm.entryTextFont
            timeLabel.text = vm.timeText
            ampmLabel.text = vm.ampmText
=======
    var viewModel: EntryTableViewCellModel? {
        didSet {
            entryTextLabel.text = viewModel?.entryText
            entryTextLabel.font = viewModel?.entryTextFont
            timeLabel.text = viewModel?.createdDateText
            ampmLabel.text = viewModel?.ampmText
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        }
    }
}
