bool isPalindrome(String s) {
  if (s.length < 3) return false;
  return s == s.split('').reversed.join('');
}


String longestPalindrome(String s) {
  String longest = '';
  String current = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {

      current = s.substring(i, j);
      
      if (isPalindrome(current)) {
        if (current.length > longest.length) {
          longest = current;
        }
      }
    }
  }

  if (longest == '') {
    return ('none');
  }
  return (longest);
}