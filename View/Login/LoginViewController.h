//
//  LoginViewController.h
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *loginEditText;
@property (weak, nonatomic) IBOutlet UITextField *passwordEditText;
- (IBAction)login:(id)sender;

@end
