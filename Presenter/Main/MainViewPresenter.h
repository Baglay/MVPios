//
//  MainViewPresenter.h
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "IViewController.h"
#import "IStudent.h"

@interface MainViewPresenter : NSObject


-(instancetype)initWithView:(id<IViewController>) view;

@end
