import java.util.List;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;

MovieList m=new MovieList();

void setup(){
 String[] review=loadStrings("reviews.txt"); 
 String[] word=loadStrings("word.txt");
 List<Movie>movList=new ArrayList<Movie>();
for(String str: review){
 Scanner scan=new Scanner(str);
 movList.add(new Movie(scan.nextInt(),scan.nextLine()));
 scan.close();
 
}


m.loadMovies(review);
m.getAverage();
println(m.getAverage());
println(m);



}
