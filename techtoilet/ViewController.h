#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#define IS_PAD  (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPad)

@interface ViewController : UIViewController{
    UILabel *labelFloor;
}

@end

