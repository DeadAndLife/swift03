//
//  OCClass.m
//  07-swift和OC混编
//
//  Created by qingyun on 16/8/2.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "OCClass.h"
#import "SwiftModule-swift.h" //模块名-swift.h
@implementation OCClass

- (void)createSwiftInstance{
    SwiftClass *sc = [[SwiftClass alloc] init];
}
@end
