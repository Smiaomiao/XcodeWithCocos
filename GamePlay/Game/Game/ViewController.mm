//
//  ViewController.m
//  Game
//
//  Created by fei du on 2017/5/5.
//  Copyright © 2017年 fei du. All rights reserved.
//

#import "ViewController.h"
#import "cocos2d.h"
#import "PlayViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"game" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 100, 50);
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(gamePlay) forControlEvents:UIControlEventTouchUpInside];
}

- (void)gamePlay {
    cocos2d::Application *app = cocos2d::Application::getInstance();
    app -> initGLContextAttrs();
    cocos2d::GLViewImpl::convertAttrs();
    
    PlayViewController *viewController = [[PlayViewController alloc]init];
    
    
    [self presentViewController:viewController animated:YES completion:nil];

    
    cocos2d::GLView *glview = cocos2d::GLViewImpl::createWithEAGLView((__bridge void *)viewController.view);
    cocos2d::Director::getInstance()->setOpenGLView(glview);
    app -> run();

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
