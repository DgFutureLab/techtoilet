#import "ViewController.h"
#import "DataViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // navigation setting
    self.title = @"techtoilet";
    labelFloor = [[UILabel alloc] initWithFrame:CGRectMake(0, IS_PAD?200:100, IS_PAD?600:300, IS_PAD?200:100)];
    [labelFloor setText:@"11F"];
    [labelFloor setTextColor:[UIColor darkGrayColor]];
    [labelFloor setFont:[UIFont fontWithName:IS_PAD?@"HelveticaNeue-Thin":@"HelveticaNeue-UltraLight" size:IS_PAD?240:100]];
    [self.view addSubview:labelFloor];
    
    // toilet background image
    UIImageView *imageViewBackground = [[UIImageView alloc] initWithFrame:CGRectMake(0, 175, self.view.frame.size.width, self.view.frame.size.height*0.7)];
    imageViewBackground.contentMode = UIViewContentModeScaleAspectFit;
    UIImage *imageBackground = [UIImage imageNamed:@"11.png"];
    imageViewBackground.image = imageBackground;
    [self.view addSubview:imageViewBackground];
    
    // circle buttons
    float buttonCircleRadius = 40;
    CGColorRef colorVacant = [[UIColor colorWithRed:0.0 green:0.9 blue:1.0 alpha:1.0] CGColor];
    
    // - 1. penguin
    buttonPenguin = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonPenguin setImage:[UIImage imageNamed:@"penguin.jpg"] forState:UIControlStateNormal];
    [buttonPenguin addTarget:self action:@selector(buttonPenguinTapped:) forControlEvents:UIControlEventTouchUpInside];
    buttonPenguin.frame = CGRectMake(240, 239, buttonCircleRadius*2, buttonCircleRadius*2);
    buttonPenguin.clipsToBounds = YES;
    buttonPenguin.layer.cornerRadius = buttonCircleRadius;
    buttonPenguin.layer.borderColor = colorVacant;
    buttonPenguin.layer.borderWidth=2.0f;
    [self.view addSubview:buttonPenguin];
    
    // - 2. bonsai
    UIButton *buttonBonsai = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonBonsai setImage:[UIImage imageNamed:@"bonsai.jpg"] forState:UIControlStateNormal];
    [buttonBonsai addTarget:self action:@selector(buttonBonsaiTapped:) forControlEvents:UIControlEventTouchUpInside];
    buttonBonsai.frame = CGRectMake(240, 325, buttonCircleRadius*2, buttonCircleRadius*2);
    buttonBonsai.clipsToBounds = YES;
    buttonBonsai.layer.cornerRadius = buttonCircleRadius;
    buttonBonsai.layer.borderColor = colorVacant;
    buttonBonsai.layer.borderWidth=2.0f;
    [self.view addSubview:buttonBonsai];
    
    // - 3. box
    UIButton *buttonBox = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonBox setImage:[UIImage imageNamed:@"box.jpg"] forState:UIControlStateNormal];
    [buttonBox addTarget:self action:@selector(buttonBoxTapped:) forControlEvents:UIControlEventTouchUpInside];
    buttonBox.frame = CGRectMake(240, 412, buttonCircleRadius*2, buttonCircleRadius*2);
    buttonBox.clipsToBounds = YES;
    buttonBox.layer.cornerRadius = buttonCircleRadius;
    buttonBox.layer.borderColor = colorVacant;
    buttonBox.layer.borderWidth=2.0f;
    [self.view addSubview:buttonBox];
    
    // timer
    [NSTimer scheduledTimerWithTimeInterval:0.5f target:self selector:@selector(update:) userInfo:nil repeats:YES];
    
    // appDelegate
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    settingData = [defaults objectForKey:@"cache/setting"];
//    if (!settingData) {
//        NSLog(@"%@", @"ViewController_viewDidLoad: no setting data in cache");
//        _minimumWaterLevel = 0;
//        _currentSite = [[[[appDelegate getData:@"sites"] objectForKey:@"objects"][0] objectForKey:@"id"] intValue];
//        _demo = false;
//    }else{
//        NSLog(@"%@", settingData);
//        _currentSite = [[settingData objectForKey:@"site"] intValue];
//        _minimumWaterLevel = [[settingData objectForKey:@"minimumWaterLevel"] intValue];
//        _demo = [[settingData objectForKey:@"demo"] boolValue];
//    }
}

-(void)update:(NSTimer*)timer{
    NSLog(@"update");
    NSDictionary *data = [appDelegate getData:nil];
    NSLog(@"data: %d", [[[data valueForKey:@"objects"][0] valueForKey:@"value"] boolValue]);
    bool toiletStatus = [[[data valueForKey:@"objects"][0] valueForKey:@"value"] boolValue];
    if (toiletStatus) {
        // change image to occupied
        [buttonPenguin setImage:[UIImage imageNamed:@"penguin_occupied.jpg"] forState:UIControlStateNormal];
    }else{
        // change image to vacant
        [buttonPenguin setImage:[UIImage imageNamed:@"penguin.jpg"] forState:UIControlStateNormal];
    }
}

- (void)buttonPenguinTapped:(UIButton*)tappedButton{
    NSLog(@"buttonPenguin tapped");
    DataViewController *dataViewController = [[DataViewController alloc] init];
    [self.navigationController pushViewController:dataViewController animated:YES];
}

- (void)buttonBonsaiTapped:(UIButton*)tappedButton{
    NSLog(@"buttonBonsai tapped");
    DataViewController *dataViewController = [[DataViewController alloc] init];
    [self.navigationController pushViewController:dataViewController animated:YES];
}

- (void)buttonBoxTapped:(UIButton*)tappedButton{
    NSLog(@"buttonBox tapped");
    DataViewController *dataViewController = [[DataViewController alloc] init];
    [self.navigationController pushViewController:dataViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
