//
//  CSViewController.m
//  practicum3
//
//  Created by lab on 2/25/14.
//  Copyright (c) 2014 A-Team. All rights reserved.
//

#import "CSViewController.h"

@interface CSViewController ()

@end

@implementation CSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //hides some of the elements when loading
    _firstNameLabel.hidden = true;
    _firstNameTxt.hidden = true;
    _lastNameLabel.hidden = true;
    _lastNameTxt.hidden = true;
    _IDLabel.hidden = true;
    _IDTxt.hidden = true;
    _studentProfessorButton.hidden = true;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hideAll:(id)sender{
    //buttons
    _addButton.hidden = TRUE;
    _removeButton.hidden = TRUE;
    _editButton.hidden = TRUE;
    _viewListButton.hidden = TRUE;
    //labels
    _welcomeLabel.hidden=TRUE;
}

- (IBAction)addButtonClicked:(UIButton *)sender{
    //things to show
    _firstNameLabel.hidden = false;
    _firstNameTxt.hidden = false;
    _lastNameLabel.hidden = false;
    _lastNameTxt.hidden = false;
    _IDLabel.hidden = false;
    _IDTxt.hidden = false;
    _studentProfessorButton.hidden = false;
    _majorLabel.hidden = false;
    _majorTxt.hidden = false;
    _gpaLabel.hidden = false;
    _gpaSlider.hidden = false;
    _sliderLabel.hidden = false;
    _gradYearLabel.hidden = false;
    _gradYearTxt.hidden = false;
    _cancelButton.hidden = false;
    _submitButton.hidden = false;
    
    
    
}

- (IBAction)segmentedStudentProfessor:(UISegmentedControl *)sender {
    //button for student
    if (sender.selectedSegmentIndex == 0) {
        //changing the text in the label to major
        NSString *plainText = [NSString stringWithFormat:@"Major: "];
        _majorLabel.text = plainText;
        //showing fields
        _majorLabel.hidden = false;
        _majorTxt.hidden = false;
        //set the placeholder text
        _majorTxt.placeholder = @"Enter Major";
        
        NSString *plainText1 = [NSString stringWithFormat:@"GPA: "];
        _gpaLabel.text = plainText1;
        _gpaLabel.hidden = false;
        _gpaSlider.hidden = false;
        _sliderLabel.hidden = false;
        
        _gradYearLabel.hidden = false;
        _gradYearTxt.hidden = false;
        _tenuredLabel.hidden = true;
        _tenuredSwitch.hidden = true;
        
    }
    else{
        //changing the text in the label to department
        NSString *plainText = [NSString stringWithFormat:@"Department: "];
        _majorLabel.text = plainText;
        //set the placeholder text
        _majorTxt.placeholder = @"Enter Department";
        //change the text for the gpa label
        NSString *plainText1 = [NSString stringWithFormat:@"Salary: "];
        _gpaLabel.text = plainText1;
        

        //hide graduation year info
        _gradYearLabel.hidden = true;
        _gradYearTxt.hidden = true;
        _tenuredLabel.hidden = false;
        _tenuredSwitch.hidden = false;
    }

}

- (IBAction)sliderChanged:(UISlider *)sender {
    //slider values for gpa
    if(_studentProfessorButton.selectedSegmentIndex == 0) {
        self.gpaSlider.minimumValue = 0;
        self.gpaSlider.maximumValue =4;
        int progressGPA = lround(sender.value);
        self.sliderLabel.text = [NSString stringWithFormat:@"%d", progressGPA];
    }
    //slider values for salary
    if (_studentProfessorButton.selectedSegmentIndex == 1){
        self.gpaSlider.minimumValue =10000;
        self.gpaSlider.maximumValue = 100000;
        int progress = lround(sender.value);
        self.sliderLabel.text = [NSString stringWithFormat:@"%d", progress];
    }
    
    
}


- (IBAction)editButton:(UIButton *)sender{
    //change text in firstName label to ID
    NSString *plainText = [NSString stringWithFormat:@"ID: "];
    _firstNameLabel.text = plainText;
    //show firstName info
    _firstNameLabel.hidden = false;
    _firstNameTxt.hidden = false;
    //set the placeholder text
    _firstNameTxt.placeholder = @"Enter ID";
    
    //show other information
    _lastNameLabel.hidden = true;
    _lastNameTxt.hidden = true;
    _IDLabel.hidden = true;
    _IDTxt.hidden = true;
    _studentProfessorButton.hidden = true;
    _cancelButton.hidden = false;
    _submitButton.hidden = false;
    
}

