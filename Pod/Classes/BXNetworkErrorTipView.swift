//
//  BXNetworkErrorTipView.swift
//  Pods
//
//  Created by Haizhen Lee on 15/12/2.
//
//

import UIKit


// Build for target uimodel
import UIKit
import PinAutoLayout

// -BXNetworkErrorTipView
// tip[x,y](f16,cg):; action[x,h36]:b

public class BXNetworkErrorTipView : UIView{
  public let tipLabel = UILabel(frame:CGRectZero)
  public let actionButton = UIButton(type:.System)
  
  
  public override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  
  public override func awakeFromNib() {
    super.awakeFromNib()
    commonInit()
  }
  
  var allOutlets :[UIView]{
    return [tipLabel,actionButton]
  }
  var allUIButtonOutlets :[UIButton]{
    return [actionButton]
  }
  var allUILabelOutlets :[UILabel]{
    return [tipLabel]
  }
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  func commonInit(){
    for childView in allOutlets{
      addSubview(childView)
      childView.translatesAutoresizingMaskIntoConstraints = false
    }
    installConstaints()
    setupAttrs()
    
  }
  
  func installConstaints(){
    tipLabel.pinCenterY()
    tipLabel.pinCenterX()
    
    actionButton.pinCenterX()
    actionButton.pinHeight(36)
    actionButton.pinBelowSibling(tipLabel, margin: 8)
    
  }
  
  func setupAttrs(){
    tipLabel.textColor = UIColor.grayColor()
    tipLabel.font = UIFont.systemFontOfSize(16)
    
  }
}
