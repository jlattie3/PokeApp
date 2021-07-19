//
//  ViewController.swift
//  PokeApp
//
//  Created by Jacob Lattie on 7/18/21.
//

import UIKit

class ViewController: UIViewController {
    
    let apiClient = BerryAPIClient()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTapButton(_ sender: Any) {
        apiClient.getBerry(withId: 1) { result in
            switch result {
            case .success(let berry):
                print(berry)
            case .failure(let error):
                print(error)
            }
        }
    }
    

}

