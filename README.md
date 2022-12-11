# ros_web


> Pass Web Inputs to ros in an Integer Array   
> for indoor delivery robot
</br>

> + ros1 melodic
> + ubuntu 18.04
> + rosnodejs service server client 
>   + nodejs
>   + npm

## RUN
**노드 실행 전**
```
source devel/setup.bash
catkin_make
```
</br>

**service server, client 노드 동시 실행**
```
roslaunch delivery_nodejs union.launch --screen
```
</br>

*server, client 노드 별도 실행:

service server
```
rosrun delivery_nodejs server.js
```   

service client (웹서버)
```
rosrun delivery_nodejs app.js
```   
</br>

**웹페이지 접속**

127.0.0.1:8080
</br>
## Result
**web** </br>

> input: restaurant, delivery count(0<=x<=2), destination1, destination2 </br>
> pass input to ros when push select button
</br>

**ros** </br>

> receive input in integer array
</br>

## solution for installation error
**npm dependency error**
``` 
sudo apt-get install nodejs-dev node-gyp libssl1.0-dev
sudo apt-get install npm
``` 
</br>

**nodejs install error**
</br>
: Sub-process /usr/bin/dpkg returned an error code (1)

``` 
sudo mv /var/lib/dpkg/info/ /var/lib/dpkg/backup/
sudo mkdir /var/lib/dpkg/info/

sudo apt-get update
sudo apt-get -f install

sudo mv /var/lib/dpkg/info/* /var/lib/dpkg/backup/

sudo rm -rf /var/lib/dpkg/info
sudo mv /var/lib/dpkg/backup/ /var/lib/dpkg/info/
``` 
