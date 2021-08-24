main :- intro.

intro :-
	write('Which specialization you are enrolled in ?'),nl,
	write('To answer, write the index followed by a dot(.)'),nl,
	write('1. CSAI'),nl,
	write('2. CSE'),nl,
	write('3. CSAM'),nl,
	write('4. CSD'),nl,
	write('5. CSSS'),nl,
	write('6. CSB'),nl,
	write('7. ECE'),nl,
	read(X),questions(X),fail.

valid(Y) :- Y\=0.
go(X) :- read(Y),valid(Y),assert(elective(Y)),go(X).

additional(_) :- nl,write('Do you want to go for further higher studies (Enter 0. for NO and 1. for YES'),nl,read(Y),assert(further_studies(Y)),output().
output() :- further_studies(0),nl,write('Thank You'),nl,fail.
output() :- further_studies(1),nl,write('What is your CGPA after the 4th year'),nl,read(C),assert(cgpa(C)),show(C).
show(C) :- correct(C),nl,write('Your CGPA is above 8. You can get options for higher studies in some of the world top universities'),nl,write('Thank You').
show(C) :- in_correct(C),nl,write('Your CGPA is below 8. You might not get options to go for higher studies'),nl,write('Thank You').

correct(C) :- C>=8.
in_correct(C) :- C<8.

% Questions
% CSAI Questions
questions(X) :- X==1,
	write('Which all electives you took during your 4-year study ?'),nl,
	write('To answer write the code followed by dot(.) To stop enter 0.'),nl,
	write('1. Advanced Machine Learning'),nl,
	write('2. Deep Learning'),nl,
	write('3. Reinforcement Learning'),nl,
	write('4. Data Mining'),nl,
	write('5. Big Data Analytics'),nl,
	write('6. Data Science'),nl,
	write('7. Human-AI Interaction'),nl,
	write('8. Computer Vision'),nl,
	write('9. Natural Language Processing'),nl,
	write('10. Information Retrieval'),nl,
	write('11. Robotics'),nl,
	write('12. Multi-Agent Systems'),nl,
	write('13. Speech Recognition and Understanding'),nl,
	write('14. Foundations of Computer Security'),nl,
	write('15. Network Security'),nl,
	write('16. Mobile Computing'),nl,
	go(X).
questions(X) :- X==1,answers(1).
questions(X) :- X==1,additional(1).

% CSE Questions
questions(X) :- X==2,
	write('Which all electives you took during your 4-year study ?'),nl,
	write('To answer write the code followed by dot(.) To stop enter 0.'),nl,
	write('1. Advanced Machine Learning'),nl,
	write('2. Deep Learning'),nl,
	write('3. Reinforcement Learning'),nl,
	write('4. Data Mining'),nl,
	write('5. Big Data Analytics'),nl,
	write('6. Data Science'),nl,
	write('7. Human-AI Interaction'),nl,
	write('8. Software Testing'),nl,
	write('9. Natural Language Processing'),nl,
	write('10. Information Retrieval'),nl,
	write('11. Robotics'),nl,
	write('12. Web Development'),nl,
	write('13. Speech Recognition and Understanding'),nl,
	write('14. Foundations of Computer Security'),nl,
	write('15. Network Security'),nl,
	write('16. Mobile Computing'),nl,
	go(X).
questions(X) :- X==2,answers(2).
questions(X) :- X==2,additional(1).

% CSAM Questions
questions(X) :- X==3,
	write('Which all electives you took during your 4-year study ?'),nl,
	write('To answer write the code followed by dot(.) To stop enter 0.'),nl,
	write('1. Advanced Machine Learning'),nl,
	write('2. Deep Learning'),nl,
	write('3. Reinforcement Learning'),nl,
	write('4. Data Mining'),nl,
	write('5. Big Data Analytics'),nl,
	write('6. Data Science'),nl,
	write('7. Human-AI Interaction'),nl,
	write('8. Software Testing'),nl,
	write('9. Natural Language Processing'),nl,
	write('10. Information Retrieval'),nl,
	write('11. Robotics'),nl,
	write('12. Web Development'),nl,
	write('13. Speech Recognition and Understanding'),nl,
	write('14. Foundations of Computer Security'),nl,
	write('15. Network Security'),nl,
	write('16. Mobile Computing'),nl,
	go(X).
questions(X) :- X==3,answers(3).
questions(X) :- X==3,additional(1).

% CSD Questions
questions(X) :- X==4,
	write('Which all electives you took during your 4-year study ?'),nl,
	write('To answer write the code followed by dot(.) To stop enter 0.'),nl,
	write('1. Advanced Machine Learning'),nl,
	write('2. Deep Learning'),nl,
	write('3. Reinforcement Learning'),nl,
	write('4. Data Mining'),nl,
	write('5. Big Data Analytics'),nl,
	write('6. Data Science'),nl,
	write('7. Human-AI Interaction'),nl,
	write('8. Software Testing'),nl,
	write('9. Natural Language Processing'),nl,
	write('10. Information Retrieval'),nl,
	write('11. Robotics'),nl,
	write('12. Web Development'),nl,
	write('13. Speech Recognition and Understanding'),nl,
	write('14. Foundations of Computer Security'),nl,
	write('15. Network Security'),nl,
	write('16. Mobile Computing'),nl,
	go(X).
