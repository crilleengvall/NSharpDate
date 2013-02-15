#import "ViewController.h"
#import "NSDate+NSharpDate.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize methodsTable = _methodsTable;
@synthesize dateList = _dateList;
@synthesize methodAndPropertyList = _methodAndPropertyList;

-(void)createDateList
{
    NSDate *date = [NSDate date];
    NSArray *methodsResult = [[NSArray alloc] initWithObjects:
                    [date stringByFormat:@"yyyy-MM-dd"],
                    [date stringByShortTimeFormat],
                    [date stringByShortDateFormat],
                    [date stringByLongDateFormat],
                    [date stringByLongTimeFormat]
                     
                     , nil];
    
    NSArray *propertyResult = [[NSArray alloc] initWithObjects:
                               
                               date.dayOfWeek, 
                               [NSString stringWithFormat:@"%d", date.day],
                               [NSString stringWithFormat:@"%d", date.dayOfYear],
                               [NSString stringWithFormat:@"%d", date.hour],
                               [NSString stringWithFormat:@"%d", date.milliseconds],
                               [NSString stringWithFormat:@"%d", date.minute],
                               [NSString stringWithFormat:@"%d", date.month],
                               [NSString stringWithFormat:@"%d", date.second]
                               ,nil];
    
    self.dateList = [[NSArray alloc] initWithObjects:methodsResult, propertyResult, nil];
}

-(void)createMethodAndPropertyDetailList
{
    NSArray *methodNames = [[NSArray alloc]initWithObjects:
                            @"stringByFormat:",
                            @"stringByShortTimeFormat",
                            @"stringByShortDateFormat",
                            @"stringByLongDateFormat",
                            @"stringByLongTimeFormat"
                            , nil];
    
    NSArray *propertyNames = [[NSArray alloc] initWithObjects:
                              @"DayOfWeek",
                              @"Day",
                              @"DayOfYear",
                              @"Hour",
                              @"Milliseconds",
                              @"Minute",
                              @"Month",
                              @"Second"
                              , nil];
    
    self.methodAndPropertyList = [[NSArray alloc]initWithObjects:methodNames, propertyNames, nil];
}

-(void)viewWillAppear:(BOOL)animated
{
    [self createDateList];
    [self createMethodAndPropertyDetailList];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setMethodsTable:nil];
    self.dateList = nil;
    self.methodAndPropertyList = nil;
    [super viewDidUnload];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.dateList objectAtIndex:section] count];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.dateList count];
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"Methods";
            break;
        case 1:
            return @"Properties";
            break;
            
        default:
            break;
    }
    return nil;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"date"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"date"];
    }
   
    cell.textLabel.text = [[self.dateList objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [[self.methodAndPropertyList objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    return cell;
}





@end
