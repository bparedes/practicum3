//
//  Student.m
//  
//  Created by Chris Kondrat on 02/10/14.
//  Last Modified: Wed, February 12, 2014
//  Original Creator: Scott Charnley

/*
 PURPOSE:
 The Student class is a child of the class Person. It creates
 and allows for the manipulation of the childs following parameters:
 Major - The major the student is part of
 Year - The expected graduation date of the student
 GPA - The students current Grade Point Average
 */

//ALGORITHM
// - Constructor
// - getInfo

#import "Student.h"

@implementation Student

@synthesize major, year, gpa;


//DEFAULT CONSTRUCTOR
-(id) init {
    if (self = [super init]){
        major = @"N/A";
        year = 0000;
        gpa = 0.0;
        
        return (self);
    } else {
        return nil;
    }
}

//CONSTRUCTOR
-(id) initWithMajor:(NSString *)majorIn andYear:(int)yearIn andGpa:(double)gpaIn andfirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn {
    if (self = [super initWithFirstName:firstNameIn andLastName:lastNameIn andId:idIn ]){
        major = majorIn; //Current major of the student
        year = yearIn; //Expected graduation year
        gpa = gpaIn; //Current GPA
        
        return (self);
    } else {
        return nil;
    }
}

//Returns all information in an NSString pertaining to a Student (First and Last name, ID, GPA, Graduation Year and Major)
-(NSString*)getInfo {
    NSString* info;
    info = [NSString stringWithFormat:@"Last Name: %@, First Name: %@,\n ID: %d, GPA: %.2f,\n Year: %d, Major: %@", self.lastName, self.firstName, self.ID, gpa, year, major];
    return info;
}




@end