questions(X) :- X==4,answers(4).
questions(X) :- X==4,additional(1).

% CSSS Program
questions(X) :- X==5,
	write('Which all electives you took during your 4-year study ?'),nl,
	write('To answer write the code followed by dot(.) To stop enter 0.'),nl,
	write('1. Advanced Machine Learning'),nl,
	write('2. Deep Learning'),nl,
	write('3. Reinforcement Learning'),nl,
	write('4. Data Mining'),nl,
	write('5. Big Data Analytics'),nl,
	write('6. Data Science'),nl,
	write('7. Human-AI Interaction'),nl,
	write('8. Software Testing'),nl,
	write('9. Natural Language Processing'),nl,
	write('10. Information Retrieval'),nl,
	write('11. Robotics'),nl,
	write('12. Web Development'),nl,
	write('13. Speech Recognition and Understanding'),nl,
	write('14. Foundations of Computer Security'),nl,
	write('15. Network Security'),nl,
	write('16. Mobile Computing'),nl,
	go(X).
questions(X) :- X==5,answers(5).
questions(X) :- X==5,additional(1).

% CSB Program
questions(X) :- X==6,
	write('Which all electives you took during your 4-year study ?'),nl,
	write('To answer write the code followed by dot(.) To stop enter 0.'),nl,
	write('1. Advanced Machine Learning'),nl,
	write('2. Deep Learning'),nl,
	write('3. Reinforcement Learning'),nl,
	write('4. Data Mining'),nl,
	write('5. Big Data Analytics'),nl,
	write('6. Data Science'),nl,
	write('7. Human-AI Interaction'),nl,
	write('8. Software Testing'),nl,
	write('9. Natural Language Processing'),nl,
	write('10. Information Retrieval'),nl,
	write('11. Robotics'),nl,
	write('12. Web Development'),nl,
	write('13. Speech Recognition and Understanding'),nl,
	write('14. Foundations of Computer Security'),nl,
	write('15. Network Security'),nl,
	write('16. Mobile Computing'),nl,
	go(X).
questions(X) :- X==6,answers(6).
questions(X) :- X==6,additional(1).

% ECE Program
questions(X) :- X==7,
	write('Which all electives you took during your 4-year study ?'),nl,
	write('To answer write the code followed by dot(.) To stop enter 0.'),nl,
	write('1. Advanced Machine Learning'),nl,
	write('2. Deep Learning'),nl,
	write('3. Reinforcement Learning'),nl,
	write('4. Data Mining'),nl,
	write('5. Big Data Analytics'),nl,
	write('6. Data Science'),nl,
	write('7. Human-AI Interaction'),nl,
	write('8. Software Testing'),nl,
	write('9. Natural Language Processing'),nl,
	write('10. Information Retrieval'),nl,
	write('11. Robotics'),nl,
	write('12. Web Development'),nl,
	write('13. Speech Recognition and Understanding'),nl,
	write('14. Foundations of Computer Security'),nl,
	write('15. Network Security'),nl,
	write('16. Mobile Computing'),nl,
	go(X).
questions(X) :- X==7,answers(7).
questions(X) :- X==7,additional(1).

% Answers
% CSAI Answers
answers(X) :- X==1,write('Carrer Options available for you are : '),nl,fail.
answers(X) :- X==1,elective(1),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==1,elective(2),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==1,elective(3),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==1,elective(4),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==1,elective(5),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==1,elective(6),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==1,elective(7),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==1,elective(9),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==1,elective(13),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==1,elective(10),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==1,elective(8),write('Software Test Engineer'),nl,fail.
answers(X) :- X==1,elective(12),write('Web Developer'),nl,fail.
answers(X) :- X==1,elective(16),write('Android Developer'),nl,fail.
answers(X) :- X==1,write('Software Developer/Software Engineer'),nl,fail.
answers(X) :- X==1,elective(15),write('Network Security Administrator'),nl,fail.
answers(X) :- X==1,elective(14),write('Cyber Security Consultant'),nl,fail.
answers(X) :- X==1,(elective(11),write('Robotics Engineer')),nl,fail.


% CSE Answers
answers(X) :- X==2,write('Carrer Options available for you are : '),nl,fail.
answers(X) :- X==2,elective(1),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==2,elective(2),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==2,elective(3),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==2,elective(4),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==2,elective(5),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==2,elective(6),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==2,elective(7),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==2,elective(9),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==2,elective(13),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==2,elective(10),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==2,elective(8),write('Software Test Engineer'),nl,fail.
answers(X) :- X==2,elective(12),write('Web Developer'),nl,fail.
answers(X) :- X==2,elective(16),write('Android Developer'),nl,fail.
answers(X) :- X==2,write('Software Developer/Software Engineer'),nl,fail.
answers(X) :- X==2,elective(15),write('Network Security Administrator'),nl,fail.
answers(X) :- X==2,elective(14),write('Cyber Security Consultant'),nl,fail.
answers(X) :- X==2,(elective(11),write('Robotics Engineer')),nl,fail.

