//
//  vc5.swift
//  E-Commerce
//
//  Created by Mohammad Abd El-Fattah Mohammd on 25/07/2023.
//

import UIKit

class vc5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func login(_ sender: Any) {
        let vc4 = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "LoginController") as! LoginController
        navigationController?.pushViewController(vc4, animated: true)

    }
    @IBAction func signup(_ sender: Any) {
        let vc4 = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "RegisterController") as! RegisterController
        navigationController?.pushViewController(vc4, animated: true)

    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

