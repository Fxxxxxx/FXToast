//
//  FXToast.m
//  FXToast
//
//  Created by Fxxx on 16/12/8.
//  Copyright © 2016年 Fxxx. All rights reserved.
//

#import "FXToast.h"


@interface FXToast()

@property (strong, nonatomic) UILabel * alertLabel;

@end

@implementation FXToast

static FXToast * _instance;

+ (instancetype)sharedToast{
    static dispatch_once_t onceToken;
    _dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    return [FXToast sharedToast];
}

#pragma mark- 弹窗封装
- (void)showAlert:(NSString *)message;{
    
    [[[UIApplication sharedApplication].windows lastObject] addSubview:self.alertLabel];
    self.alertLabel.text = message;
    [UIView animateWithDuration:.5 animations:^{
        
        self.alertLabel.transform = CGAffineTransformMakeTranslation(0 , -150);
        
    } completion:^(BOOL finished) {
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            self.alertLabel.transform = CGAffineTransformIdentity;
            
        });
        
    }];
}

+ (void)showAlert:(NSString *)message{
    [[self sharedToast] showAlert:message];
}

- (UILabel *) alertLabel{
    
    
    if (!_alertLabel) {
        _alertLabel = [[UILabel alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 150) / 2, [UIScreen mainScreen].bounds.size.height, 150, 50)];
        _alertLabel.layer.cornerRadius = 5;
        _alertLabel.layer.masksToBounds = YES;
        _alertLabel.numberOfLines = 0;
        _alertLabel.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.7];
        _alertLabel.font = [UIFont systemFontOfSize:12];
        _alertLabel.textColor = [UIColor whiteColor];
        _alertLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _alertLabel;
}


@end
