//
//  Student.h
//
//  Created by Chris Kondrat on 02/09/14.
//  Last Modified: Wed, February 12, 2014
//  Original Creator: Scott Charnley
//
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

#import <Foundation/Foundation.h>
#import "Person.h"


@interface Student : Person
//PARAMETERS
    //Stores name of major
    @property (nonatomic, retain)   NSString* major;
    //Stores graduation year
    @property (nonatomic, assign)   int      year;
    //Stores GPA
    @property (nonatomic, assign)   double   gpa;

//METHODS


/* Function: init()
 * Purpose: Creates an instance of a Student object
 * Input:
    none
 * Output:
    none
 * Properties Modified: 
    A Student object is created with default values
 */
-(id) init;

//Constructor
/* Function: init()
 * Purpose: Creates an instance of a Student object
 * Input:
    none
 * Output:
    none
 * Properties Modified: A Student object is created with user specific inputs
 */
-(id) initWithMajor:(NSString *)majorIn andYear:(int)yearIn andGpa:(double)gpaIn andfirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn;

/* Function: getInfo
 * Purpose: Returns an NSString* containing the users information (GPA, Year of Graduation, Major)
 * Input: 
    none
 * Output: 
    none
 * Properties Modified:
    none
 */
-(NSString*) getInfo;


@end
