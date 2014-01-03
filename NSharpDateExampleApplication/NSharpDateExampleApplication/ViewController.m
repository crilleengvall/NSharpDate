#import "ViewController.h"
#import "NSDate+NSharpDate.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)createDateList
{
    NSDate *date = [NSDate date];
    NSDate *dateTwoMonthsAgo = [date newDateByAddingMonths:-2];
    NSDate *dateInThreeMonths = [date newDateByAddingMonths:3];
    NSArray *methodsResult = @[[date stringByFormat:@"yyyy-MM-dd"],
                    [date stringByShortTimeFormat],
                    [date stringByShortDateFormat],
                    [date stringByLongDateFormat],
                    [date stringByLongTimeFormat],
                    [NSString stringWithFormat:@"%d", [date monthsSince:dateTwoMonthsAgo]],
                    [NSString stringWithFormat:@"%d", [date monthsTo:dateInThreeMonths]],
                    [NSString stringWithFormat:@"%s", [date isToday] ? "YES" : "NO"]
                    ];
    
    
    NSArray *propertyResult = @[date.dayOfWeek, 
                               [NSString stringWithFormat:@"%d", date.day],
                               [NSString stringWithFormat:@"%d", date.dayOfYear],
                               [NSString stringWithFormat:@"%d", date.hour],
                               [NSString stringWithFormat:@"%d", date.milliseconds],
                               [NSString stringWithFormat:@"%d", date.minute],
                               [NSString stringWithFormat:@"%d", date.month],
                               [NSString stringWithFormat:@"%d", date.second]];
    
    self.dateList = @[methodsResult, propertyResult];
}

-(void)createMethodAndPropertyDetailList
{
    NSArray *methodNames = @[@"stringByFormat:yyyy-MM-dd",
                            @"stringByShortTimeFormat",
                            @"stringByShortDateFormat",
                            @"stringByLongDateFormat",
                            @"stringByLongTimeFormat",
                            @"monthsSince",
                            @"monthsTo",
                            @"isToday"];
    
    NSArray *propertyNames = @[@"DayOfWeek",
                              @"Day",
                              @"DayOfYear",
                              @"Hour",
                              @"Milliseconds",
                              @"Minute",
                              @"Month",
                              @"Second"];
    
    self.methodAndPropertyList = @[methodNames, propertyNames];
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
    return [(self.dateList)[section] count];
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
       cell.textLabel.text = (self.dateList)[indexPath.section][indexPath.row];
    cell.detailTextLabel.text = (self.methodAndPropertyList)[indexPath.section][indexPath.row];
    return cell;
}

@end