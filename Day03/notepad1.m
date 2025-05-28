//Display two string type data 
str1='Apple';
str2='Banana';
result=strcat(str1,str2);
disp(result);

//Joining array String
x={'hello','World','sri'};
result2=strcat(x{:});
disp(result2);
result3=strjoin(x,':');
disp(result3);

//We can get a starting point this sentence
str1='age';
str2='tryr';
strcmp(str1,str2)
stril='The cat sat on the mat'
indic=strfind(stril,'cat')

//Replace the word 
stril='The cat sat on the mat'
old='cat'
new='dog'
strrep(stril,old,new)

//Split the string
inputstring='apple','banana','orange','Grapes'
substring=strsplit(inputstring,',')

//Upper case and lower case
st1='apPLE'
lower(st1)
upper(st1)

//Remove the white space infront the string and behind the string
strtrim(' hello world ')

//Get a marks from the user and print the grade 
//marks>=90 A+
//marks>=80 A
//marks>=70 B
//marks>=60 C
//marks>=50 D
else F

userNumber=input('Enter Your marks');
disp(['you Entered:',num2str(userNumber)]);

if userNumber>=90
    disp('A+')
elseif userNumber>=80
      disp('A')
elseif userNumber>=70
            disp('B+')
elseif userNumber>=60
                disp('B')
elseif userNumber>=50
                    disp('D')
                else
                    disp('F')
                end    
				

//get a three numbers and check the maximum value
number1=input('Enter 1st number :'); 
number2=input('Enter 2nd number :');
number3=input('Enter 3rd number :');

if number1>number2 && number1>number3
     disp(['Maximum number is ',num2str(number1)])
     
elseif number2> number1 && number2>number3
     disp(['Maximum number is ',num2str(number2)])
else 
     disp(['Maximum number is ',num2str(number3)])  
     
end

//Get a character from user check vowel or consanant
letter =input('Enter a letter :','s');
letter=lower(letter);

if length(letter) ==1 && ischar(letter)
    if any(letter ==['a','e','i','o','u'])
        disp('The letter is a Vowel');
    else
        disp('The letter is a consonant');
    end
else
    disp('Please enter a valid single letter');
end

