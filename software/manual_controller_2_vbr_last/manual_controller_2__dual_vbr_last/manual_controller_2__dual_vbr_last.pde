/*
Manual control for double pumps
*/


import g4p_controls.*;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.lang.*;
import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;

//connections
int vibr = 3;
int pumpL = 5;
int pumpR = 6;
int pokeL = 8;
int pokeR = 7;
int door = 4;
int inSensor = 2;

boolean doorOpen;
boolean runLoop;
boolean runExperiment=false;
boolean abortExperiment=false;
int sensingInsideTime;
int port = 0;
int timeFeed = 5;
int cycleFeed = 10;
int closeAngle = 10;
int openAngle = 52;
int doorDelay = 12;
int numOk = 0;
int numFail = 0;
int numIteration = 0;
int freq;
int vibr_dur;
int door_time;
int timeStart;
int timeStop;
int door_angle;
int waitForNextExperiment;
int repeats;
int pokeTime;
int insideTime;
int InR;
int InL;
int InW;
int insideWait;
int timesFeed;
int iteration;
int maxFreq = 80;
int minFreq = 20;
int feedTimesL=0;
int feedTimesR=0;
String filename;
boolean feedIt;
boolean touchedPoke;
boolean feeding=false;
boolean waitingPoke=false;
String whichPoke="none";
String status="null";


//objects
Arduino ardu;

public void setup(){
  size(630, 410, JAVA2D);
  println(Arduino.list());
  createGUI();
  customGUI();
}

public void draw(){
  background(230);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){
  


 fld_feed_r.setNumericType(G4P.INTEGER);
 fld_feed_l.setNumericType(G4P.INTEGER);
 fld_wait_to_feed.setNumericType(G4P.INTEGER);
 fld_wait_to_feed.setText("0");
 fld_pump_pulse.setNumericType(G4P.INTEGER);
 fld_pump_pulse.setText(Integer.toString(timeFeed));

 fldVibrDur.setNumericType(G4P.INTEGER);
 fldVibrDur.setText("1000");
 btn_stop.setVisible(false);
   btnCloseDoor.setVisible(false);
  btnOpenDoor.setVisible(false);
  btnVibrateHigh.setVisible(false);
  btnVibrationLow.setVisible(false);
  btn_start.setVisible(false);
  btn_feedL.setVisible(false);
  btn_fillL.setVisible(false);
  btnFeedR.setVisible(false);
  btnFillR.setVisible(false);
}
