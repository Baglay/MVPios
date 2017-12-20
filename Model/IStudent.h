//
//  IStudent.h
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
@protocol IStudent <NSObject>

-(NSString*) getFirstName;
-(NSString*) getLastName;
-(NSString*) getSpecialization;

@end
