//
//  DataManager.swift
//  RandomAnimation
//
//  Created by Евгения Аникина on 06.04.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
