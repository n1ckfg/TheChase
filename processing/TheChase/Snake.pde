class Snake{

  int numAnemones, numChaser;
  float numSpread, numEase;
 boolean headFirst;
 
  Anemone[] anemone;
  int[] numsChaser;
  float[] numsSpread;
  float[] numsEase;
  
Snake(int nA, int nC, float nS, float nE, boolean hF ){
numAnemones = nA;
numChaser = nC;
numSpread = nS;
numEase = nE;
headFirst = hF;
//--
  anemone = new Anemone[numAnemones];
  numsChaser = new int[numAnemones];
  numsSpread = new float[numAnemones];
  numsEase = new float[numAnemones];
  //--
  for(int j=0;j<numAnemones;j++){
  if(headFirst){
        numsChaser[j] = int((numChaser/numAnemones)*(numAnemones-j));
  numsSpread[j] =(numSpread/numAnemones)*(numAnemones-j);
    }else{
    numsChaser[j] = int((numChaser/numAnemones)*(j+1));
  numsSpread[j] =(numSpread/numAnemones)*(j+1);
  }
    numsEase[j] = (numEase/numAnemones)*(j+1);
  }
  //--
for(int i=0;i<numAnemones;i++){
anemone[i] = new Anemone(numsChaser[i],numsSpread[i],numsEase[i]);
}
}

void update(){
  for(int i=0;i<numAnemones;i++){
  anemone[i].update();
  }
}


}
