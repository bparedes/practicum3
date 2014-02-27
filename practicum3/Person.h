/*************************************************************************************************
 * File:   Person.h
 * Author: Calvin Chestnut
 * Edited from Person.h by Adjoa Darien
 *
 * Created on January 26, 2014
 * Last Modified Febuary 9, 2014
 *
 * Purpose: The Person class is the parent class from which the Student and Professor classes are derived.
 It allows access to and manipulation of attributes common to both students and professors: first name, last name and ID number.
 *
 * Algorithm:
 *      a) Constructor
 *
 *************************************************************************************************/

#import <Foundation/Foundation.h>

//Person is a subclass of NSObject
@interface Person : NSObject

    //Stores firstName
    @property (nonatomic, retain)   NSString* firstName;

    //Stores lastName
    @property (nonatomic, retain)   NSString* lastName;\

    //Stores person's ID number
    @property (nonatomic, assign)   int       ID;

    //Person no longer has Person* next
    //Person no longer has String type
    //These changes are due to more effective Obj-C methods (isType and NSMutableArray)

//  Constructors

/* Method: Person Constructor
 * Purpose - Create an instance of a Person object
 * Inputs -
    string firstIn - Set as firstName
    string lastIn - Set as lastName
    int idIn - Set as id
 * Output -
    none
 * Properties Modified-
    Person object is created
 */
-(id) initWithFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andId:(int)idIn;

/* Method: Person default Constructor
 * Purpose - Create an instance of a Person object
 * Inputs -
    none
 * Output -
    none
 * Properties Modified-
    Person object is created
 */
-(id) init;


@end
