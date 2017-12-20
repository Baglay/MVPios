//
//  MainViewPresenter.m
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import "MainViewPresenter.h"
#import "StudentManager.h"
#import "IMainPresenter.h"

@interface MainViewPresenter()<IMainPresenter>

@property(nonatomic,strong) NSArray<IStudent>* students;
@property(nonatomic,weak) id<IViewController> view;
@property(nonatomic,strong) id<IStudent> model;
@property(nonatomic,strong) StudentManager* studentManager;

@end

@implementation MainViewPresenter

- (instancetype)initWithView:(id<IViewController>)view
{
    self = [super init];
    if (self) {
        self.view = view;
    }
    return self;
}

-(void)getStudents {
    self.students  = [StudentManager getStudents];
    [self.view setStudents:self.students];
    
    }
    


@end
