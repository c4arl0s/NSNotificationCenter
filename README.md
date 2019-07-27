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

``` objective-c
NSString const *SomeActionIsCompleteKey = @"SomeActionIsComplete";
```


# 2. Post a notification to NSNotificationCenter identified by the key name defined before.

``` objective-c
[[NSNotificationCenter defaultCenter] postNotificationName:SomeActionIsCompleteKey 
                                                    object:nil userInfo:nil];
```

# 3. Set up the class or struct instance to be observers of a particular notification.

``` objective-c
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SomeActionIsComplete:) 
                                                           name:SomeActionIsCompleteKey 
                                                         object:nil];
}];
```


 


