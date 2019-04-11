//
//  UIColor+convenient.h
//  TestNav
//
//  Created by zhouyun on 2019/4/11.
//  Copyright © 2019 zhouyun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (convenient)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

+ (UIImage *)createImageWithColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
