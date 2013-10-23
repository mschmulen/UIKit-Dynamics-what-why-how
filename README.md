#What, Why and How of iOs7 UIKit Dynamics

##What

Apple encourages developers to create user interfaces that feel real, and the new update's to UIKit make it easy to add exciting interactions to their iOS user interfaces.

UIKit Dynamics allows you to assign physical behaviors (gravity, collision, attachment, snap and push) to your UIView derived components.

##Why

Incorporating greater interactivity to you application view components and application experience gives life to your mobile app.

##How Simple

Is very easy to get started with UIKit Dynamics and its Motion Effect counterpart ( This is what give parallax effect )

The easiest way is to add a XX effect on your mobile application to when the user open's and interacts with the window.

You will need two classes an Animator ( UIDynamicAnimator ) and a behavior (UIGravityBehavior, UICollisionBehavior , UIAttachmentBehavior , UISnapBehavior, UIPushBehavior).  The first UIDynamicAnimator keeps track of the behaviors that you add to your App.  the second UIGravityBehavior models the behavior, in this case 'gravity'

The easiest way to get started is to create a new project and create an Outlet for one of your UIView derived objects.

Such as:

```
@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageViewSplash;
@end
``` 

Then simply instantiate the animator and behavior objects on ```- (void)viewDidLoad ``` and attach it to the UIView.


```
 self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    //self.collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[self.imageViewSplash]];
    
    self.gravityBehavior = [[UIGravityBehavior alloc] initWithItems:@[self.imageViewSplash]];
    [self.animator addBehavior:self.gravityBehavior];
```

Five the app a run and watch as your UIView drops to the floor.

You can download the working demo here gihub.com/mschmiulen/yack and take a look at FirstViewController.m to see the code.

It's that simple to add Dynamics to your iOS application.



