//
//  InterviewPracticeViewController.m
//  InterviewPractice
//
//  Created by Austin Diaz on 7/9/15.
//  Copyright (c) 2015 Austin Diaz. All rights reserved.
//

#import "InterviewPracticeViewController.h"

@interface InterviewPracticeViewController ()

@property (nonatomic, copy) NSArray *firstNameList;
@property (nonatomic, copy) NSArray *lastNameList;
@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic) int nameIndex;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, copy) NSString *name;
@end

@implementation InterviewPracticeViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil
                          bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.firstNameList = @[@"Bob",
                               @"Mary",
                               @"Phil",
                               @"Janet",
                               @"Fred"];
        self.lastNameList = @[@"Armisen",
                              @"Diaz",
                              @"Sagget",
                              @"Crone",
                              @"Szatmary"];
    }
    return self;
}

- (IBAction)showName:(id)sender
{
    self.nameIndex++;
    if (self.nameIndex == [self.firstNameList count]) {
        self.nameIndex = 0;
    }
    
    if (self.nameIndex == [self.lastNameList count]) {
        self.nameIndex = 0;
    }
    // Get index of random first name
    NSInteger firstNameIndex = arc4random() % [self.firstNameList count];
    // Get random firstName
    NSString *firstName = self.firstNameList[firstNameIndex];
    // Get index of random second name
    NSInteger lastNameIndex = arc4random() % [self.lastNameList count];
    // Get lastName
    NSString *lastName = self.lastNameList[lastNameIndex];
    // Create a new name using firstName and lastName
    NSString *name = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
    self.nameLabel.text = name;
}

@end
