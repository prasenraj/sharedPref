//
//  Shared.h
//  linphone
//
//  Created by Dayal on 28/07/2017.
//
//

#import <Foundation/Foundation.h>


@interface Shared : NSObject

+(id)sharedManager;






@property(nonatomic,strong) NSString *s_mobileNumber;
@property(nonatomic,strong) NSString *s_userID;
@property(nonatomic,strong) NSString *s_ticket;


@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (strong) NSMutableArray *devices;

@end
