//
//  LoginPresenter.h
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ILoginViewController.h"

@interface LoginPresenter : NSObject

@property(nonatomic,weak) id <ILoginViewController> view;

-(instancetype)initWithView:(id<ILoginViewController>) view;

- (void)loginWithName:(NSString *)username andPassword:(NSString *)password;


@end
