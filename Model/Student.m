//
//  Student.m
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithfirstName:(NSString*) firstName andLastName:(NSString*) lastName andSpecialization:(NSString*) specialization;
{
    self = [super init];
    if (self) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.specialization = specialization;
        
    }
    return self;
}

-(NSString*) getFirstName {
    return  self.firstName;
}
-(NSString*) getLastName {
    return self.lastName;
}
-(NSString*) getSpecialization {
    return  self.specialization;
}
@end

