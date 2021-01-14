public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}

public int findFirstVowel(String sWord)
{
  for (int i = 0; i < sWord.length(); i++) {
    if (sWord.charAt(i) == 'a') {
      return i;
    }
    if (sWord.charAt(i) == 'e') {
      return i;
    }
    if (sWord.charAt(i) == 'i') {
      return i;
    }
    if (sWord.charAt(i) == 'o') {
      return i;
    }
    if (sWord.charAt(i) == 'u') {
      return i;
    }
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1) {
    return sWord + "ay";
  }
  if (sWord.charAt(0) == 'a' || sWord.charAt(0) == 'e' || sWord.charAt(0) == 'i' || sWord.charAt(0) == 'o' || sWord.charAt(0) == 'u') {
    return sWord + "way";
  }
  if (sWord.substring(0, 2) == "qu") {
    return sWord.substring(2, sWord.length()) + sWord.substring(0, 2) + "ay";
  }
  if (findFirstVowel(sWord) > -1) {
    return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  }
	else
	{
		return "ERROR!";
	}
}
