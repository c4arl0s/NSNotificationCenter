# NSNotifications-NotificationCenter
NSNotifications&amp;NotificationCenter

First lessons of socialization is to know one’s audience

Kinds of communication:

- One to one - ** Person conversacion**
- Television broadcast. - one-to-many

[cuadro de comparacion del tipo de acoplamiento]

# Basic Workflow to use Notificacion Center

### 1. Define a constant string value
### 2. Post a notification to NSNotificationCenter identified by the key name defined before.
### 3. Set up the class or struct instance to be observers of a particular notification.
### 4. Create a method to be called once a notification is received.

![notificationcenter_2x](https://user-images.githubusercontent.com/24994818/60770616-86e7e000-a0a2-11e9-8287-de8a9953b1ec.png)

# 1. Define a constant string value.

into header file:

``` objective-c
NSString* const SomeActionIsCompleteNotification;
```

into implementation file:

``` objective-c
NSString const SomeActionHappenedNotification = @"SomeActionIsComplete";
```


# 2. Post a notification to NSNotificationCenter identified by the key name defined before.

``` objective-c
[[NSNotificationCenter defaultCenter] postNotificationName:SomeActionHappenedNotification 
                                                    object:self 
                                                  userInfo:nil];
```

# 3. Set up the class or struct instance to be observers of a particular notification.

``` objective-c
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SomeActionHappened:) 
                                                           name:SomeActionHappenedNotification 
                                                         object:nil];
}];
```

# 4. Create a method to be called once a notification is received.

``` objective-c
-(void)SomeActionHappened:(NSNotification *)notification {
    // Do something for SuperClass with the notification
}
```

# Analyze this:

``` objective-c
// LogOTron
// _token is an instance variable of type 'id'
_token = [center addObserverForName: kNetworkWentByeByeNotification
                 object: nil
                 queue: [NSOperationQueue mainQueue]
                 usingBlock: ^(NSNotification *notification) {
                     NSLog (@"Network went down: %@", notification);
                 }];
```

 


