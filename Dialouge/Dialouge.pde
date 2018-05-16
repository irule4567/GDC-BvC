int value=0;
int text=0;
int chara = 0;
String Dialogue="";
boolean textOn=false;
String character="";
boolean DialogueOn=false;
ArrayList<String> dialogue = new ArrayList<String>();
void setup(){
  size(500,500);
  dialogue.add("Test Test Test Test Test Test Test Test");
  dialogue.add("According to all known laws of aviation, a bee shouldn't be able to fly.");
  dialogue.add("It's tiny little wings shouldn't be able to lift it's fat body off the ground.");
  dialogue.add("The bee however, flies, because it doesn't care what humans think should and shouldn't be possible.");
  dialogue.add("This eBook is for the use of anyone anywhere at no cost and with almost no restrictions whatsoever.  You may copy it, give it away or re-use it under the terms of the Project Gutenberg License included with this eBook or online at www.gutenberg.net");
  character="Test Man";
  DialogueOn=true;
}


void draw(){
  background(0,0,0);
 if(textOn&&DialogueOn){
   drawDialouge();
  
 }
 
}

 void mouseClicked() {
   if(!textOn&&text<dialogue.size())
   {
    textOn=true;
    Dialogue=dialogue.get(text);
   }
   
   else if(text==dialogue.size()-1)
   {
     DialogueOn=false; 
   }
  
   else{
    textOn=false;
    if(text<dialogue.size()-1) {
      text++;
      
      
    }  
 }
 }
