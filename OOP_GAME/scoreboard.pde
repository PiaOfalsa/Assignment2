
class SCORES
{
  String YEAR;
  String HIGHEST_SCORES;
  int year;
  float highestScores;
  
  SCORES(String line)
  {
    String[] fields = line.split(",");
    YEAR = fields[0];
    HIGHEST_SCORES = fields[1];
    year = Integer.parseInt(fields[3]);
    highestScores = Float.parseFloat(fields[4]);
  }
  
  SCORES(TableRow row)
  {
    YEAR = row.getString(0);
    HIGHEST_SCORES = row.getString(1);
    year = row.getInt(2);
    highestScores = row.getFloat(3);    
  }
}