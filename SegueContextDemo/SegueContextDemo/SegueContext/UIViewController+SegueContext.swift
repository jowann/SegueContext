//
//  UIViewController+SegueContext.swift
//  SegueContextDemo
//
//  Created by Johann on 30/01/2018.
//  Copyright © 2018 JoWann. All rights reserved.
//

import UIKit

extension UIViewController{
    @discardableResult func prepare(for segue:UIStoryboardSegue, context:ISegueContext?)->Bool{
        guard let context = context else{
            return false
        }
        context.linkWith(segue.destination)
        return true
    }
}
