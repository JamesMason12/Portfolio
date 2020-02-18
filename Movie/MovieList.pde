import java.util.List;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

class MovieList {
  int count;
  List movieList;

  public MovieList() {
    movieList=new ArrayList<Movie>();
  }
  int getCount() {
    return count;
  }
  int getAverage() {
    float sum;
    for (int  i=0; i<movieList.size(); i++) {
      count ++;
      sum+= MovieList.get(i).getRating;
    }
    float avg=sum/count;
  }
  public void loadMovies(String[]  str movies){
    for(String str; movies){
     movieList.add(new Movie(parseInt((str.substring(0,1)), str.substring(2)))); 
    }
  }
  
  String toString(){
    Iterator<Movie> iter=movieList.iterator();
    String output=" ";
    
  }
}







//public class MovieList{
//  public ArrayList MovieList=new ArrayList();

//  public void MovieList(int c, String {

//  }
//}
