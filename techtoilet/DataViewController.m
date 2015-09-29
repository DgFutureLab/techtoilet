#import "DataViewController.h"

@interface DataViewController ()

@end

@implementation DataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Data";

    // usage rate
    // - image
    UIImageView *imageViewUsageRate = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*0.2, -20, self.view.frame.size.width*0.6, self.view.frame.size.height*0.7)];
    imageViewUsageRate.contentMode = UIViewContentModeScaleAspectFit;
    UIImage *imageUsageRate = [UIImage imageNamed:@"usageRate.png"];
    imageViewUsageRate.image = imageUsageRate;
    [self.view addSubview:imageViewUsageRate];
    // - label
    UILabel *labelUsageRate = [[UILabel alloc] initWithFrame:CGRectMake(110, 50, 200, 100)];
    [labelUsageRate setFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:30]];
    labelUsageRate.text = @"Usage Rate";
    [self.view addSubview:labelUsageRate];
    
    // frequency of use
    // - image
    UIImageView *imageViewFrequencyOfUse = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*0.05, 280, self.view.frame.size.width*0.9, self.view.frame.size.height*0.7)];
    imageViewFrequencyOfUse.contentMode = UIViewContentModeScaleAspectFit;
    UIImage *imageFrequencyOfUse = [UIImage imageNamed:@"frequencyOfUse.png"];
    imageViewFrequencyOfUse.image = imageFrequencyOfUse;
    [self.view addSubview:imageViewFrequencyOfUse];
    // - label
    UILabel *labelFrequencyOfUse = [[UILabel alloc] initWithFrame:CGRectMake(80, 320, 250, 100)];
    [labelFrequencyOfUse setFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:30]];
    labelFrequencyOfUse.text = @"Frequency of Use";
    [self.view addSubview:labelFrequencyOfUse];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
