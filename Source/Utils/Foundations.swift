//
//  Foundations.swift
//  Pods
//
//  Created by JesseXu on 7/14/16.
//
//

import Foundation

public func ScreenWidth() -> CGFloat {
    return UIScreen.mainScreen().bounds.width
}

public func ScreenHeight() -> CGFloat {
    return UIScreen.mainScreen().bounds.height
}

public func ViewFromNib<T: UIView>(nibName: String) -> T? {
    return NSBundle.mainBundle().loadNibNamed(nibName, owner: nil, options: nil)[0] as? T
}

public func KeyWindow() -> UIWindow? {
    return UIApplication.sharedApplication().keyWindow
}

public func RegisterNibWithName(nibName: String, tableView: UITableView) {
    tableView.registerNib(UINib(nibName: nibName, bundle: nil), forCellReuseIdentifier: nibName)
}

public func DequeueReusableCellWithIdentifier<T>(nibName: String, tableView: UITableView) -> T {
    return tableView.dequeueReusableCellWithIdentifier(nibName) as! T
}

public func SizeOfLabelContent(str: String, font: UIFont, sizeMake: CGSize) -> CGSize {
    if str.isEmpty {
        return CGSizeZero
    } else {
        let attrStr = NSMutableAttributedString(string: str)
        let allRange = NSString(string: str).rangeOfString(str)
        attrStr.addAttribute(NSFontAttributeName, value: font, range: allRange)
        
        let options = NSStringDrawingOptions(arrayLiteral: .TruncatesLastVisibleLine, .UsesLineFragmentOrigin, .UsesFontLeading)
        let rect = attrStr.boundingRectWithSize(sizeMake, options: options, context: nil)
        
        return rect.size
    }
}

public func LS(key: String) -> String {
    return NSLocalizedString(key, comment: "")
}