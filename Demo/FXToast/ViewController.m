//
//  ViewController.m
//  FXToast
//
//  Created by Fxxx on 16/12/8.
//  Copyright © 2016年 Fxxx. All rights reserved.
//

#import "ViewController.h"
#import "FXToast.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showToast:(UIButton *)sender {
    
    [FXToast showAlert:self.textField.text];
    
    FXToast * toast = [FXToast sharedToast];
    [toast showAlert:@"someThing"];
    
}

@end
