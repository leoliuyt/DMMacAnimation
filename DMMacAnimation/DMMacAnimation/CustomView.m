//
//  CustomView.m
//  DMMacAnimation
//
//  Created by lbq on 2018/4/19.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "CustomView.h"
#import <Masonry.h>
@interface CustomView()
@property (nonatomic, strong) NSView *aView;
@end
@implementation CustomView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    self.aView = [[NSView alloc] init];
    self.aView.wantsLayer = YES;
    self.aView.layer.backgroundColor = [NSColor blueColor].CGColor;
    [self addSubview:self.aView];
    [self.aView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

@end
