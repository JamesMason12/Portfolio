import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

class MovieList {
  int count;
  List<Movie> movieList;

  public MovieList() {
    movieList = new ArrayList<Movie>();
  }

  int getCount() {
    return count;
  }

  public void loadMovies() {
    Scanner scan;
    String [] review = loadStrings("reviews.txt");

    for (String str : review) {
      scan=new Scanner(str);
      movieList.add(new Movie(scan.nextInt(), scan.nextLine()));
    }

    for (Movie m : movieList) {
    }
  }
  int countWords(String word) {
    int count=0;
    for (Movie m : movieList) {
      if (m.getReview().contains(word)) {
        count++;
      }
    }
    return count;
  }

  float getAverageScore() {
    float sum = 0;
    int count1=0;
    for (Movie mov : movieList) {
      sum += mov.getRating();
    }
    //println(sum);
    //println("count"+count1);
    return sum/count1;
  }

  String overallComments() {
    return "";
  }

  void sortMoviesByCount() {
    Collections.sort(movieList);
  }

  String toString() {

    return ""+movieList;
  }
