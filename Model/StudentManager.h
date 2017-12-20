//
//  StudentManager.h
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IStudent.h"

@interface StudentManager : NSObject
///<>

+(NSArray<IStudent> *)getStudents;
@end
