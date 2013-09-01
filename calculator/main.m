#import <foundation/foundation.h>
#import "calci.h"
int main (int argc, char *argv[])
{

calci *cacli=[[calci alloc]init];
[cacli setOp1:100];
[cacli setOp2:10];
[cacli Add];
[cacli Sub];
[cacli Mult];
[cacli Div];
[cacli release];
return 0;
}
