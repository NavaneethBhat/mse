#import <Foundation/Foundation.h>
 
@interface Employee: NSObject
{
	int EmpID;
	NSString *EmpName;
	NSString *EmpDept;
}

-(void) print;
-(void) setEmpID: (int)i;
-(void) setEmpName: (NSString*) n;
-(void) setEmpDept: (NSString*) d;

@end
