//
//  PlayViewController.m
//  Game
//
//  Created by fei du on 2017/5/5.
//  Copyright © 2017年 fei du. All rights reserved.
//

#import "PlayViewController.h"
#import "platform/ios/CCEAGLView-ios.h"
#import "cocos2d.h"

@interface PlayViewController ()

@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    CCEAGLView *eaglView = [CCEAGLView viewWithFrame: [UIScreen mainScreen].bounds
                                         pixelFormat: (__bridge NSString *)cocos2d::GLViewImpl::_pixelFormat
                                         depthFormat: cocos2d::GLViewImpl::_depthFormat
                                  preserveBackbuffer: NO
                                          sharegroup: nil
                                       multiSampling: NO
                                     numberOfSamples: 0 ];
    
    // Enable or disable multiple touches
    [eaglView setMultipleTouchEnabled:NO];
    
    // Set EAGLView as view of RootViewController
    cocos2d::Director::getInstance()->pause();
    cocos2d::Director::getInstance()->stopAnimation();

    self.view = eaglView;

}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    cocos2d::Application::getInstance()->applicationDidEnterBackground();
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    cocos2d::Application::getInstance()->applicationWillEnterForeground();
}


- (BOOL)prefersStatusBarHidden {
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
