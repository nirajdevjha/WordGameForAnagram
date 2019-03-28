//
//  ViewController.swift
//  WordGameForAnagram
//
//  Created by Niraj Jha on 28/03/19.
//  Copyright © 2019 Niraj Jha. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var allWords = [String]()
    var usedWords = [String]()

    //MARK:- Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                allWords = startWords.components(separatedBy: "\n")
            }
        }
        
        if allWords.isEmpty {
            allWords = ["silkworm"]
        }
        
        startGame()
    }
    
    //MARK:- Private
    
    func startGame() {
        title = allWords.randomElement()
        usedWords.removeAll(keepingCapacity: true)
        tableView.reloadData()
    }


}

