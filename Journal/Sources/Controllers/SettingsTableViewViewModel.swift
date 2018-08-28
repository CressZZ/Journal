//
//  SettingsTableViewViewModel.swift
//  Journal
//
<<<<<<< HEAD
//  Created by JinSeo Yoon on 2018. 8. 25..
=======
//  Created by 윤진서 on 2018. 8. 23..
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import UIKit

<<<<<<< HEAD
struct SettingItemSectionModel {
    let title: String
    let cellModels: [SettingOptionCellModel]
}

struct SettingOptionCellModel {
    let title: String
    let font: UIFont
    let isChecked: Bool
=======
struct SettingTableViewCellViewModel {
    let title: String
    let titleFont: UIFont
    let isChecked: Bool
}

struct SettingSectionViewModel {
    let title: String
    let cellModels: [SettingTableViewCellViewModel]
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
}

class SettingsTableViewViewModel {
    let environment: Environment
    
<<<<<<< HEAD
    init(environment: Environment) {
        self.environment = environment
    }
    
    var sectionModels: [SettingItemSectionModel] {
        let now = environment.now()
        return environment.settings.sectionModels(now: now)
    }
    
    func selectOption(for indexPath: IndexPath) {
        switch indexPath.section {
        case 0: // 날짜 포맷을 변경했음
            let newOption = DateFormatOption.all[indexPath.row]
            environment.settings.dateFormatOption = newOption
            
        case 1: // 폰트 크기를 변경했음
            let newOption = FontSizeOption.all[indexPath.row]
            environment.settings.fontSizeOption = newOption
            
=======
    private let now: Date
    
    var sectionModels: [SettingSectionViewModel] {
        return environment.settings.sectionModels(with: now)
    }
    
    init(environment: Environment) {
        self.environment = environment
        self.now = environment.now()
    }
    
    func selectOption(at indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            environment.settings.dateFormat = DateFormatOption.all[indexPath.row]
        case 1:
            environment.settings.fontSize = FontSizeOption.all[indexPath.row]
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        default:
            break
        }
    }
}

extension Settings {
<<<<<<< HEAD
    func sectionModels(now: Date) -> [SettingItemSectionModel] {
        return [
            SettingItemSectionModel(
                title: DateFormatOption.name, 
                cellModels: DateFormatOption.all.map { option in
                    SettingOptionCellModel(
                        title: DateFormatter.formatter(with: option.rawValue).string(from: now), 
                        font: UIFont.systemFont(ofSize: UIFont.systemFontSize), 
                        isChecked: option == dateFormatOption
                    )
                }
            ),
            SettingItemSectionModel(
                title: FontSizeOption.name, 
                cellModels: FontSizeOption.all.map { option in
                    SettingOptionCellModel(
                        title: "\(option)", 
                        font: UIFont.systemFont(ofSize: option.rawValue), 
                        isChecked: option == fontSizeOption
=======
    func sectionModels(with now: Date) -> [SettingSectionViewModel] {
        return [
            SettingSectionViewModel(
                title: DateFormatOption.name,
                cellModels: DateFormatOption.all.map { option in
                    SettingTableViewCellViewModel(
                        title: DateFormatter.formatter(with: option.rawValue).string(from: now),
                        titleFont: UIFont.systemFont(ofSize: UIFont.systemFontSize),
                        isChecked: option == dateFormat
                    )
                }
            ),
            SettingSectionViewModel(
                title: FontSizeOption.name,
                cellModels: FontSizeOption.all.map { option in
                    SettingTableViewCellViewModel(
                        title: option.description,
                        titleFont: UIFont.systemFont(ofSize: option.rawValue),
                        isChecked: option == fontSize
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
                    )
                }
            )
        ]
    }
}
