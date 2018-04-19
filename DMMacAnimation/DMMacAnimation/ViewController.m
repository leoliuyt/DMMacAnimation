//
//  ViewController.m
//  DMMacAnimation
//
//  Created by lbq on 2018/4/19.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "CustomView.h"

@interface ViewController()

@property (nonatomic, strong) CustomView *oneView;
@end
@implementation ViewController
- (IBAction)clicked:(id)sender {
    
    self.oneView = [[CustomView alloc] initWithFrame:CGRectMake(0, -60, self.view.frame.size.width, 60)];
//    self.oneView.wantsLayer = YES;
//    self.oneView.layer.backgroundColor = [NSColor orangeColor].CGColor;
    [self.view addSubview:self.oneView];
    
//    [NSAnimationContext runAnimationGroup:^(NSAnimationContext * _Nonnull context) {
//        [context setDuration:5];
//        [context setAllowsImplicitAnimation:YES];
//        [self.oneView setFrameOrigin:CGPointMake(0, 0)];
//    } completionHandler:nil];
    

    [self.oneView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(60.);
        make.height.equalTo(@60.);
    }];
    
    
    [self.view layoutSubtreeIfNeeded];
    
    [self.oneView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.bottom.equalTo(self.view);
        make.height.equalTo(@60.);
    }];
    
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext * _Nonnull context) {
        [context setDuration:5];
        [context setAllowsImplicitAnimation:YES];
        [self.view layoutSubtreeIfNeeded];
    } completionHandler:nil];
    
//    [self.oneView animator]
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
