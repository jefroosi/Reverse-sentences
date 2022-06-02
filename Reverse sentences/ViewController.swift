//
//  ViewController.swift
//  Reverse sentences
//
//  Created by Елизавета Ефросинина on 13.02.2022.
//

import UIKit

class ViewController: UIViewController {
    var viewModel = MainViewModel()
    @IBOutlet weak var reverseField: UITextField!
    @IBOutlet weak var reverseButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad() }

    @IBAction func reverseButtonPressed(_ sender: UIButton) {
        guard let text = reverseField.text else { return }
        let result = viewModel.reverseWords(sentence: text)
        answerLabel.text = result
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
              sender.alpha = 1.0
        reverseField.clearButtonMode = .whileEditing
    }
}
}
