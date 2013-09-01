#import <foundation/foundation.h>
#import "Employee.h"

// implementation part as i function definition

@implementation Employee
// all functions operate on  ivars, do not return anything.
-(void) print
{
	NSLog (@"Employee ID is %i", EmpID);
	NSLog (@"Employee Name is %@", EmpName);
	NSLog (@"Employee Department is %@", EmpDept);
}

-(void) setEmpID: (int) i
{
	EmpID = i;
}

-(void) setEmpName: (NSString *) n
{
	EmpName = n;
}

-(void) setEmpDept: (NSString *) d
{
	EmpDept = d;
}

@end
