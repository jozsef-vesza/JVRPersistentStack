### JVRPersistentStack

An easy-to-use persistent stack class for apps using Core Data. You can easily initialize a persistent stack using the URL of your data model (.momd file) and the URL of your desired persistent store.

#### Setting up a persistent stack

This example shows you how to set up a persistent stack in your application's app delegate, then pass the managed object context to the first view controller.

```objc
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    JVRPersistentStack *initialStack = [[JVRPersistentStack alloc] initWithStoreURL:[self storeURL] modelURL:[self modelURL]];
    UINavigationController *navController = (UINavigationController *)self.window.rootViewController;
    
    MyViewController *mainController = (MyViewController *)navController.topViewController;
    mainController.managedObjectContext = initialStack.managedObjectContext;
    
    return YES;
}

- (NSURL *)storeURL {
    NSURL *documentsDirectory = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:YES error:NULL];
    return [documentsDirectory URLByAppendingPathComponent:@"db.sqlite"];
}

- (NSURL *)modelURL {
    return [[NSBundle mainBundle] URLForResource:@"MyDataModelFile" withExtension:@"momd"];
}
```

#### Installation

[CocoaPods](cocoapods.org) os a great way to add third party libraries to your project. You can install `JVRPersistentStack` with the following line in your podfile:

```ruby
  pod 'JVRPersistentStack'
```

`JVRPersistentStack` naturally requires Core Data, but the pod includes it as dependency.
