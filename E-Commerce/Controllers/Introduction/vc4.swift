//
//  vc4.swift
//  E-Commerce
//
//  Created by Mohammad Abd El-Fattah Mohammd on 24/07/2023.
//

import UIKit

class vc4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    
    @IBAction func b4(_ sender: Any) {
        let vc3 = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "vc5") as! vc5
        navigationController?.pushViewController(vc3, animated: true)

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


