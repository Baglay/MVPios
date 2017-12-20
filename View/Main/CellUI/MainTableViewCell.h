//
//  MainTableViewCell.h
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *firstName;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *specializationLabel;

@end
