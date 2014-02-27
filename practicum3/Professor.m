//
//  Professor.m
//  
//  Created by Chris Kondrat on 02/10/14.
//  Last Modified: Wed, February 12, 2014
//  Original Creator: Scott Charnley

/*
 PURPOSE:
    The Professor class is a child of the class Person. It creates
    and allows for the manipulation of the childs following parameters:
    Salary - The amount earned by the teacher
    Tenured - The tenured status of the teacher
    Dept - The department of which the teacher is part of
 */

//ALGORITHM
// - Constructor
// - getInfo

#import "Professor.h"

@implementation Professor

@synthesize salary, tenured, dept;

//DEFAULT CONSTRUCTOR
-(id) init {
    if (self = [super init]){
        dept = @"N/A";
        tenured = @"N/A";
        salary = 0.0;
        
        return (self);
    } else {
        return nil;
    }
}

//CONSTRUCTOR
-(id) initWithsalary:(double)salaryIn andtenured:(NSString *)tenuredIn anddept:(NSString*)deptIn andfirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn{
    if (self = [super initWithFirstName:firstNameIn andLastName:lastNameIn andId:idIn]){
        salary = salaryIn; //Currently earned salary
        tenured = tenuredIn; //Tenure status
		dept = deptIn; //Department of the Professor
        
        return (self);
    } else {
        return nil;
    }
}

//Returns all information in an NSString pertaining to a Professor (First and Last name, ID, Salary, Tenure status and department)
-(NSString *)getInfo{
	NSString* info = [NSString stringWithFormat:@"Last Name: %@, First Name: %@, \n ID: %d, Salary: %.2f,\n Tenured: %@, Department: %@", self.lastName, self.firstName, self.ID, salary, tenured, dept];
    return info;
}

@end
