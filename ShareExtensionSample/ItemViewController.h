//
//  ItemViewController.h
//  SimpleShareExtensionDemo
//
//  Created by DIGICORP on 16/06/16.
//  Copyright © 2016 DIGICORP. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ItemViewController;
@protocol ItemViewDelegate <NSObject>
-(void)sendingViewController:(ItemViewController *) controller sentItem:(NSString *) retItem;
@end

@interface ItemViewController : UIViewController<UITextFieldDelegate>
@property (nonatomic, weak) id <ItemViewDelegate> delegate;
@end
