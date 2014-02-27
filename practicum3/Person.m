/*************************************************************************************************
 * File:   Person.m
 * Author: Calvin Chestnut
 * Edited from: Person.cpp by Adjoa Darien
 *
 * Created on January 26, 2014
 * Last Modified Feburary 9, 2014
 *
 * Purpose: The Person class is the parent class from which the Student and Professor classes are derived.
 It allows access to and manipulation of attributes common to both students and professors: first name, last name and ID number.
 *
 * Algorithm:
 *      a) Constructor
 *
 *************************************************************************************************/

#import "Person.h"

@implementation Person

@synthesize firstName, lastName, ID;

//Parameterized Constructor
-(id) initWithFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andId:(int)idIn{
    if (self = [super init]){
        firstName = firstNameIn;
        lastName = lastNameIn;
        ID = idIn;
        
        return (self);
    } else {
        return nil;
    }
}

//Basic Constructor
-(id) init {
    if (self = [super init]){
        firstName = @"firstName";
        lastName = @"lastName";
        ID = 000;
        
        return (self);
    } else {
        return nil;
    }
}



@end
