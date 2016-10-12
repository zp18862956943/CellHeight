//
//  ViewController.m
//  CellHeight
//
//  Created by zhoupeng on 2016/10/11.
//  Copyright © 2016年 zhoupeng. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "DetailTableViewCell.h"
#import "UITableView+FDTemplateLayoutCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic)NSArray *titleArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleArray = [NSArray arrayWithObjects:@"都说人生一世，草木一秋。但草木有轮回，人生却无再世。真正让人羡慕的，却是那些无情的草木。",@"人的一生，真像那草木的一秋。童年冒芽、少年开花、青年花事、成年结果。过了四十五岁之后，人就像果子离开了树，轻松是轻松了，却显出了几许的沧桑与凄凉。心，不知不觉地老了，老得几乎听不到自己的心还在跳动。",@"小的时候，人走急了，常听到自己的心在卟通卟通的跳动；喝了一肚子的井水，跑起步来，也能听到水在肚子里翻涌。四十五岁之后，每当夜深人静时，我却听不到自己的心在跳动。不知不觉中，没有了争强好胜之心，多了许多人生命定的思想。对那唾手可得的东西，也不再去刻意的追求，而更多的是崇尚顺其自然。流水不争先，该到海洋的它总会到海洋，如果不幸流入了沙漠，也会绿了一方风景。",@"下雨天，以前常用爬楼梯来代替跑步。如今，上到自家五楼，我觉得那七转八拐的楼梯好长好长。心跳自然是加快了许多，但我依旧听不到自己心跳的声音。",@"心在变老，让人感受最深的就是觉出了时间的来去匆匆。一天在自己的一睁眼一闭眼中就过去了，一个星期在自己的一疏忽一忐忑中就过去了，一个月在自己的东走走西看看中就过去了，一年在自己的一迷茫一悔恨中就过去了。日子就这样从指尖滑过，心也在渐渐变老。",@"父母在，不言老。老母亲已是九十多岁的老人了，都还在从事力所能及的体力劳动，按说我不应当如此未老先衰。但心的衰老却是人力阻止不了的，它是一个心的蜕变过程；或许是在一个不经意的下午里，你会觉得自己突然心灰意懒，力不从心。父辈渐入黄土，下辈变成陌生，同龄人的讣告也接踵而至，曾经年轻的心在慢慢变老。 ",@"没有了激情，失去了目标，不在乎成绩的好坏，不在意人们的品头论足，只活在自己既定的环境里。没有工作激情，是因为发现自己已经没有了上升的空间；没有生活热情，是因为觉得自己此生早已命定。虽然还没有到盖棺定论的时候，但我发现我的心已慢慢变老。就像一只温水里的青蛙，心，在不知不觉里被水煮烂了。烂了心的青蛙，是永远也跳不出锅子的。",@"突然觉得自己很不值，自以为是个人才，却落得如此这般的下场。不要说做过什么惊天动地的事业，就连平日里说过的话，做过的事在心里都没有丝毫的印记。回想起来，这一生竟然没有什么值得称道的地方。农民虽然平凡，他却种一年的庄稼就有一年的收成。而我的收成呢？悲乎！",@"都说不以物喜，不以已悲。此生没居过庙堂之高，也没处过江湖之远，是不知道“忧”为何物的。但心在变老，又怎一个“悲”字了得呢……", nil];
    UITableView *_tableView = [[UITableView alloc]init];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor whiteColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;
    [_tableView registerClass:[DetailTableViewCell class] forCellReuseIdentifier:@"details"];
    [self.view addSubview:_tableView];

    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(0);
        make.right.offset(0);
        make.top.offset(20);
        make.bottom.offset(0);

    }];
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"details"];
    cell.title = [self.titleArray objectAtIndex:indexPath.row];
    return  cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView fd_heightForCellWithIdentifier:@"details" configuration:^(DetailTableViewCell *cell) {
        cell.fd_enforceFrameLayout = NO; 
        cell.title = [self.titleArray objectAtIndex:indexPath.row];
    }];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.titleArray.count;
}


@end
