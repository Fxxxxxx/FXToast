//
//  FXToast.h
//  FXToast
//
//  Created by Fxxx on 16/12/8.
//  Copyright © 2016年 Fxxx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface FXToast : NSObject

+ (instancetype)sharedToast;
+ (void)showAlert:(NSString *)message;
- (void)showAlert:(NSString *)message;

@end
