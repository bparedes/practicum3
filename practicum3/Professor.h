//
//  Person.h
//
//  Created by Chris Kondrat on 02/09/14.
//  Last Modified: Wed, February 12, 2014
//  Original Creator: Scott Charnley
//
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

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Professor : Person
//PARAMETERS
    //Stores salary
    @property (nonatomic, assign)   double salary;
    //Stores tenure status
    @property (nonatomic, retain)   NSString* tenured;
    //Stores  which department the created Professor is from
    @property (nonatomic, retain)   NSString* dept;

//METHODS

/* Function: init
 * Purpose: Creates an instance of a Professor object
 * Input:
    none
 * Output:
    none
 * Properties Modified: 
    A Professor object is created with default values
 */
-(id) init;

/* Function: initWithsalary
 * Purpose: Creates an instance of a Professor object
 * Input:
    none
 * Output:
    none
 * Properties Modified: 
    A Professor object is created with user input
 */
-(id) initWithsalary:(double)salaryIn andtenured:(NSString *)tenuredIn anddept:(NSString*)deptIn andfirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn;

/* Function: getInfo
 * Purpose: Returns an NSString* containing the users information (Salary, Tenure Status and Department)
 * Input: none
 * Output:
    NSString Info
 * Properties Modified:
    none
 */
-(NSString*) getInfo;

@end
