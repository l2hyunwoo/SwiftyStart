//
//  NavigationViewController.swift
//  SwiftyStart
//
//  Created by Hyun Woo Lee on 2021/06/13.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var message: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
    }
    
    func setLabel() {
        if let message = self.message {
            messageLabel.text = message
        }
    }

    @IBAction func backToMain(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
