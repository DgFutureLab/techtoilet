#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(NSDictionary *)getData:(NSString*)parameter{
    NSLog(@"AppDelegate-getData");
    // get data
    NSString *url;
    if (parameter) {
        url = [@"http://satoyamacloud.com/" stringByAppendingString: parameter];
    }else{
        url = @"http://satoyamacloud.com/readings?sensor_id=10";
    }
    //NSURLからNSURLRequestを作る
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    //サーバーとの通信を行う
    NSData *json = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    if (json != nil) {
        NSLog(@"AppDelegate-getData: succussed");
        // read json data
        NSDictionary *result = [NSJSONSerialization JSONObjectWithData:json options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"data: %d", [[[result valueForKey:@"objects"][0] valueForKey:@"value"] boolValue]);
//        //ローカルに保存
//        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//        NSData *dataSave = [NSKeyedArchiver archivedDataWithRootObject:result];
//        if ([[result valueForKey:@"status"] intValue] != 429) {
//            [defaults setObject:dataSave forKey:[@"cache/node/" stringByAppendingString:parameter]];
//            BOOL successful = [defaults synchronize];
//            if (successful) {
//                NSLog(@"AppDelegate-getDistance: saved data successfully.");
//            }
//            return result;
//        }else{
//            //too many requests
//            NSLog(@"error: %@", result);
//            NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:[@"cache/node/" stringByAppendingString:parameter]];
//            NSDictionary *savedDictionary = [NSKeyedUnarchiver unarchiveObjectWithData:data];
//            if (savedDictionary) {
//                return savedDictionary;
//            } else {
//                NSLog(@"AppDelegate-getDistance: %@", @"no data in cache.");
//                return 0;
//            }
//        }
    }else{
        NSLog(@"AppDelegate-getData: failed");
//        NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:[@"cache/node/" stringByAppendingString:parameter]];
//        NSDictionary *savedDictionary = [NSKeyedUnarchiver unarchiveObjectWithData:data];
//        if (savedDictionary) {
//            return savedDictionary;
//        } else {
//            NSLog(@"AppDelegate-getDistance: %@", @"no data in cache.");
//            return 0;
//        }
    }
    
    NSDictionary *foo;
    return foo;
}

@end
