//
//  MainViewController.swift
//  hdSDK
//
//  Created by mac on 31/08/2022.
//

import UIKit
import IQKeyboardManagerSwift

public class MainViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lbText: UILabel!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        lbText.text = "Hello Word"
        image.image = UIImage(named: "thongbao", in: sdkBundle, compatibleWith: nil)

        // Do any additional setup after loading the view.
    }

}
