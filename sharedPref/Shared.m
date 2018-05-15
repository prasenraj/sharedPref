//
//  Shared.m
//  linphone
//
//  Created by Dayal on 28/07/2017.
//
//

#import "Shared.h"
#import <CoreData/CoreData.h>
@implementation Shared

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    self.managedObjectContext = [delegate managedObjectContext];
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

//static NSString* const FixedDomain = @"TextFieldKey";
+ (id)sharedManager {
    static Shared *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}

- (id)init {
    if (self = [super init]) {
        
        // alloc or set object here
        }
        return self;
    }


@end
