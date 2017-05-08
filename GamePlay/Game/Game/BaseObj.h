//
//  BaseObj.h
//  Game
//
//  Created by fei du on 2017/5/8.
//  Copyright © 2017年 fei du. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@class ViewController;

@interface BaseObj : NSObject <UIApplicationDelegate> {
    
}

@property(nonatomic, readonly) ViewController* viewController;

@end
