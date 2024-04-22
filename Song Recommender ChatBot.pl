% Define facts about songs, their artists, moods, and links

% Energetic songs
song('Yu Hi Chala Chal', 'Swanand Kirkire', energetic, 'https://www.youtube.com/watch?v=fx7WCjgYDaE').
song('Highway to Hell', 'AC/DC', energetic, 'https://www.youtube.com/watch?v=bx9fkq6Nmp4').
song('Boys Don\'t Cry', 'The Cure', energetic, 'https://www.youtube.com/watch?v=K7v_Qeq9Kko').
song('Wonderwall', 'Oasis', energetic, 'https://www.youtube.com/watch?v=6hzrDeceEKc').
song('Sadda Haq', 'Mohit Chauhan', energetic, 'https://www.youtube.com/watch?v=Cq16akZXTNw').

% Happy songs
song('Happy', 'Pharrell Williams', happy, 'https://www.youtube.com/watch?v=ZbZSe6N_BXs').
song('Happy Birthday', 'Traditional', happy, 'https://www.youtube.com/watch?v=6ujW3pfmUPU').
song('Don\'t Worry, Be Happy', 'Bobby McFerrin', happy, 'https://www.youtube.com/watch?v=d-diB65scQU').
song('Good Vibrations', 'The Beach Boys', happy, 'https://www.youtube.com/watch?v=Pdq8JAlct6s').
song('Best Day of My Life', 'American Authors', happy, 'https://www.youtube.com/watch?v=Y66j_BUCBMY').

% Sad songs
song('Channa Mereya', 'Arijit Singh', sad, 'https://www.youtube.com/watch?v=z-diRlyLGzo').
song('Tum Hi Ho', 'Arijit Singh', sad, 'https://www.youtube.com/watch?v=ZzvL4O3uomg').
song('Kabira', 'Arijit Singh', sad, 'https://www.youtube.com/watch?v=jHNNMj5bNQw').
song('Chhapaak Se', 'A. R. Rahman', sad, 'https://www.youtube.com/watch?v=gLDwRWx1mVU').
song('Kal Ho Naa Ho', 'Sonu Nigam', sad, 'https://www.youtube.com/watch?v=GQwRjFwxL2M').

% Calm songs
song('Tujh Mein Rab Dikhta Hai', 'Roop Kumar Rathod', calm, 'https://www.youtube.com/watch?v=Hq0eUkfDxwY').
song('Lag Ja Gale', 'Lata Mangeshkar', calm, 'https://www.youtube.com/watch?v=S3T_YknCCzY').
song('Tum Mile', 'Neeraj Shridhar', calm, 'https://www.youtube.com/watch?v=Nj51rvm0-_M').
song('Tera Ban Jaunga', 'Akhil Sachdeva & Tulsi Kumar', calm, 'https://www.youtube.com/watch?v=0rWvRqV5ga8').
song('Phir Le Aaya Dil', 'Arijit Singh', calm, 'https://www.youtube.com/watch?v=e1oPxqeFpIQ').

% Relaxed songs
song('Hotel California', 'Eagles', relaxed, 'https://www.youtube.com/watch?v=lrfhf1Gv4Tw').
song('Afreen Afreen', 'Rahat Fateh Ali Khan', relaxed, 'https://www.youtube.com/watch?v=8qkwy9WKGLk').
song('Tum Se Hi', 'Mohit Chauhan', relaxed, 'https://www.youtube.com/watch?v=ZOx6zJJ7V-Q').
song('Soch Na Sake', 'Arijit Singh', relaxed, 'https://www.youtube.com/watch?v=pc0ntcR5zWA').
song('Teri Mitti', 'B Praak', relaxed, 'https://www.youtube.com/watch?v=7XzyMbEQzAE').

% Inspiring songs
song('Lakshya', 'Shankar Mahadevan', inspiring, 'https://www.youtube.com/watch?v=xvYBgFyA7DY').
song('Jeet Jayenge Hum', 'A.R. Rahman', inspiring, 'https://www.youtube.com/watch?v=F6wmPlssZAM').
song('Aashayein', 'KK', inspiring, 'https://www.youtube.com/watch?v=SaF-c63-8uE').
song('Chak De! India', 'Sukhwinder Singh', inspiring, 'https://www.youtube.com/watch?v=ZJL4UGSbeFg').
song('Ruk Ja O Dil Deewane', 'Udit Narayan & Lata Mangeshkar', inspiring, 'https://www.youtube.com/watch?v=yFfPXV9fDI4').

% Contemplative songs
song('Syndicate', 'Bipul Chhetri', contemplative, 'https://www.youtube.com/watch?v=dpua4sEJ9B0').
song('Nadaan Parinde', 'A.R. Rahman', contemplative, 'https://www.youtube.com/watch?v=DPoFiFHLrT0').
song('Phir Le Aaya Dil', 'Arijit Singh', contemplative, 'https://www.youtube.com/watch?v=e1oPxqeFpIQ').
song('Mitti Di Khushboo', 'Ayushmann Khurrana', contemplative, 'https://www.youtube.com/watch?v=qXiVwF6T0qg').
song('Kahin To Hogi Woh', 'Rashid Ali', contemplative, 'https://www.youtube.com/watch?v=etx9gAx-Prw').

% Romantic songs
song('Tum Hi Ho', 'Arijit Singh', romantic, 'https://www.youtube.com/watch?v=ZzvL4O3uomg').
song('Kabira', 'Arijit Singh', romantic, 'https://www.youtube.com/watch?v=jHNNMj5bNQw').
song('Chhapaak Se', 'A. R. Rahman', romantic, 'https://www.youtube.com/watch?v=gLDwRWx1mVU').
song('Tera Ban Jaunga', 'Akhil Sachdeva & Tulsi Kumar', romantic, 'https://www.youtube.com/watch?v=0rWvRqV5ga8').
song('Tum Se Hi', 'Mohit Chauhan', romantic, 'https://www.youtube.com/watch?v=JU-pPJzsnLA').


% Define valid mood options
mood(happy).
mood(sad).
mood(energetic).
mood(calm).
mood(relaxed).
mood(inspiring).
mood(contemplative).
mood(romantic).

% Define rules for recommending songs based on different moods
recommend_song(Mood, Song, Link) :-
    song(Song, Artist, Mood, Link),
    format('How about listening to "~w" by "~w" for your mood?~nHere is the Link: ~w~n', [Song, Artist, Link]).

recommend_song(_, 'Sorry, I couldn\'t find a suitable song for that mood.', '').

% Main predicate to interact with the user
chat :-
    repeat,
    write('Welcome to the Mood Song Recommender!'), nl,
    write('What mood are you in? (happy, sad, energetic, calm, relaxed, inspiring, contemplative, romantic)'), nl,
    read(Mood),
    (mood(Mood) -> true ; (write('Invalid mood. Please enter a valid mood.'), nl,nl, fail)),
    recommend_song(Mood, Song, Link),
    write('Do you want to recommend another song? (yes/no)'), nl,
    read(Answer),
    (Answer \= yes -> ! ; fail).

% Entry point
:- initialization(chat).
