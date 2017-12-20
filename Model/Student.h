//
//  Student.h
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject


@property(nonatomic,strong) NSString* firstName;
@property(nonatomic,strong) NSString* lastName;
@property(nonatomic,strong) NSString* specialization;


-(instancetype)initWithfirstName:(NSString*) firstName andLastName:(NSString*) lastName andSpecialization:(NSString*) specialization;
@end
