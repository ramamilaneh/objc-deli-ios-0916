//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSMutableString *mDeliString = [NSMutableString new];
    
    if (deliLine.count == 0) {
        [mDeliString appendString:@"The line is currently empty."];
        return [NSString stringWithString:mDeliString];
    }
    
    [mDeliString appendString:@"The line is:"];
    for (NSUInteger i = 0; i < deliLine.count; i++) {
        [mDeliString appendFormat:@"\n%lu. %@", i + 1, deliLine[i]];
    }
    
    return [NSString stringWithString:mDeliString];
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}
-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *servedCustomer = [deliLine firstObject];
    [deliLine removeObjectAtIndex:0];
    return servedCustomer;
}


@end
