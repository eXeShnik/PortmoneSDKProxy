//
//  PortmoneSDKProxy.swift
//  PortmoneSDKProxy
//
//  Created by Vitalii Overchuk on 08.03.2021.
//

import Foundation
import PortmoneSDKEcom

@objc(PortmoneSDKProxy)
public class PortmoneSDKProxy : NSObject {
    
    private static var styleSource: StyleSource? = nil
    
    @objc
    public static func initSdkStyle(titleFontRes: UIFont, titleColorRes: UIColor, titleBackgroundColorRes: UIColor, headersFontRes: UIFont, headersColorRes: UIColor, headersBackgroundColorRes: UIColor, placeholdersFontRes: UIFont, placeholdersColorRes: UIColor, textsFontRes: UIFont, textsColorRes: UIColor, errorsFontRes: UIFont, errorsColorRes: UIColor, backgroundColorRes: UIColor, resultMessageFontRes: UIFont, resultMessageColorRes: UIColor, resultSaveReceiptColorRes: UIColor, infoTextsFontRes: UIFont, infoTextsColorRes: UIColor, buttonTitleFontRes: UIFont, buttonTitleColorRes: UIColor, buttonColorRes: UIColor, buttonCornerRadiusRes: CGFloat, biometricButtonColorRes: UIColor, successImageRes: UIImage? = nil, failureImageRes: UIImage? = nil) {
        styleSource = StyleSourceImpl(
            titleFontRes: titleFontRes,
            titleColorRes: titleColorRes,
            titleBackgroundColorRes: titleBackgroundColorRes,
            headersFontRes: headersFontRes,
            headersColorRes: headersColorRes,
            headersBackgroundColorRes: headersBackgroundColorRes,
            placeholdersFontRes: placeholdersFontRes,
            placeholdersColorRes: placeholdersColorRes,
            textsFontRes: textsFontRes,
            textsColorRes: textsColorRes,
            errorsFontRes: errorsFontRes,
            errorsColorRes: errorsColorRes,
            backgroundColorRes: backgroundColorRes,
            resultMessageFontRes: resultMessageFontRes,
            resultMessageColorRes: resultMessageColorRes,
            resultSaveReceiptColorRes: resultSaveReceiptColorRes,
            infoTextsFontRes: infoTextsFontRes,
            infoTextsColorRes: infoTextsColorRes,
            buttonTitleFontRes: buttonTitleFontRes,
            buttonTitleColorRes: buttonTitleColorRes,
            buttonColorRes: buttonColorRes,
            buttonCornerRadiusRes: buttonCornerRadiusRes,
            biometricButtonColorRes: biometricButtonColorRes,
            successImageRes: successImageRes,
            failureImageRes: failureImageRes)
    }
    
    @objc
    public static func showPaymentController(parentController: UIViewController,
                                             delegate: PortmoneSDKEcom.PaymentPresenterDelegate,
                                             payeeId: String,
                                             description: String,
                                             orderId: String,
                                             billAmount: Double,
                                             billCurrency: String,
                                             attribute1: String = "",
                                             attribute2: String = "",
                                             attribute3: String = "",
                                             attribute4: String = "",
                                             attribute5: String = "",
                                             appleMerchantId: String){
        
        let flowType = PaymentFlowType(payWithCard: true,
                                       payWithApplePay: true,
                                       withoutCVV: false)
        
        let initParams = PaymentParams(description: description,
                                       attribute1: attribute1,
                                       attribute2: attribute2,
                                       attribute3: attribute3,
                                       attribute4: attribute4,
                                       attribute5: attribute5,
                                       billNumber: orderId,
                                       preauthFlag: false,
                                       billCurrency: Currency(rawValue: billCurrency) ?? .uah,
                                       billAmount: billAmount,
                                       billAmountWcvv: 0,
                                       payeeId: payeeId,
                                       type: .payment,
                                       merchantIdentifier: appleMerchantId,
                                       paymentFlowType: flowType)
        
        let presenter = PaymentPresenter(delegate: delegate,
                                         styleSource: styleSource,
                                         language: .ukrainian,
                                         customUid: nil)
        
        presenter.setReturnToDetails(disabled: true)
        
        presenter.presentPaymentByCard(on: parentController,
                                       params: initParams,
                                       showReceiptScreen: false)
    }
    
