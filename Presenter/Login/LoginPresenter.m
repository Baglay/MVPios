//
//  LoginPresenter.m
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import "LoginPresenter.h"
#import "ILoginPresenter.h"
#import "ILoginViewController.h"

@interface LoginPresenter()<ILoginPresenter>


//delegate


@end

@implementation LoginPresenter

-(instancetype)initWithView:(id<ILoginViewController>) view {
    self.view = view;
    return self;
}


- (void)loginWithName:(NSString *)username andPassword:(NSString *)password {
    
    if([username isEqualToString:@""]) {
        
        [_view loginFail:@"username"];
    }
    else if ([password isEqualToString:@""]) {
        [_view loginFail:@"passsword"];
    }
    else {
        [_view loginSuccess];
    }
}


@end
