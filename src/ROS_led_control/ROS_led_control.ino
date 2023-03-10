#include<ros.h>
#include<led_control/led.h>


int led_pin = 13;

bool led_s;

ros::NodeHandle nh;

void led_callback(const led_control::led& ledstate){


digitalWrite(led_pin, ledstate.ledState);


}


ros::Subscriber<led_control::led> sub("led_state", &led_callback);


void setup(){

pinMode(led_pin, OUTPUT);

Serial.begin(57600);

nh.initNode();

nh.subscribe(sub);

}


void loop(){



nh.spinOnce();
delay(1);


}
