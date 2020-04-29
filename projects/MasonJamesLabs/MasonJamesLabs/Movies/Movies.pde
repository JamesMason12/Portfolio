public class Movie implements Comparable<Movie>{
  private String review;
  private int rating;
  
  public Movie(int ra, String re){
    rating=ra;
    review=re;
  }
  
  public int getRating(){
   return rating; 
  }
  
  public int setRatings(int r){
   rating=r;
   return r;
  }
  
  public int compareTo(Movie other){
   if(this.rating<other.rating){
    return -1; 
   }
   if(this.rating>other.rating){
    return 1; 
   }
   else{
    return 0; 
   }
  }
    public String toString(){
    return "The rating is: "+rating +"The review is:"; 
   }
  
}
