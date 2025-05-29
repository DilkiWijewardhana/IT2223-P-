gpa = zeros(1,5);
marks = zeros(1,5);

for i = 1:5
    marks(i)=input(['Enter Marks for Subjects: ']);

    if marks(i)>100 || marks(i)<0
        disp('Invalid Number');
    elseif marks(i)>=85
        disp('Grade A+');
        gpa(i)=4.0;
    elseif marks(i)>=80   
        disp('Grade A');
        gpa(i)=4.0;
    elseif marks(i)>=75
        disp('Grade A-');
        gpa(i)=3.7;
    elseif marks(i)>=70
        disp('Grade B+');
        gpa(i)=3.3;
    elseif marks(i)>=65
        disp('Grade B');
        gpa(i)=3.0;
    elseif marks(i)>=60
        disp('Grade B-');
        gpa(i)=2.7;
    elseif marks(i)>=55
        disp('Grade C+');
        gpa(i)=2.3;
    elseif marks(i)>=50
        disp('Grade C');
        gpa(i)=2.0;
    elseif marks(i)>=45
        disp('Grade C-');
        gpa(i)=1.7;
    elseif marks(i)>=40
        disp('Grade D+');
        gpa(i)=1.3;
    elseif marks(i)>=36
        disp('Grade D');
        gpa(i)=1.0;
    else
        disp('Grade E');
        gpa(i)=0.0;
    end
end

GPA=mean(gpa);
fprintf('\nYour GPA is: %.2f\n' ,GPA);