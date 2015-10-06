#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "AppDelegate.h"

#define IS_PAD  (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPad)

@interface ViewController : UIViewController{
    AppDelegate *appDelegate;
    UILabel *labelFloor;
    UIButton *buttonPenguin;
}

@end

