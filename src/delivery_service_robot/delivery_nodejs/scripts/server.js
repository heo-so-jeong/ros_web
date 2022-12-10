#!/usr/bin/env nodemon
// prepare for ROS and get custom message
const rosnodejs = require('rosnodejs');
const { MenuSelector } = rosnodejs.require('delivery_topics').srv;

// init node and get node handle
rosnodejs.initNode('/menu_selector_server');
const nh = rosnodejs.nh;
const num=[0,0,0,0]
// define callback
const cbSelectMenuRtnMessage = (req, res) => {
 num[0]=req.restaurant;
num[1]=req.count;
num[2]=req.destone;
num[3]=req.desttwo;
  //const menu = ['salad', 'fried potatoes', 'drinks'];
  res.message = 'selected delivery information!';
//+req.restaurant+' count: '+req.count+' dest1: '+req.destone+' dest2: '+req.desttwo + '!';
  rosnodejs.log.info('value: ', num);
//req.restaurant,req.count,req.destone,req.desttwo)
  rosnodejs.log.info(res.message);
  return true;
}

// create the service
const service = nh.advertiseService('/menu_selector', MenuSelector, cbSelectMenuRtnMessage);