- (IBAction)removeButton:(UIButton *)sender{
    NSString *plainText = [NSString stringWithFormat:@"ID: "];
    _firstNameLabel.text = plainText;
    _firstNameLabel.hidden = false;
    _firstNameTxt.hidden = false;
    //set the placeholder text
    _firstNameTxt.placeholder = @"Enter ID";

    
    _lastNameLabel.hidden = true;
    _lastNameTxt.hidden = true;
    _IDLabel.hidden = true;
    _IDTxt.hidden = true;
    _studentProfessorButton.hidden = true;
    _cancelButton.hidden = false;
    _submitButton.hidden = false;
    
}
/*
- (IBAction)viewListButton:(UIButton *)sender{
    //show the names entered
}
 */


- (IBAction)cancelButtonClicked:(id)sender {
    
    _firstNameLabel.hidden = true;
    _firstNameTxt.hidden = true;
    _lastNameLabel.hidden = true;
    _lastNameTxt.hidden = true;
    _IDLabel.hidden = true;
    _IDTxt.hidden = true;
    _studentProfessorButton.hidden = true;
    _majorLabel.hidden = true;
    _majorTxt.hidden = true;
    _gpaLabel.hidden = true;
    _gpaSlider.hidden = true;
    _sliderLabel.hidden = true;
    
    _gradYearLabel.hidden = true;
    _gradYearTxt.hidden = true;
    _tenuredLabel.hidden = true;
    _tenuredSwitch.hidden = true;
    _cancelButton.hidden = true;
    _submitButton.hidden = true;
    
    //displays the initial interface
    _addButton.hidden = false;
    _removeButton.hidden = false;
    _editButton.hidden = false;
    _viewListButton.hidden = false;
    _welcomeLabel.hidden=false;
    
    
}

- (IBAction)submitButtonPressed:(id)sender{


    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure?" delegate:self cancelButtonTitle:@"No Way!" destructiveButtonTitle:@"Yes I'm sure!" otherButtonTitles:nil];
    
    [actionSheet showInView:self.view];
    //addPerson
    //NSString *theFirstName = _firstNameTxt.text;
    //NSString *theLastName = _lastNameTxt.text;
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{

    //if user presses the Student Button then display this alert
    if (_studentProfessorButton.selectedSegmentIndex == 0){
        if (buttonIndex != [actionSheet cancelButtonIndex]){
        NSString *msg = nil;
        
        if (self.gradYearTxt.text.length > 0)
            msg = [NSString stringWithFormat:
                   @"New student added"];
        else
            msg = @"Error";
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Message:"
                              message:msg
                              delegate:nil
                              cancelButtonTitle:@"Continue"
                              otherButtonTitles:nil];
        [alert show];
        }
    }
    
    //if user presses the Professor Button then display this alert
    if (_studentProfessorButton.selectedSegmentIndex == 1){
        if (buttonIndex != [actionSheet cancelButtonIndex]){
            NSString *msg = nil;
            //if the graduate TextField is empty call the alert and actionsheet
            if (self.gradYearTxt.text.length > 0)
                msg = [NSString stringWithFormat:
                       @"New professor added"];
            else
                msg = @"Error";
            
            UIAlertView *alert = [[UIAlertView alloc]
                                  initWithTitle:@"Message:"
                                  message:msg
                                  delegate:nil
                                  cancelButtonTitle:@"Continue"
                                  otherButtonTitles:nil];
            [alert show];
        }
        
    }
}


- (IBAction)backgroundTap:(id)sender{
    [self.firstNameTxt resignFirstResponder];
    [self.lastNameTxt resignFirstResponder];
    [self.IDTxt resignFirstResponder];
    [self.majorTxt resignFirstResponder];
    [self.gradYearTxt resignFirstResponder];
    
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    if (textField == _gradYearTxt){
        if (textField.text.length > 4) {
        UIAlertView *av = [[UIAlertView alloc]
                           initWithTitle:@"Entry Error"
                           message:@"You must enter less than 4 characters."
                           delegate:self
                           cancelButtonTitle:@"OK"
                           otherButtonTitles:@"Clear", nil];
        [av show];
            return NO;
        }
    }
    return YES;
}

@end
