//
//  MainViewController.swift
//  hdSDK
//
//  Created by mac on 31/08/2022.
//

import UIKit
import IQKeyboardManagerSwift
import ActiveLabel

public class MainViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lbText: ActiveLabel!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        lbText.text = "Hello Word"
        image.image = UIImage(named: "thongbao", in: sdkBundle, compatibleWith: nil)

        // Do any additional setup after loading the view.
        //
        
        lbText.numberOfLines = 0
        lbText.enabledTypes = [.mention, .hashtag, .url]
        lbText.text = "This is a post with #hashtags and a @userhandle."
        lbText.textColor = .black
        lbText.handleHashtagTap { hashtag in
            print("Success. You just tapped the \(hashtag) hashtag")
        }
    }

}
