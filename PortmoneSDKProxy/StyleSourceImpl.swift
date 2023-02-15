//
//  StyleSourceImpl.swift
//  PortmoneSDKProxy
//
//  Created by Vitalii Overchuk on 14.04.2021.
//

import Foundation
import PortmoneSDKEcom

public class StyleSourceImpl : StyleSource {
    required init(titleFontRes: UIFont, titleColorRes: UIColor, titleBackgroundColorRes: UIColor, headersFontRes: UIFont, headersColorRes: UIColor, headersBackgroundColorRes: UIColor, placeholdersFontRes: UIFont, placeholdersColorRes: UIColor, textsFontRes: UIFont, textsColorRes: UIColor, errorsFontRes: UIFont, errorsColorRes: UIColor, backgroundColorRes: UIColor, resultMessageFontRes: UIFont, resultMessageColorRes: UIColor, resultSaveReceiptColorRes: UIColor, infoTextsFontRes: UIFont, infoTextsColorRes: UIColor, buttonTitleFontRes: UIFont, buttonTitleColorRes: UIColor, buttonColorRes: UIColor, buttonCornerRadiusRes: CGFloat, biometricButtonColorRes: UIColor, successImageRes: UIImage? = nil, failureImageRes: UIImage? = nil) {
        self.titleFontRes = titleFontRes
        self.titleColorRes = titleColorRes
        self.titleBackgroundColorRes = titleBackgroundColorRes
        self.headersFontRes = headersFontRes
        self.headersColorRes = headersColorRes
        self.headersBackgroundColorRes = headersBackgroundColorRes
        self.placeholdersFontRes = placeholdersFontRes
        self.placeholdersColorRes = placeholdersColorRes
        self.textsFontRes = textsFontRes
        self.textsColorRes = textsColorRes
        self.errorsFontRes = errorsFontRes
        self.errorsColorRes = errorsColorRes
        self.backgroundColorRes = backgroundColorRes
        self.resultMessageFontRes = resultMessageFontRes
        self.resultMessageColorRes = resultMessageColorRes
        self.resultSaveReceiptColorRes = resultSaveReceiptColorRes
        self.infoTextsFontRes = infoTextsFontRes
        self.infoTextsColorRes = infoTextsColorRes
        self.buttonTitleFontRes = buttonTitleFontRes
        self.buttonTitleColorRes = buttonTitleColorRes
        self.buttonColorRes = buttonColorRes
        self.buttonCornerRadiusRes = buttonCornerRadiusRes
        self.biometricButtonColorRes = biometricButtonColorRes
        self.successImageRes = successImageRes
        self.failureImageRes = failureImageRes
    }
    
    public let titleFontRes: UIFont
    public let titleColorRes: UIColor
    public let titleBackgroundColorRes: UIColor
    public let headersFontRes: UIFont
    public let headersColorRes: UIColor
    public let headersBackgroundColorRes: UIColor
    public let placeholdersFontRes: UIFont
    public let placeholdersColorRes: UIColor
    public let textsFontRes: UIFont
    public let textsColorRes: UIColor
    public let errorsFontRes: UIFont
    public let errorsColorRes: UIColor
    public let backgroundColorRes: UIColor
    public let resultMessageFontRes: UIFont
    public let resultMessageColorRes: UIColor
    public let resultSaveReceiptColorRes: UIColor
    public let infoTextsFontRes: UIFont
    public let infoTextsColorRes: UIColor
    public let buttonTitleFontRes: UIFont
    public let buttonTitleColorRes: UIColor
    public let buttonColorRes: UIColor
    public let buttonCornerRadiusRes: CGFloat
    public let biometricButtonColorRes: UIColor
    public let successImageRes: UIImage?
    public let failureImageRes: UIImage?
    
    public func resultSaveReceiptColor() -> UIColor {
        resultSaveReceiptColorRes
    }
    
    public func buttonCornerRadius() -> CGFloat {
        buttonCornerRadiusRes
    }
    
    public func successImage() -> UIImage? {
        successImageRes
    }
    
    public func failureImage() -> UIImage? {
        failureImageRes
    }
    
    public func backgroundColor() -> UIColor {
        backgroundColorRes
    }
    
    public func biometricButtonColor() -> UIColor {
        biometricButtonColorRes
    }
    
    public func buttonColor() -> UIColor {
        buttonColorRes
    }
    
    public func buttonTitleColor() -> UIColor {
        buttonTitleColorRes
    }
    
    public func buttonTitleFont() -> UIFont {
        buttonTitleFontRes
    }
    
    public func errorsColor() -> UIColor {
        errorsColorRes
    }
    
    public func errorsFont() -> UIFont {
        errorsFontRes
    }
    
    public func headersBackgroundColor() -> UIColor {
        headersBackgroundColorRes
    }
    
    public func headersColor() -> UIColor {
        headersColorRes
    }
    
    public func headersFont() -> UIFont {
        headersFontRes
    }
    
    public func infoTextsColor() -> UIColor {
        infoTextsColorRes
    }
    
    public func infoTextsFont() -> UIFont {
        infoTextsFontRes
    }
    
    public func placeholdersColor() -> UIColor {
        placeholdersColorRes
    }
    
    public func placeholdersFont() -> UIFont {
        placeholdersFontRes
    }
    
    public func resultMessageColor() -> UIColor {
        resultMessageColorRes
    }
    
    public func resultMessageFont() -> UIFont {
        resultMessageFontRes
    }
    
    public func textsColor() -> UIColor {
        textsColorRes
    }
    
    public func textsFont() -> UIFont {
        textsFontRes
    }
    
    public func titleBackgroundColor() -> UIColor {
        titleBackgroundColorRes
    }
    
    public func titleColor() -> UIColor {
        titleColorRes
    }
    
    public func titleFont() -> UIFont {
        titleFontRes
    }
}
