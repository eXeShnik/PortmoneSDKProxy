//
//  CustomBill.swift
//  PortmoneSDKProxy
//
//  Created by Vitalii Overchuk on 13.04.2021.
//

import Foundation

@objc(CustomBill)
public class CustomBill : NSObject {
    @objc public var billId: String? = nil
    @objc public var status: String = ""
    @objc public var billAmount: Double = 0.0
    @objc public var cardMask: String?
    @objc public var commissionAmount: Double = 0.0
    @objc public var recieptUrl: String?
    @objc public var contractNumber: String? = nil
    @objc public var payDate: Date? = nil
    @objc public var payeeName: String? = nil
    @objc public var token: String?
}
