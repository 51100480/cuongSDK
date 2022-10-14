//
//  MainViewController.swift
//  hdSDK
//
//  Created by mac on 31/08/2022.
//

import UIKit
import IQKeyboardManagerSwift
import ActiveLabel

public protocol MainViewControllerProtocol: AnyObject {
    func getTileOneApp() -> String
    func getNameImage() -> String?
}

public class MainViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lbText: ActiveLabel!
    
    public weak var delegate: MainViewControllerProtocol?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        if let ti = delegate?.getTileOneApp() {
            lbText.text = ti
        } else {
            lbText.text = "Hello Word"
        }
        
        if let ti = delegate?.getNameImage() {
            image.image = UIImage(named: ti)
        } else {
            image.image = UIImage(named: "thongbao", in: sdkBundle, compatibleWith: nil)
        }
       

        // Do any additional setup after loading the view.
        //
    }

}
