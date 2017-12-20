//
//  IViewController.h
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IStudent.h"
@protocol IViewController <NSObject>

//методы для установки данных
-(void) setStudents:(NSArray<IStudent>*) students;


@end