% CSAM Answers
answers(X) :- X==3,write('Carrer Options available for you are : '),nl,fail.
answers(X) :- X==3,elective(1),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==3,elective(2),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==3,elective(3),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==3,elective(4),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==3,elective(5),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==3,elective(6),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==3,elective(7),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==3,elective(9),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==3,elective(13),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==3,elective(10),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==3,elective(8),write('Software Test Engineer'),nl,fail.
answers(X) :- X==3,elective(12),write('Web Developer'),nl,fail.
answers(X) :- X==3,elective(16),write('Android Developer'),nl,fail.
answers(X) :- X==3,write('Software Developer/Software Engineer'),nl,fail.
answers(X) :- X==3,elective(15),write('Network Security Administrator'),nl,fail.
answers(X) :- X==3,elective(14),write('Cyber Security Consultant'),nl,fail.
answers(X) :- X==3,(elective(11),write('Robotics Engineer')),nl,fail.

% CSD Answers
answers(X) :- X==4,write('Carrer Options available for you are : '),nl,fail.
answers(X) :- X==4,elective(1),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==4,elective(2),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==4,elective(3),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==4,elective(4),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==4,elective(5),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==4,elective(6),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==4,elective(7),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==4,elective(9),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==4,elective(13),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==4,elective(10),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==4,elective(8),write('Software Test Engineer'),nl,fail.
answers(X) :- X==4,elective(12),write('Web Developer'),nl,fail.
answers(X) :- X==4,elective(16),write('Android Developer'),nl,fail.
answers(X) :- X==4,write('Software Developer/Software Engineer'),nl,fail.
answers(X) :- X==4,elective(15),write('Network Security Administrator'),nl,fail.
answers(X) :- X==4,elective(14),write('Cyber Security Consultant'),nl,fail.
answers(X) :- X==4,(elective(11),write('Robotics Engineer')),nl,fail.

% CSSS Answers
answers(X) :- X==5,write('Carrer Options available for you are : '),nl,fail.
answers(X) :- X==5,elective(1),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==5,elective(2),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==5,elective(3),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==5,elective(4),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==5,elective(5),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==5,elective(6),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==5,elective(7),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==5,elective(9),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==5,elective(13),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==5,elective(10),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==5,elective(8),write('Software Test Engineer'),nl,fail.
answers(X) :- X==5,elective(12),write('Web Developer'),nl,fail.
answers(X) :- X==5,elective(16),write('Android Developer'),nl,fail.
answers(X) :- X==5,write('Software Developer/Software Engineer'),nl,fail.
answers(X) :- X==5,elective(15),write('Network Security Administrator'),nl,fail.
answers(X) :- X==5,elective(14),write('Cyber Security Consultant'),nl,fail.
answers(X) :- X==5,(elective(11),write('Robotics Engineer')),nl,fail.

% CSB Answers 
answers(X) :- X==6,write('Carrer Options available for you are : '),nl,fail.
answers(X) :- X==6,elective(1),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==6,elective(2),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==6,elective(3),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==6,elective(4),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==6,elective(5),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==6,elective(6),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==6,elective(7),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==6,elective(9),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==6,elective(13),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==6,elective(10),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==6,elective(8),write('Software Test Engineer'),nl,fail.
answers(X) :- X==6,elective(12),write('Web Developer'),nl,fail.
answers(X) :- X==6,elective(16),write('Android Developer'),nl,fail.
answers(X) :- X==6,write('Software Developer/Software Engineer'),nl,fail.
answers(X) :- X==6,elective(15),write('Network Security Administrator'),nl,fail.
answers(X) :- X==6,elective(14),write('Cyber Security Consultant'),nl,fail.
answers(X) :- X==6,(elective(11),write('Robotics Engineer')),nl,fail.

% ECE Answers
answers(X) :- X==7,write('Carrer Options available for you are : '),nl,fail.
answers(X) :- X==7,elective(1),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==7,elective(2),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==7,elective(3),(write('Machine Leaning Engineer'),nl),(retract(elective(1));retract(elective(2));retract(elective(3))),fail.
answers(X) :- X==7,elective(4),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==7,elective(5),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==7,elective(6),(write('Data Scientist'),nl),(retract(elective(4));retract(elective(5));retract(elective(6))),fail.
answers(X) :- X==7,elective(7),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==7,elective(9),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==7,elective(13),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==7,elective(10),(write('AI Engineer'),nl),(retract(elective(7));retract(elective(9));retract(elective(13));retract(elective(10))),fail.
answers(X) :- X==7,elective(8),write('Software Test Engineer'),nl,fail.
answers(X) :- X==7,elective(12),write('Web Developer'),nl,fail.
answers(X) :- X==7,elective(16),write('Android Developer'),nl,fail.
answers(X) :- X==7,write('Software Developer/Software Engineer'),nl,fail.
answers(X) :- X==7,elective(15),write('Network Security Administrator'),nl,fail.
answers(X) :- X==7,elective(14),write('Cyber Security Consultant'),nl,fail.
answers(X) :- X==7,(elective(11),write('Robotics Engineer')),nl,fail.