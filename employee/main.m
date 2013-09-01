#import <foundation/foundation.h>
#import "Employee.h"
int main (int argc, char *argv[])
{
Employee *myEmp;

myEmp = [[Employee alloc]init];

[myEmp setEmpID: 1];
[myEmp setEmpName:@"Juhi Khandelwal"];
[myEmp setEmpDept:@"ISE"];

NSLog (@"Employee Info:");
[myEmp print];
[myEmp release];
return 0;
}