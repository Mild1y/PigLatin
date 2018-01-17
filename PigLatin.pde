public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}

public void draw()
{
	
}

public int findFirstVowel(String sWord){
	if(sWord.length() > 0){
		for(int i = 0; i < sWord.length() - 1; i++) {
    		if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u') {
    			return i;
    		}
    	} 
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1){
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0){
		return sWord + "ay";
	}
	else if(sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u'){
		return sWord.substring(2) + sWord.substring(0,2) + "ay";
	}
	else{
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}
}
