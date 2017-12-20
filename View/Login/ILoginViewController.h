//
//  ILoginViewController.h
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ILoginViewController <NSObject>

-(void) loginSuccess;
-(void) loginFail:(NSString*) message;
@end
