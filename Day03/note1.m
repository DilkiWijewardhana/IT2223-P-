str1='Apple';
str2='Banana';
result=strcat(str1,str2);
disp(result);

x={'hello','World','sri'};
result2=strcat(x{:});
disp(result2);
result3=strjoin(x,':');
disp(result3);

str1='age';
str2='tryr';
strcmp(str1,str2)
stril='The cat sat on the mat'
indic=strfind(stril,'cat')

stril='The cat sat on the mat'
old='cat'
new='dog'
strrep(stril,old,new)

inputstring='apple','banana','orange','Grapes'
substring=strsplit(inputstring,',')

st1='apPLE'
lower(st1)
upper(st1)

strtrim(' hello world ')
