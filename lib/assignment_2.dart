void main(){
  CalculatePalindrome(121);
}
CalculatePalindrome(int num){
  int temp=num,rev=0;

  if(num<0){
    print("not palindrome");
  }

  while (num !=0){
    int rem=num%10;
    rev=rev*10+rem;
    num = num ~/ 10;
  }
  rev==temp?print("palindrome"):print("not palindrome");
}