//
//  CSViewController.h
//  practicum3
//
//  Created by lab on 2/25/14.
//  Copyright (c) 2014 A-Team. All rights reserved.
//

#import <UIKit/UIKit.h>
//import classes

@interface CSViewController : UIViewController{
    //create instances and constants here
    //id list = [[List alloc] init];
}
//initial view
@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *editButton;
@property (weak, nonatomic) IBOutlet UIButton *removeButton;
@property (weak, nonatomic) IBOutlet UIButton *viewListButton;

//add a Person view
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTxt;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTxt;
@property (weak, nonatomic) IBOutlet UILabel *IDLabel;
@property (weak, nonatomic) IBOutlet UITextField *IDTxt;
@property (weak, nonatomic) IBOutlet UISegmentedControl *studentProfessorButton;
@property (weak, nonatomic) IBOutlet UILabel *majorLabel;
@property (weak, nonatomic) IBOutlet UITextField *majorTxt;
@property (weak, nonatomic) IBOutlet UILabel *gpaLabel;
@property (weak, nonatomic) IBOutlet UISlider *gpaSlider;
@property (weak, nonatomic) IBOutlet UILabel *gradYearLabel;
@property (weak, nonatomic) IBOutlet UITextField *gradYearTxt;
//professor properties
@property (weak, nonatomic) IBOutlet UILabel *tenuredLabel;
@property (weak, nonatomic) IBOutlet UISwitch *tenuredSwitch;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
//cancel and submit button
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;

//methods
//hides initial view 
-(IBAction)hideAll:(id)sender;
-(IBAction)addButtonClicked:(UIButton *) sender;
- (IBAction)segmentedStudentProfessor:(UISegmentedControl *)sender;
- (IBAction)sliderChanged:(UISlider *)sender;
- (IBAction)editButton:(UIButton *)sender;
- (IBAction)removeButton:(UIButton *)sender;
- (IBAction)viewListButton:(UIButton *)sender;

@end
