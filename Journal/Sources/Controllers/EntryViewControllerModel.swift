//
//  EntryViewControllerModel.swift
//  Journal
//
//  Created by 윤진서 on 2018. 8. 16..
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import UIKit

class EntryViewControllerModel {
    private let environment: Environment
    private var entry: Entry?
    
    init(environment: Environment, entry: Entry? = nil) {
        self.environment = environment
        self.entry = entry
    }
    
    var hasEntry: Bool { return entry != nil }
    private(set) var isEditing: Bool = false
    
    var title: String {
        let date = entry?.createdAt ?? Date()
        return DateFormatter.entryDateFormatter.string(from: date)
    }
    
    var textViewText: String? { return entry?.text }
    var textViewEditable: Bool { return isEditing }
    
    var buttonImage: UIImage {
        return isEditing ? #imageLiteral(resourceName: "baseline_save_white_24pt") : #imageLiteral(resourceName: "baseline_edit_white_24pt")
    }
    
    var trashIconEnabled: Bool { return hasEntry }
    
    func startEditing() {
        isEditing = true
    }
    
    func completeEditing(with text: String) {
        if let oldEntry = self.entry {
            oldEntry.text = text
            environment.entryRepository.update(oldEntry)
        } else {
            let newEntry: Entry = Entry(text: text)
            environment.entryRepository.add(newEntry)
            entry = newEntry
        }
        isEditing = false
    }
    
    func removeEntry() -> Entry? {
        guard let entryToRemove = entry else { return nil }
        self.environment.entryRepository.remove(entryToRemove)
        self.entry = nil
        return entryToRemove
    }
}
