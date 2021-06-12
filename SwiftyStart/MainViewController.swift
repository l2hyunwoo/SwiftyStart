//
//  MainViewController.swift
//  SwiftyStart
//
//  Created by Hyun Woo Lee on 2021/06/13.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var btnMain: UIView!
    @IBOutlet weak var messageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func floatModal(_ sender: Any) {
        guard let modalViewController = self.storyboard?.instantiateViewController(identifier: "ModalViewController") as? ModalViewController
        else {
            return
        }
        
        // modalTransitionStyle
        // coverVertical, crossDissolve
        
        // modalPresentationStyle
        // automatic, fullScreen, overCurrentContext
        
        modalViewController.modalTransitionStyle = .coverVertical
        
        // Modal 형식으로 새 ViewController 가 띄워짐
                self.present(modalViewController, animated: true, completion: nil)
        
        
    }
    
    @IBAction func navigateToOther(_ sender: Any) {
        guard let navigationViewController = self.storyboard?.instantiateViewController(identifier: "NavigationViewController") as? NavigationViewController else { return }
        
        navigationViewController.message = messageTextField.text
        
        // NavigationController
        self.navigationController?
            .pushViewController(navigationViewController, animated: true)
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
