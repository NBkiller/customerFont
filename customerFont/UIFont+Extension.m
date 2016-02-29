//
//  UIFont+Extension.m
//  customerFont
//
//  Created by administrator on 16/2/29.
//  Copyright © 2016年 NB_ZP. All rights reserved.
//

#import "UIFont+Extension.h"
#import <objc/runtime.h>

@implementation UIFont (Extension)
+ (void)load
{
    Method originalMethod = class_getClassMethod([UIFont class], @selector(systemFontOfSize:));
    Method swizzledMethod = class_getClassMethod([UIFont class], @selector(fontWithNameAndSize:));
    method_exchangeImplementations(originalMethod, swizzledMethod);
}



+ (UIFont *)fontWithNameAndSize:(CGFloat)fontSize
{
    //    NSLog(@"fontWithNameAndSize");
    return [UIFont fontWithName:@"STHeitiTC-Light" size:fontSize];
    
    
}

@end
