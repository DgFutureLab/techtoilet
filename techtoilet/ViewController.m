#import "ViewController.h"

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
    
    // circle image
    int circleImageRadius = 40;
    CGColorRef colorVacant = [[UIColor colorWithRed:0.0 green:0.9 blue:1.0 alpha:1.0] CGColor];
    float borderWidth = 1.0;
    // - 1. penguin
    UIImageView *imageViewPenguin = [[UIImageView alloc] initWithFrame:CGRectMake(240, 239, circleImageRadius*2, circleImageRadius*2)];
    imageViewPenguin.contentMode = UIViewContentModeScaleAspectFit;
    UIImage *imagePenguin = [UIImage imageNamed:@"penguin.jpg"];
    imageViewPenguin.image = imagePenguin;
    imageViewPenguin.layer.cornerRadius = imageViewPenguin.frame.size.width / 2.f;
    imageViewPenguin.layer.masksToBounds = YES;
    imageViewPenguin.layer.borderColor = colorVacant;
    imageViewPenguin.layer.borderWidth = borderWidth;
    [self.view addSubview:imageViewPenguin];
    
    // - 2. bonsai
    UIImageView *imageViewBonsai = [[UIImageView alloc] initWithFrame:CGRectMake(240, 325, circleImageRadius*2, circleImageRadius*2)];
    imageViewBonsai.contentMode = UIViewContentModeScaleAspectFit;
    UIImage *imageBonsai = [UIImage imageNamed:@"bonsai.jpg"];
    imageViewBonsai.image = imageBonsai;
    imageViewBonsai.layer.cornerRadius = imageViewBonsai.frame.size.width / 2.f;
    imageViewBonsai.layer.masksToBounds = YES;
    imageViewBonsai.layer.borderColor = colorVacant;
    imageViewBonsai.layer.borderWidth = borderWidth;
    [self.view addSubview:imageViewBonsai];
    
    // - 3. box
    UIImageView *imageViewBox = [[UIImageView alloc] initWithFrame:CGRectMake(240, 412, circleImageRadius*2, circleImageRadius*2)];
    imageViewBox.contentMode = UIViewContentModeScaleAspectFit;
    UIImage *imageBox = [UIImage imageNamed:@"box.jpg"];
    imageViewBox.image = imageBox;
    imageViewBox.layer.cornerRadius = imageViewBox.frame.size.width / 2.f;
    imageViewBox.layer.masksToBounds = YES;
    imageViewBox.layer.borderColor = colorVacant;
    imageViewBox.layer.borderWidth = borderWidth;
    [self.view addSubview:imageViewBox];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
