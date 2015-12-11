//
//  AppDelegate.m
//  BitsTest
//
//  Created by Nikolay Berlioz on 27.09.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    /*
     student.studiesAnatomy = YES;
     student.studiesDevelopment = YES;
     student.studiesEnginireeng = YES;
     student.studiesMath = YES;
     student.studiesPhycology = NO;
     student.studiesArt = NO;
     student.studiesBiology = NO;
     */


//    student1.subjectType = StudentSubjectTypeAnatomy | StudentSubjectTypeDevelopment |
//                          StudentSubjectTypeEnginireeng | StudentSubjectTypeMath;
  
    NSLog(@"*********************   Ученик   ******************************");
    
    NSMutableArray *mArrayRandomTypes = [[NSMutableArray alloc] init];

    
    for (int x = 0; x < 10; x++)
    {
        Student *student = [[Student alloc] init];
        student.name = [NSString stringWithFormat:@"student%i", x + 1];
        for (int i = 0; i < 7; i++)
        {
            if (arc4random() % 2)
            {
                student.subjectType = student.subjectType | [self returnPropertiesStudent:i];
            }
        }
        [mArrayRandomTypes addObject:student];
    }
    
    for (Student *obj in mArrayRandomTypes)
    {
        NSLog(@"%@ %@", obj.name, obj);
    }
    
    NSLog(@"*********************   Студент   ******************************");

    NSInteger gumanitCount, techCount, developCount;
    
    gumanitCount = techCount = developCount = 0;
    
    NSMutableArray *mArrayGumanit = [[NSMutableArray alloc] init];
    
    NSMutableArray *mArrrayTech = [[NSMutableArray alloc] init];

    for (Student *obj in mArrayRandomTypes)
    {
        if ((obj.subjectType & StudentSubjectTypeMath) ||
            (obj.subjectType & StudentSubjectTypeDevelopment) ||
            (obj.subjectType & StudentSubjectTypeEnginireeng))
        {
            [mArrrayTech addObject:obj];
            techCount++;
            if ((obj.subjectType & StudentSubjectTypeDevelopment))
            {
                developCount++;
            }
        }
        else
        {
            [mArrayGumanit addObject:obj];
            gumanitCount++;
        }
    }

    NSLog(@"Student technical proffesion:");
    for (Student *obj in mArrrayTech)
    {
        NSLog(@"%@", obj.name);
    }
    
    NSLog(@"Student humanitarian proffesion:");
    for (Student *obj in mArrayGumanit)
    {
        NSLog(@"%@", obj.name);
    }
    
    NSLog(@"Total developer: %li", (long)developCount);
    

    
    NSLog(@"*********************   Мастер   ******************************");
    
    for (Student *obj in mArrayRandomTypes)
    {
        if ((obj.subjectType & StudentSubjectTypeBiology))
        {
            obj.subjectType = obj.subjectType ^ StudentSubjectTypeBiology;
            
            NSLog(@"Студент %@ больше не изучает биологию", obj.name);
        }
        NSLog(@"%@ %@", obj.name, obj);
    }

    
    return YES;
}

- (StudentSubjectType) returnPropertiesStudent: (NSInteger) index
{
    StudentSubjectType property = StudentSubjectTypeBiology;
    
    switch (index)
    {
        case 0:
            property = StudentSubjectTypeBiology;
            break;
        case 1:
            property = StudentSubjectTypeMath;
            break;
        case 2:
            property = StudentSubjectTypeDevelopment;
            break;
        case 3:
            property = StudentSubjectTypeEnginireeng;
            break;
        case 4:
            property = StudentSubjectTypeArt;
            break;
        case 5:
            property = StudentSubjectTypePhycology;
            break;
        case 6:
            property = StudentSubjectTypeAnatomy;
            break;
    }
    return property;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
