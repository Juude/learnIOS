//
//  ViewController.m
//  learnIOS
//
//  Created by ruoyi.sjd on 2017/1/27.
//  Copyright © 2017年 ruoyi.sjd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textContent;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ViewController
- (IBAction)changeBackgroundAccordingToButton:(UIButton *)sender {
    [self.textContent.textStorage addAttribute:NSForegroundColorAttributeName
                                         value:sender.backgroundColor
                                         range:self.textContent.selectedRange];
}

- (IBAction)outlineBodySection:(id)sender {
    [self.textContent.textStorage addAttributes:@{
                    NSStrokeWidthAttributeName:@-3,
                    NSStrokeColorAttributeName: [UIColor blackColor]
                    }
                    range:self.textContent.selectedRange];
}

- (IBAction)unoutlineBodySection:(id)sender {
    [self.textContent.textStorage removeAttribute:NSStrokeWidthAttributeName range:self.textContent.selectedRange];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.titleLabel setText:@"文本编辑器"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
