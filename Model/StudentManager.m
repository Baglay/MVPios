
//
//  StudentManager.m
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import "StudentManager.h"
#import "Student.h"
@implementation StudentManager 

+ (NSArray<Student *> *)getStudents {
    
    return @[
             [[Student alloc] initWithfirstName:@"Rodion" andLastName:@"Baglay" andSpecialization:@"Informatika"],
             [[Student alloc] initWithfirstName:@"Alexander" andLastName:@"Borisov" andSpecialization:@"Economy"],
             [[Student alloc] initWithfirstName:@"Roma" andLastName:@"Borisov" andSpecialization:@"Physics"],
             [[Student alloc] initWithfirstName:@"Nikita" andLastName:@"Borisov" andSpecialization:@"Geologia"]
             ];
}


@end
