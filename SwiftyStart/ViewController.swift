//
//  ViewController.swift
//  SwiftyStart
//
//  Created by Hyun Woo Lee on 2021/06/13.
//

/*
 iOS ViewController LifeCycle
 - init
 - loadView
 - viewDidLoad
 - onCreate
 - viewWillAppear
 - 뷰가 계층에 추가되고 화면에 표시되기 직전
 - 화면이 반복적으로 나타날때마다 수행하는 작업
 - viewDidAppear
 - 뷰가 계층에 추가되어 화면이 표시되면 호출
 - 뷰 표현시 추가 작업
 - viewWillDisappear
 - 뷰가 계층에서 사라지기 직전
 - 뷰가 생성된 뒤 발생된 변화를 이전상태로(Snackbar Retry 정도?)
 - viewDidDisappear
 - 뷰가 계층에서 사라진 후
 - 시간 오래걸리는 작업은 X
 - viewDidUnload
 **/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.clearButtonMode = .whileEditing
        nameTextField.placeholder = "이름"
        nameTextField.keyboardType = .default
        
        phoneNumberTextField.clearButtonMode = .whileEditing
        phoneNumberTextField.placeholder = "전번"
        phoneNumberTextField.keyboardType = .phonePad
    }

    @IBAction func showUserInfo(_ sender: Any) {
        let userName = nameTextField.text
        let userPhoneNumber = phoneNumberTextField.text

        if (userName?.isEmpty)! || (userPhoneNumber?.isEmpty)! {
            infoLabel.text = "어떠한 정보도 입력되지 않았습니다."
        } else {
            infoLabel.text = "\(userName!)의 번호는 \(userPhoneNumber!)입니다."
        }
    }
}
