//
//  Environment.swift
//  Journal
//
<<<<<<< HEAD
//  Created by JinSeo Yoon on 2018. 8. 18..
=======
//  Created by 윤진서 on 2018. 8. 11..
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import Foundation

class Environment {
    let entryRepository: EntryRepository
    var settings: Settings
    let now: () -> Date
    
    init(
        entryRepository: EntryRepository = InMemoryEntryRepository(),
<<<<<<< HEAD
        settings: Settings = InMemorySettings(),
=======
        settings: Settings = UserDefaults.standard,
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        now: @escaping () -> Date = Date.init
        ) {
        self.entryRepository = entryRepository
        self.settings = settings
        self.now = now
    }
}
