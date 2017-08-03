//
//  ViewController.m
//  YBCalendar
//
//  Created by 高艳彬 on 2017/8/1.
//  Copyright © 2017年 YBKit. All rights reserved.
//

#import "ViewController.h"
#import "YBEventCalendar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *buttonTitles = @[@"检测",@"写入",@"修改"];
    
    for (int i = 0; i < buttonTitles.count; i ++) {
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100 + i * 70, 100, 50)];
        [button setTitle:[NSString stringWithFormat:@"%@",buttonTitles[i]] forState:UIControlStateNormal];
        
        [self.view addSubview:button];
        
        
        button.backgroundColor = [UIColor grayColor];
        [self.view addSubview:button];
        
        
        button.tag = 100 + i;
        [button addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    }
    
}


- (void)buttonEvent:(UIButton *)sender{

    
    if (sender.tag == 100) {
        
        if ([YBEventCalendar checkCalendarCanUsed]) {
            
            NSLog(@"🍀🍀🍀🍀🍀🍀🍀🍀\n 00000");
        }
        else{
        
            NSLog(@"🍀🍀🍀🍀🍀🍀🍀🍀\n 111");
        }
    }
    else if(sender.tag == 101){
    
        [YBEventCalendar addEventCalendarTitle:@"测试日历提醒" location:@"" startDate:[NSDate new] endDate:[[NSDate new] dateByAddingTimeInterval:10000] allDay:NO alarmArray:@[@"300"] completion:^(BOOL granted, NSError *error) {
            
            NSLog(@"🍀🍀🍀🍀🍀🍀🍀🍀\n 2222");
        }];
        
    }
    else if (sender.tag == 102){
    
        NSLog(@"🍀🍀🍀🍀🍀🍀🍀🍀\n 333");
    }
    else{
    
        //其他button
    }
    
    
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
