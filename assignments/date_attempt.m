#import<Foundation/Foundation.h>
#include<stdlib.h>
#include<time.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *memorypool = [[NSAutoreleasePool alloc]init];

	NSTimeInterval secondsperDay = 24*60*60;
   	int lp=0;
   	NSTimeInterval randomDate = 0;
   
	NSDate *now = [NSDate date];

	NSLog(@"Today's date is: %@", now);
	NSDate *dayAfterTomo = [[NSDate alloc] initWithTimeIntervalSinceNow:secondsperDay*2]; //today
	
   	NSLog(@"Day after tomorrow's date is: %@", dayAfterTomo); //day after tomorrow

   	NSDate *lastThursday = [NSDate dateWithNaturalLanguageString: @"Thursday last week"];
   	NSLog(@"Using natural language last Thursday's date is: %@",lastThursday);
   
	NSDate *dateGen = nil;	
  	secondsperDay = 24*3600; 
   	NSMutableArray *dateList = [[NSMutableArray alloc]init];

	NSLog(@"Random Dates: \n");
   
	for(lp = 0;lp < 5;lp++)
	{
		randomDate = secondsperDay* (rand()%5);
		dateGen = [[NSDate alloc] initWithTimeIntervalSinceNow:randomDate];
		[dateList addObject:dateGen];
		NSLog(@"%@", dateGen);
	}
   
	NSDate *haleDate = nil;
   
	for(id someDate in dateList)
	{

		if(haleDate == nil)      //finding oldest date
		{
			haleDate = someDate;
		}
		else if([haleDate compare:someDate] == NSOrderedDescending)
		{
			haleDate = someDate;
		}
	}
   
	NSLog(@"The oldest date in the list is: %@", haleDate);

   	int firstday = 0;
   	int tenthday = (firstday +2)%7;     //finding 10th	day
   
   	NSArray *dayListArray;
   	dayListArray = [NSArray arrayWithObjects: @"Sunday", @"Monday", @"Tuesday", @"Wednesday",@"Thursday",@"Friday",@"Saturday",nil];
   
   
   	NSLog(@"1st day of month is %@ & 10th day of month is %@\n",[dayListArray objectAtIndex:firstday],[dayListArray objectAtIndex:tenthday]);

	[memorypool release];
	return 0;
}
