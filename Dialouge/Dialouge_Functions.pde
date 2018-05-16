public void openDialouge(int ID){
  
}
public void drawDialouge(){
  fill(255,255,255);
 rect(0,300,500,200); //Dialogue box
 fill(0);
 textSize(16);
 text("Next>>",400,450); //Indicates clicking
 int sub=((dialogue.get(text).length())/60) + 1;
 int textRow=360;
 int pos=0;
 for(int i=0; i<sub; i++)
 {
   
   
   if(i==sub-1)
   {
    text(dialogue.get(text).substring(i*60-pos), 10, textRow); 
   }
   else
   {
     String dial = dialogue.get(text).substring(i*60, i*60 + 60);
     int space;
     space = dial.lastIndexOf(" ");
     text(dialogue.get(text).substring(i*60-pos, i*60 +space),10,textRow);
     pos=60-space-1;
   }
  
  textRow=textRow+20;
 }
 //text(Dialogue, 10,360); //Dialogue
 textSize(26);
 text(character, 10,340); //Character Name
 
}
