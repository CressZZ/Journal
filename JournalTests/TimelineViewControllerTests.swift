//
//  TimelineViewControllerTests.swift
//  JournalTests
//
<<<<<<< HEAD
//  Created by JinSeo Yoon on 2018. 8. 18..
=======
//  Created by 윤진서 on 2018. 8. 11..
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import XCTest
import Nimble
<<<<<<< HEAD

@testable import Journal

class TimelineViewControllerTests: XCTestCase {
}
=======
@testable import Journal

class TimelineViewControllerTests: XCTestCase {
    var vc: TimelineViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(withIdentifier: "TimelineViewController") as! TimelineViewController
        _ = vc.view // loadView()와 viewDidLoad()를 강제로 호출
    }
}

>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
