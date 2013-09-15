#import <Foundation/Foundation.h>
#import "phonebook.h"
#import "phonecard.h"

int main()
{
	NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init];
	phonecard *p1=[[phonecard alloc]init];
	phonecard *p2=[[phonecard alloc]init];
	phonecard *p3=[[phonecard alloc]init];

	[p1 setName:@"mad"];
	[p1 setEmail:@"mad@gmail.com"];
	[p1 setNo:1];
	
	[p2 setName:@"nag"];
	[p2 setEmail:@"nag@gmail.com"];
	[p2 setNo:2];

	[p3 setName:@"abhi"];
	[p3 setEmail:@"abhi@gmail.com"];
	[p3 setNo:3];
	
	phonebook *p_book=[[phonebook alloc]initWithName:@"Phone book maintained by Navaneeth"];
	
	[p_book addobj:p1];
	[p_book addobj:p2];
	[p_book addobj:p3];
	[p_book findByName:@"abhi"];
	[p_book print];
	[p_book deleteContact:@"nag"];
	[p_book print];
	[myPool drain];
	return 0;
}
