//
//  AbstGameConnectHelper.h
//  DesignPattern_Template Method pattern
//
//  Created by enteris on 2016. 4. 1..
//  Copyright © 2016년 12corp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstGameConnectHelper : NSObject
//템플릿 메소드
- (NSString*)requestConnection:(NSString*)str;
@end
