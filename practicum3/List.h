/*************************************************************************************************
 * File:   List.cpp
 * Author: Matthew Kercher
 *
 * Created on January 26, 2014
 * Last Modified by John Huttlinger
 * Differences in functionality:
    * List class no longer uses a linked list. NSMutableArray is used instead
*************************************************************************************************/
#import <Foundation/Foundation.h>
#import "Person.h"

@interface List : NSObject

@property (nonatomic, retain) NSMutableArray *personList;

/*Purpose: constructor
 *Inputs:
    none
  *Outputs:
    none
  *Properties modified:
    NSMutableArray *personList
 */
-(id) init;

/*Purpose: creates new student object and adds new object to the list
 *Inputs:
    NSString majorIn
    int yearIn
    double gpaIn
    NSString firstNameIn
    NSString lastNameIn
    int idIn
 *Outputs:
    none
 *Properties modified:
    NSMutableArray *personList
*/
-(void) addStudentWithMajor: (NSString *)majorIn andYear:(int)yearIn andGpa:(double)gpaIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn;

/*Purpose: creates new professor object and adds new object to the list
 *Inputs:
    double salaryIn
    NSString tenuredIn
    NSString deptIn
    NSString firstNameIn
    NSString lastNameIn
    int idIn
 *Outputs:
    none
 *Properties modified:
    NSMutableArray *personList
 */
-(void) addProfessorWithSalary:(double)salaryIn andTenured:(NSString *)tenuredIn andDept:(NSString*)deptIn andFirstName:(NSString *)firstNameIn andLastName:(NSString *)lastNameIn andID:(int)idIn;

/*Purpose: remove person object with specified ID from the list. Returns a BOOL indicating success or failure
 *Inputs:
    int idIn
 *Outputs:
    BOOL found
 Properties modified:
    NSMutableArray *personList
 */
-(BOOL) removeWithID: (int)idIn;

/*Purpose: creates a string of all the details of objects in the list or returns empty string if list is empty
 *Inputs:
    none
 *Outputs:
    NSString
 *Properties Modified:
    none
 */
-(NSString *) toString;

/**********GETTERS*********/

/*Purpose: Returns first name from a specified ID or an empty string if not found
 *Inputs:
    int idIn
 *Outputs:
    NSString
 *Properties Modified:
    none
 */
-(NSString *) getFirstNameFromID: (int) idIn;

/*Purpose: Returns last name from a specified ID or an empty string
 *Inputs:
    int idIn
 *Outputs:
    NSString
 *Properties modified:
    none
 */
-(NSString *) getLastNameFromID: (int) idIn;

/*Purpose: get details of an object with specified ID. returns empty string if not found
 *Inputs:
    int idIn
 *Outputs:
    NSString
 *Properties modified:
    none
 */
-(NSString *) getDetailsFromID: (int) idIn;

/*Purpose: get ID from an object with specified first and last name. returns 0 if not found.
 *Inputs:
    NSString firstNameIn
    NSString lastNameIn
 *Outputs:
    int
 *Properties modifed:
    none
 */
-(int) getIDFromFirstName: (NSString *) firstNameIn andLastName: (NSString *) lastNameIn;

@end