    @objc
    public static func showApplePayPaymentController(parentController: UIViewController,
                                                     delegate: PortmoneSDKEcom.PaymentPresenterDelegate,
                                                     payeeId: String,
                                                     description: String,
                                                     orderId: String,
                                                     billAmount: Double,
                                                     billCurrency: String,
                                                     appleMerchantId: String,
                                                     attribute1: String = "",
                                                     attribute2: String = "",
                                                     attribute3: String = "",
                                                     attribute4: String = "",
                                                     attribute5: String = ""){
        
        let flowType = PaymentFlowType(payWithCard: false,
                                       payWithApplePay: true,
                                       withoutCVV: false)
        
        let initParams = PaymentParams(description: description,
                                       attribute1: attribute1,
                                       attribute2: attribute2,
                                       attribute3: attribute3,
                                       attribute4: attribute4,
                                       attribute5: attribute5,
                                       billNumber: orderId,
                                       preauthFlag: false,
                                       billCurrency: Currency(rawValue: billCurrency) ?? .uah,
                                       billAmount: billAmount,
                                       billAmountWcvv: 0,
                                       payeeId: payeeId,
                                       type: .payment,
                                       merchantIdentifier: appleMerchantId,
                                       paymentFlowType: flowType)
        
        let presenter = PaymentPresenter(delegate: delegate,
                                         styleSource: styleSource,
                                         language: .ukrainian,
                                         customUid: nil)
        
        presenter.setReturnToDetails(disabled: true)
        
        presenter.presentPaymentByCard(on: parentController,
                                       params: initParams,
                                       showReceiptScreen: false)
    }
    
    @objc
    public static func showSaveCardController(parentController: UIViewController,
                                              delegate: PortmoneSDKEcom.PaymentPresenterDelegate,
                                              payeeId: String,
                                              description: String,
                                              orderId: String){
        
        let initParams = PreauthParams(payeeId: payeeId,
                                       description: description,
                                       billNumber: orderId)
        
        let presenter = PaymentPresenter(delegate: delegate,
                                         styleSource: styleSource,
                                         language: .ukrainian,
                                         customUid: nil)
        
        presenter.setReturnToDetails(disabled: true)
        
        presenter.presentPreauthCard(on: parentController, params: initParams)
    }
    
    @objc
    public static func showPayByCardTokenController(parentController: UIViewController,
                                                    delegate: PortmoneSDKEcom.PaymentPresenterDelegate,
                                                    payeeId: String,
                                                    description: String,
                                                    orderId: String,
                                                    billAmount: Double,
                                                    billCurrency: String,
                                                    cardNumberMasked: String,
                                                    tokenData: String,
                                                    attribute1: String = "",
                                                    attribute2: String = "",
                                                    attribute3: String = "",
                                                    attribute4: String = "",
                                                    attribute5: String = "",
                                                    appleMerchantId: String){
        
        let initParams = PaymentParams(description: description,
                                       attribute1: attribute1,
                                       attribute2: attribute2,
                                       attribute3: attribute3,
                                       attribute4: attribute4,
                                       attribute5: attribute5,
                                       billNumber: orderId,
                                       preauthFlag: false,
                                       billCurrency: Currency(rawValue: billCurrency) ?? .uah,
                                       billAmount: billAmount,
                                       billAmountWcvv: 0,
                                       payeeId: payeeId)
        
        let tokenParams = TokenPaymentParams(cardNumberMasked: cardNumberMasked, tokenData: tokenData)
        
        let presenter = PaymentPresenter(delegate: delegate,
                                         styleSource: styleSource,
                                         language: .ukrainian,
                                         customUid: nil)
        
        presenter.setReturnToDetails(disabled: true)
        
        presenter.presentPaymentByToken(on: parentController, payParams: initParams, tokenParams: tokenParams)
    }
    
    @objc
    public static func convertToBill(bill: PortmoneSDKEcom.Bill?) -> CustomBill? {
        var customBill: CustomBill? = nil
        
        if bill != nil {
            customBill = CustomBill()
            customBill!.billId = bill!.billId
            customBill!.status = bill!.status
            customBill!.billAmount = bill!.billAmount
            customBill!.cardMask = bill!.cardMask
            customBill!.commissionAmount = bill!.commissionAmount
            customBill!.recieptUrl = bill!.recieptUrl
            customBill!.contractNumber = bill!.contractNumber
            customBill!.payDate = bill!.payDate
            customBill!.payeeName = bill!.payeeName
            customBill!.token = bill!.token
        }
        
        return customBill
    }
}
