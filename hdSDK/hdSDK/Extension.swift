//
//  Extension.swift
//  hdSDK
//
//  Created by mac on 31/08/2022.
//

import Foundation

let SSDKBUNDLE_STRING = "com.hunegroup.hdSDK"

extension NSObject {
  public var sdkBundle: Bundle {
      let bundle = Bundle(url: Bundle.main.bundleURL.appendingPathComponent("Frameworks").appendingPathComponent("hdSDK.framework"))
      return bundle ?? Bundle.init(identifier: SSDKBUNDLE_STRING) ?? Bundle.main
    }
}
