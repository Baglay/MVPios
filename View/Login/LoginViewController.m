//
//  LoginViewController.m
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import "LoginViewController.h"
#import "ILoginPresenter.h"
#import "ILoginViewController.h"
#import "LoginPresenter.h"
#import "ViewController.h"
@interface LoginViewController () <ILoginViewController>

@property(nonatomic,strong) LoginPresenter* presenter;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.presenter = [[LoginPresenter alloc] init];
    self.presenter.view = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)login:(id)sender {
   
    NSString* login = self.loginEditText.text;
    NSString* password = self.passwordEditText.text;
    [self.presenter loginWithName:login andPassword:password];
}

- (void)loginFail:(NSString*) message {
    NSLog(@"LOGIN FAIL");
}

- (void)loginSuccess {
    NSLog(@"LOGIN SUCCES");
    ViewController *main = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.navigationController pushViewController:main animated:YES];
    
}


@end
