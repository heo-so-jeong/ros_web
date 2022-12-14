#!/usr/bin/env nodemon
// prepare for ROS and get custom message
const rosnodejs = require('rosnodejs');
const { MenuSelector } = rosnodejs.require('delivery_topics').srv;

// init node and get node handle
rosnodejs.initNode('/menu_selector_server');
const nh = rosnodejs.nh;
const template = __dirname + '/index.ejs';
const num=[0,0,0,0]
const num1 = [0]
const name=[101,102,105,111,112-1,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,128-1,129,130,121]

// define callback

const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

readline.question('Who are you?', name => {
  rosnodejs.log.info(`Hey there ${name}!`)
    //name = 4;
  message=name;
  rosnodejs.log.info(message);
  //readline.close();
   //rosnodejs.log.info(res.message);
}
);

const cbSelectMenuRtnMessage = (req, res) => {
 num[0]=req.restaurant;
num[1]=req.count;
num[2]=req.destone;
num[3]=req.desttwo;
num1[0]=req.menu;
  //const menu = ['salad', 'fried potatoes', 'drinks'];
  //res.message = res.name;
  //res.message=message;
//+req.restaurant+' count: '+req.count+' dest1: '+req.destone+' dest2: '+req.desttwo + '!';

  rosnodejs.log.info('value: ', num);
  // rosnodejs.log.info(message);
//req.restaurant,req.count,req.destone,req.desttwo)
if(req.menu == 0)
{
message=5;
}

if(req.menu == 1){
if(message == 0 )
{
res.message = '로봇이 충전소에서 대기중입니다'
}
else if(message == 1)
{
res.message ='로봇이 음식점('+name[num[0]]+')으로 이동중입니다.'
}
else if(message == 2)
{
res.message ='로봇이 음식점('+name[num[0]]+')에 도착했습니다.'
}
else if(message == 3)
{
res.message ='로봇이 '+name[num[2]]+'로 이동중입니다.'
}
else if(message == 4)
{
res.message ='로봇이 '+name[num[2]]+'에 도착했습니다.'
}
else if(message == 5)
{
res.message ='로봇이 '+name[num[3]]+'에 도착했습니다.'
}
else if(message == 6)
{
res.message ='로봇이 '+name[num[3]]+'에 도착했습니다.'
}
else if(message == 7)
{
res.message ='로봇이 배달을 완료했습니다.'
}
else if(message == 8)
{
res.message ='로봇이 충전소로 이동중입니다.'
}
}
rosnodejs.log.info(res.message)
rosnodejs.log.info(req.menu)

 //rosnodejs.log.info(message);

 readline.question('Who are you?', name => {
  rosnodejs.log.info(`Hey there ${name}!`);
  message=name;

  //rosnodejs.log.info(res.message);

  //readline.close();

}
);
   return true;
  }

// create the service
const service = nh.advertiseService('/menu_selector', MenuSelector, cbSelectMenuRtnMessage);
