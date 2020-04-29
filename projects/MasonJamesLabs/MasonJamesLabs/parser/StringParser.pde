class Stringparser{
  String s;
  String[] str;
  Stringparser(){
    
  }
  Stringparser(String s){
    this.s=s;
    str=s.split("\\W+");
    println(str);
  }
  int countWords(String[] s){
    
    return str.length;
  }
  
  int countVowels(String[] str){
    int count=0;
    String vows="AEIOUYaeiouy";
    
    for(int i=0; i< str.length; i++){
      for(int j=0; i<vows.length(); j++){
        if(str[i].indexOf(vows.charAt(j)) != -1){
        count++;
      }
    }
  }
  return count;
  }
  
  int countSentences(String s){
    String [] hold=s.split("[?.!]+");
    return hold.length;
  }
  
int countSyllables(String s){
  int count = 0;
  String[] words = s.split("[aeiouy]+[^$e(,.!?)]");
  for(int i = 0; i<words.length; i++){
    count++;
  }
  return count-1;
}

  
  double getGrade(){
    double level;
    double temp=countWords(str)/countSentences(s);
    double other= countSyllables(s)/countWords(str);
    level=(.39*temp)+(11.8*other)-15.59;
    return level;
    
  }
  
  double getFlesch(){
    double readability;
    double temp= countWords(str)/countSentences(s);
    double other=countSyllables(s)/countWords(str);
    readability=(.39*temp)+(11.8*other)-15.59;
    return readability;
  }
  
  String toString(){
    return"words" + countWords(str)+ "\nSentences:"+countSentences(s)+ "\nVowels:" + countVowels(str)+ "\nReading Grade Level:" + getGrade()+ "\nFlesch Readablility score:" +getFlesch();
   
  }
}
