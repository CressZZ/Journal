//
//  ViewController.swift
//  Journal
//
//  Created by JinSeo Yoon on 2018. 7. 21..
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import UIKit

<<<<<<< HEAD
class EntryViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var button: UIBarButtonItem!
    @IBOutlet weak var removeButton: UIBarButtonItem!
    
    var viewModel: EntryViewViewModel!
=======
protocol EntryViewControllerDelegate: class {
    func didRemoveEntry(_ entry: Entry)
}

class EntryViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var button: UIBarButtonItem!
    @IBOutlet weak var textViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var trashIcon: UIBarButtonItem!
    
    weak var delegate: EntryViewControllerDelegate?
    
    var viewModel: EntryViewControllerModel!
    
    private func updateSubviews() {
        trashIcon.isEnabled = viewModel.trashIconEnabled
        
        button.image = viewModel.buttonImage
        button.target = self
        button.action = viewModel.isEditing ? #selector(saveEntry(_:)) : #selector(editEntry)
        
        textView.isEditable = viewModel.textViewEditable
    }
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< HEAD
        title = viewModel.title
        textView.text = viewModel.textViewText
        textView.font = viewModel.textViewFont
        
        if viewModel.hasEntry == false { 
            viewModel.startEditing() 
        }
        updateSubviews()
                        
        NotificationCenter.default
            .addObserver(self, 
                         selector: #selector(handleKeyboardAppearance(_:)), 
                         name: NSNotification.Name.UIKeyboardWillShow, 
                         object: nil)
        
        NotificationCenter.default
            .addObserver(self, 
                         selector: #selector(handleKeyboardAppearance(_:)), 
                         name: NSNotification.Name.UIKeyboardWillHide, 
                         object: nil)
    }
    
    @objc func handleKeyboardAppearance(_ note: Notification) {
        guard 
            let userInfo = note.userInfo,
            let keyboardFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue),
            let duration = (userInfo[UIKeyboardAnimationDurationUserInfoKey] as? TimeInterval),
            let curve = (userInfo[UIKeyboardAnimationCurveUserInfoKey] as? UInt)
            else { return }
        
        let isKeyboardWillShow: Bool = note.name == Notification.Name.UIKeyboardWillShow 
        let keyboardHeight = isKeyboardWillShow  
            ? keyboardFrame.cgRectValue.height
            : 0
        
        let animationOption = UIViewAnimationOptions.init(rawValue: curve)
        
        UIView.animate(
            withDuration: duration, 
            delay: 0.0, 
            options: animationOption, 
            animations: {
                self.textViewBottomConstraint.constant = -keyboardHeight
                self.view.layoutIfNeeded()
            }, 
            completion: nil
        )
    }
        
=======
        textView.text = viewModel.textViewText
        textView.font = viewModel.textViewFont
        title = viewModel.title
        
        if viewModel.hasEntry == false { viewModel.startEditing() }
        updateSubviews()
        
        registerNotifications()
    }
    
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if viewModel.isEditing { textView.becomeFirstResponder() }
    }
    
<<<<<<< HEAD
    @objc func saveEntry(_ sender: Any) {
        viewModel.completeEditing(with: textView.text)        
=======
    @objc private func saveEntry(_ sender: Any) {
        viewModel.completeEditing(with: textView.text)
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        updateSubviews()
        textView.resignFirstResponder()
    }
    
<<<<<<< HEAD
    @objc func editEntry(_ sender: Any) {
=======
    @objc private func editEntry() {
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        viewModel.startEditing()
        updateSubviews()
        textView.becomeFirstResponder()
    }
    
    @IBAction func removeEntry(_ sender: Any) {
        guard viewModel.hasEntry else { return }
        
<<<<<<< HEAD
        let alertController = UIAlertController(
            title: "현재 일기를 삭제할까요?", 
            message: "이 동작은 되돌릴 수 없습니다", 
            preferredStyle: .actionSheet
        )
        
        let removeAction: UIAlertAction = UIAlertAction(
            title: "삭제", 
            style: .destructive) { (_) in
                guard 
                    let _ = self.viewModel.removeEntry() 
                    else { return }
                // pop
                self.navigationController?.popViewController(animated: true)
        }
        alertController.addAction(removeAction)
        
        let cancelAction: UIAlertAction = UIAlertAction(
            title: "취소", 
            style: .cancel, 
            handler: nil
        )
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }    
    
    fileprivate func updateSubviews() {
        textView.isEditable = viewModel.textViewEditiable
        removeButton.isEnabled = viewModel.removeButtonEnabled
        button.image = viewModel.buttonImage
        button.target = self
        button.action = viewModel.isEditing 
            ? #selector(saveEntry(_:))
            : #selector(editEntry(_:))       
    }
}

=======
        let alertController = UIAlertController.init(title: "일기를 제거하겠습니까?", message: "이 작업은 되돌릴 수 없습니다", preferredStyle: .alert)
        let deleteAction = UIAlertAction(title: "확인", style: .destructive) { (action) in
            guard let removedEntry = self.viewModel.removeEntry() else { return }
            self.delegate?.didRemoveEntry(removedEntry)
        }
        alertController.addAction(deleteAction)
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
}

extension EntryViewController {
    private func registerNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardAppearance(note:)), name: Notification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardAppearance(note:)), name: Notification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc private func handleKeyboardAppearance(note: Notification) {
        guard
            let userInfo = note.userInfo,
            let keyboardFrameValue = userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue,
            let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? TimeInterval,
            let animationCurve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? UInt
            else { return }
        
        let keyboardHeight: CGFloat = note.name == Notification.Name.UIKeyboardWillShow
            ? keyboardFrameValue.cgRectValue.height
            : 0
        let animationOption = UIViewAnimationOptions(rawValue: animationCurve)
        
        UIView.animate(
            withDuration: duration,
            delay: 0.0,
            options: animationOption,
            animations: {
                self.textViewBottomConstraint.constant = -keyboardHeight
                self.view.layoutIfNeeded()
        },
            completion: nil
        )
    }
}
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
