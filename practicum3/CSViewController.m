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
    _addButton.hidden = TRUE;
    _removeButton.hidden = TRUE;
    _editButton.hidden = TRUE;
    _viewListButton.hidden = TRUE;
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
    
    //addPerson
    //NSString *theFirstName = _firstNameTxt.text;
    //NSString *theLastName = _lastNameTxt.text;
    
    
}

- (IBAction)segmentedStudentProfessor:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        //changing the text in the label to major
        NSString *plainText = [NSString stringWithFormat:@"Major: "];
        _majorLabel.text = plainText;
        //showing fields
        _majorLabel.hidden = false;
        _majorTxt.hidden = false;
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
        
        //change the text for the gpa label
        NSString *plainText1 = [NSString stringWithFormat:@"Salary: "];
        _gpaLabel.text = plainText1;

        _tenuredLabel.hidden = false;
        _tenuredSwitch.hidden = false;
    }

}

- (IBAction)sliderChanged:(UISlider *)sender {
    //updating the slider for gpa
    int progress = lround(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", progress];
}

- (IBAction)editButton:(UIButton *)sender{
    NSString *plainText = [NSString stringWithFormat:@"ID: "];
    _firstNameLabel.text = plainText;
    _lastNameLabel.hidden = true;
    _lastNameTxt.hidden = true;
    _IDLabel.hidden = true;
    _IDTxt.hidden = true;
    _studentProfessorButton.hidden = true;
    
}

- (IBAction)removeButton:(UIButton *)sender{
    NSString *plainText = [NSString stringWithFormat:@"ID: "];
    _firstNameLabel.text = plainText;
    _lastNameLabel.hidden = true;
    _lastNameTxt.hidden = true;
    _IDLabel.hidden = true;
    _IDTxt.hidden = true;
    _studentProfessorButton.hidden = true;
    
}

- (IBAction)viewListButton:(UIButton *)sender{
    //show the names entered
}


@end
