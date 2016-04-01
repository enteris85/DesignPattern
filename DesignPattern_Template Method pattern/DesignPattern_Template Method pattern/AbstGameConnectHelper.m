//
//  AbstGameConnectHelper.m
//  DesignPattern_Template Method pattern
//
//  Created by enteris on 2016. 4. 1..
//  Copyright © 2016년 12corp. All rights reserved.
//

#import "AbstGameConnectHelper.h"
@interface AbstGameConnectHelper ()
- (NSString*)doSecurity:(NSString*)str;
- (BOOL)authentication:(NSString*)idName pw:(NSString*)password;
- (NSInteger)authorization:(NSString*)userName;
- (NSString*)connection:(NSString*)str;
@end
@implementation AbstGameConnectHelper
- (NSString*)requestConnection:(NSString*)str {
    //보안작업 -> 암호화 된 문자열을 복호화
    NSString* decodedInfo = [self doSecurity:str];
    //반환된 것을 가지고 아이디, 암호 할당
    NSString *idNm = @"aaa";
    NSString* password = @"bbb";
    if (![self authentication:idNm pw:password]) {
        @throw ([NSException exceptionWithName:@"authentification" reason:@"authentification fail" userInfo:nil]);
    }
    NSString *userName = @"userName";
    NSInteger i = [self authorization:userName];
    switch (i) {
        case 0://게임 매니저
            
            break;
        case 1://유료 회원
            
            break;
        case 2://무료 회원
            
            break;
        case 3://권한 없음
            
            break;
        default:
            break;
    }
    return [self connection:decodedInfo];
}
- (NSString*)doSecurity:(NSString*)str{return nil;}
- (BOOL)authentication:(NSString*)idName pw:(NSString*)password{return YES;}
- (NSInteger)authorization:(NSString*)userName{return 0;}
- (NSString*)connection:(NSString*)str{return nil;}
@end
