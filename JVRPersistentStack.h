//
//  JVRPersistentStack.h
//
//  Created by Jozsef Vesza on 23/05/14.
//
//

@class NSManagedObjectContext;

/**
 *  Encapsulates Persistent stack setup
 */
@interface JVRPersistentStack : NSObject

/**
 *  The managed object context object to be used later on by the application
 */
@property (nonatomic,strong,readonly) NSManagedObjectContext *managedObjectContext;

/**
 *  Initializer
 *
 *  @param storeURL The URL of the persistent store
 *  @param modelURL The URL of the managed object model
 *
 *  @return An initialized instance of JVRPersistentStack
 */
- (id)initWithStoreURL:(NSURL *)storeURL modelURL:(NSURL *)modelURL;

@end
