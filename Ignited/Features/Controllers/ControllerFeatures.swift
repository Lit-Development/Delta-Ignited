//
//  ControllerFeatures.swift
//  Ignited
//
//  Created by Chris Rittenhouse on 6/28/23.
//  Copyright © 2023 LitRitt. All rights reserved.
//

import UIKit
import Features

struct ControllerFeatures: FeatureContainer
{
    static let shared = ControllerFeatures()
    
    @Feature(name: "Skin Options",
             description: "Change the look of controller skins.",
             options: SkinOptions(),
             attributes: [.permanent])
    var skin
    
    @Feature(name: "Controller Options",
             description: "Change how the app responds to controller inputs.",
             options: ControllerOptions(),
             attributes: [.permanent])
    var controller
    
    @Feature(name: "Swipe Gestures",
             description: "Activate actions by performing swipe gestures while holding the menu button.",
             options: SwipeGestureOptions())
    var swipeGestures
    
    @Feature(name: "Background Blur",
             description: "Use a blurred game screen as the background of skins.",
             options: BackgroundBlurOptions())
    var backgroundBlur
    
    @Feature(name: "PlayCase Mode",
             description: "Enable features to enhance you gameplay experience while using PlayCase.",
             options: PlayCaseOptions(),
             attributes: [.hidden(when: { UIDevice.current.userInterfaceIdiom != .phone })])
    var playCase
    
    private init()
    {
        self.prepareFeatures()
    }
}
