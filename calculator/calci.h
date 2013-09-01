#include<foundation/foundation.h>
@interface Calci:NSObject
{
	int op1;
	int op2;

}
-(void)setOp1:(int)a;
-(void)setOp2:(int)b;
-(void)Add;
-(void)Sub;
-(void)Mult;
-(void)Div;

@end
