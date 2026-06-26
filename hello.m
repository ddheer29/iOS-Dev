#import <Foundation/Foundation.h>

@interface MyClass : NSObject
 - (void)instanceHello;
 + (void)classHello;
@end

@implementation MyClass
 - (void)instanceHello { NSLog(@"Instance method"); }
 + (void)classHello { NSLog(@"Class method"); }
@end

int main() {
    // NSAutoReleasePool *pool =[[NSAutoReleasePool alloc] init];
    // [MyClass classHello];

    // MyClass *obj = [[MyClass alloc] init];
    // [obj instanceHello];

    // [obj release];
    // [pool drain];

    [MyClass classHello];
    @autoreleasepool {

        MyClass *obj = [[MyClass alloc] init];
        [obj instanceHello];
    }

    return 0;
}