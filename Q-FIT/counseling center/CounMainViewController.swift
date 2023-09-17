//
//  CounMainViewController.swift
//  Q-FIT
//
//  Created by 이서연 on 2023/09/18.
//

import UIKit

class CounMainViewController: UIViewController {
    @IBOutlet weak var categoryStackView: CategoryButtonStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let buttonTitles = ["버튼 1", "버튼 2ㅂㅈㄷㅂㅈㄷㅂㅈㄷㅈㅂㄷ", "버튼 3", "버튼 4", "버튼 5", "버튼 6"]
        
        categoryStackView.addButtons(withTitles: buttonTitles)
        
       
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
