//
//  HapticsManager.swift
//  HapticsExample
//
//  Created by 윤병일 on 2020/11/04.
//

import UIKit

final class HapticsManager {
  static let shared = HapticsManager()
  
  private init() {}
  
  
  // 그냥 한번 터치 했을때 진동
  public func selectionVibrate() {
    DispatchQueue.main.async {
      let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
      selectionFeedbackGenerator.prepare()
      selectionFeedbackGenerator.selectionChanged()
    }
  }
  
  // 3가지 종류에 따른 진동 (.success, .error, .warning) 약간 미세하게 다르다 
  public func vibrate(for type : UINotificationFeedbackGenerator.FeedbackType) {
    DispatchQueue.main.async {
      let notificationGenerator = UINotificationFeedbackGenerator()
      notificationGenerator.prepare()
      notificationGenerator.notificationOccurred(type)
    }
  }
}
