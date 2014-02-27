//
//  List.m
//  prac2
//
//  Created by lab on 2/13/14.
//  Copyright (c) 2014 lab. All rights reserved.
//

#import "List.h"
#import "Person.h"
#import "Student.h"
#import "Professor.h"


@implementation List

-(id) init {
    if(self = [super init]){
        //initialize NSMutableArray
        _personList = [[NSMutableArray alloc] init];
        return (self);
    }
    else{
        return nil;
    }
}

-(void) addStudentWithMajor: (NSString *)majorIn andYear:(int)yearIn andGpa:(double)gpaIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn{
    //create new Student object and add to NSMutableArray personList
    [_personList addObject: [[Student alloc] initWithMajor:majorIn andYear:yearIn andGpa:gpaIn andfirstName:firstNameIn andLastName:lastNameIn andID:idIn]];
}

-(void) addProfessorWithSalary:(double)salaryIn andTenured:(NSString *)tenuredIn andDept:(NSString*)deptIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn{
    //create new Professor object and add to NSMutableAraay personList
    [_personList addObject:[[Professor alloc] initWithsalary:salaryIn andtenured:tenuredIn anddept:deptIn andfirstName:firstNameIn andLastName:lastNameIn andID:idIn]];
}

-(BOOL) removeWithID:(int)idIn{
    BOOL found = NO;
    //iterate through NSMutableArray personList
    for(int i=0;i<[_personList count];i++){
        //compare the specified ID to the ID of each object until object is found or end of list
        if( ((Person *)[_personList objectAtIndex:i]).ID == idIn){
            //remove object from list
            [_personList removeObjectAtIndex:i];
            found=YES;
        }
    }
    return found;
}

-(NSString *) toString{
    //create NSMutableString listString (NSMutableString has an appendString function)
    NSMutableString *listString = [NSMutableString string];
    int i=0;
    //iterate through NSMutableArray personList
    for(Person *thing in _personList){
        //check if each object is a Professor
        if([thing isKindOfClass:[Professor class]]){
            //append objects details to NSMutableString listString
            [listString appendString:[((Professor*)[_personList objectAtIndex:i]) getInfo]];
            [listString appendString:@"\n"];
        }
        //if not a Professor, object must be Student
        else{
            //append object's details to NSMutableString listString
            [listString appendString:[((Student*)[_personList objectAtIndex:i]) getInfo]];
            [listString appendString:@"\n"];
        }
        i++;
    }
    if(i==0){
        return @"No entries to display";
    }
    //convert NSMutableString to NSString and return it
    NSString *final = [NSString stringWithString:listString];
    return final;
}

-(NSString *) getFirstNameFromID:(int)idIn{
    //iterate through NSMutableArray untilobject with specified ID is found
    //return first name or empty string if not found
    for(int i=0;i<[_personList count];i++){
        if( ((Person *)[_personList objectAtIndex:i]).ID == idIn){
            return ((Person *)[_personList objectAtIndex:i]).firstName;
        }
    }
    return @"Name not found";
}

-(NSString *) getLastNameFromID:(int)idIn{
    //iterate through NSMutableArray until object with specified ID is found
    //return last name or empty string if not found
    for(int i=0;i<[_personList count];i++){
        if( ((Person *)[_personList objectAtIndex:i]).ID == idIn){
            return ((Person *)[_personList objectAtIndex:i]).lastName;
        }
    }
    return @"Name not found";
}

-(NSString *) getDetailsFromID:(int)idIn{
    int i=0;
    for(Person *thing in _personList){
        //iterate through NSMutableArray personList
        if(((Person*)[_personList objectAtIndex:i]).ID == idIn){
            //check if each object is a Professor
            if([thing isKindOfClass:[Professor class]]){
                //return object's details
                return [((Professor*)[_personList objectAtIndex:i]) getInfo];
            }
            //if not a Professor, object must be Student
            else{
                //return object's details
                return [((Student*)[_personList objectAtIndex:i]) getInfo];
            }
        }
        i++;
    }
    //return empty string if object is not found.
    return @"ID not found";
}

-(int) getIDFromFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn{
    //iterate through NSMutableArray until object with specified first and last name is found or end of array
    for(int i=0;i<[_personList count];i++){
        if((((Person*)[_personList objectAtIndex:i]).firstName==firstNameIn)&&(((Person*)[_personList objectAtIndex:i]).lastName==lastNameIn)){
            //set idOut to ID of specified object
            return ((Person*)[_personList objectAtIndex:i]).ID;
        }
    }
    return 0;
}


@end
