//
//  ViewController.m
//  MVPios
//
//  Created by Родион Баглай on 20.12.17.
//  Copyright © 2017 Родион Баглай. All rights reserved.
//

#import "ViewController.h"
#import "MainViewPresenter.h"
#import "IViewController.h"
#import "MainTableViewCell.h"
#import "IMainPresenter.h"
#import "Student.h"
@interface ViewController () <UITableViewDelegate,UITableViewDataSource,IViewController>

@property(nonatomic,strong) id<IMainPresenter> presenter;
@property(nonatomic,strong) NSArray* studentsToTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    if( self.presenter == nil) {
    self.presenter = [[MainViewPresenter alloc] initWithView:self];
    }
    [self.presenter getStudents];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.studentsToTableView count];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString* identifer = @"cell";
    MainTableViewCell* cell;
    if(!cell) {
        cell =  [tableView dequeueReusableCellWithIdentifier:identifer];
        NSLog(@"cell created");
    }
    id <IStudent> student = [self.studentsToTableView objectAtIndex:indexPath.row];
    cell.firstName.text =  [student getFirstName];
    cell.lastNameLabel.text = [student getLastName];
    cell.specializationLabel.text = [student getSpecialization];
    
    return cell;

}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 90;
}

#pragma mark - <IViewController> protocol methods;

-(void) setStudents:(NSArray<Student*>*) students {
    self.studentsToTableView = students;
    [self.tableView reloadData];
}


@end
