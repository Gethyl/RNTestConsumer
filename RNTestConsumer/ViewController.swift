//
//  ViewController.swift
//  RNTestConsumer
//
//  Created by Gethyl Kurian on 1/12/20.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "Welcome to first app", message: "Thanks for clicking on the button", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Exit", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

    @IBAction func showReactNative(sender: UIButton) {
        NSLog(">>> RN button function called !!!! ")
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!

          let rootView = RCTRootView(
              bundleURL: jsCodeLocation,
              moduleName: "rn-test",
              initialProperties: nil,
              launchOptions: nil
          )
          let vc = UIViewController()
          vc.view = rootView
          self.present(vc, animated: true, completion: nil)
    }
}

