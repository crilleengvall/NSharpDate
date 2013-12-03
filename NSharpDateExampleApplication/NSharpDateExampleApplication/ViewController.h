#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *methodsTable;
@property (strong, nonatomic) NSArray * dateList;
@property (strong, nonatomic) NSArray * methodAndPropertyList;

@end
