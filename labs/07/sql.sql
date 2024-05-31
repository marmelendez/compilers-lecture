---CREATE TABLE Artists (
---    id INTEGER PRIMARY KEY,
---    name TEXT NOT NULL
---);

---INSERT INTO Artists (name) VALUES ('Beyonce');
---INSERT INTO Artists (name) VALUES ('Adele');
---INSERT INTO Artists (name) VALUES ('Taylor Swift');
---INSERT INTO Artists (name) VALUES ('Shakira');
---INSERT INTO Artists (name) VALUES ('Bruno Mars');
---INSERT INTO Artists (name) VALUES ('Rihanna');
---INSERT INTO Artists (name) VALUES ('Drake');
---INSERT INTO Artists (name) VALUES ('Billie Eilish');
---INSERT INTO Artists (name) VALUES ('Ariana Grande');
---INSERT INTO Artists (name) VALUES ('Whitney Houston');
---INSERT INTO Artists (name) VALUES ('Mariah Carey');
---INSERT INTO Artists (name) VALUES ('Lady Gaga');
---INSERT INTO Artists (name) VALUES ('Elvis Presley');
---INSERT INTO Artists (name) VALUES ('Stevie Wonder');
---INSERT INTO Artists (name) VALUES ('Michael Jackson');
---INSERT INTO Artists (name) VALUES ('Elton John');

---CREATE TABLE Albums (
---    id INTEGER PRIMARY KEY,
---    title TEXT NOT NULL,
---    genre TEXT NOT NULL,
---    artist_id INTEGER,
---    FOREIGN KEY(artist_id) REFERENCES Artists(id)
---);

---INSERT INTO Albums(title, genre, artist_id) values ('Lemonade', 'Pop', (select id from Artists where name = 'Beyonce'));
---INSERT INTO Albums(title, genre, artist_id) values ('Renaissance', 'Dance', (select id from Artists where name = 'Beyonce'));
---INSERT INTO Albums(title, genre, artist_id) values ('21', 'Pop', (select id from Artists where name = 'Adele'));
---INSERT INTO Albums(title, genre, artist_id) values ('25', 'Pop', (select id from Artists where name = 'Adele'));
---INSERT INTO Albums(title, genre, artist_id) values ('El Dorado', 'Latin Pop', (select id from Artists where name = 'Shakira'));
---INSERT INTO Albums(title, genre, artist_id) values ('Pies descalzos', 'Latin Pop', (select id from Artists where name = 'Shakira'));
---INSERT INTO Albums(title, genre, artist_id) values ('24K Magic', 'Pop', (select id from Artists where name = 'Bruno Mars'));
---INSERT INTO Albums(title, genre, artist_id) values ('Anti', 'R&B', (select id from Artists where name = 'Rihanna'));
---INSERT INTO Albums(title, genre, artist_id) values ('Loud', 'Pop', (select id from Artists where name = 'Rihanna'));
---INSERT INTO Albums(title, genre, artist_id) values ('Nothing Was the Same', 'Hip hop', (select id from Artists where name = 'Drake'));
---INSERT INTO Albums(title, genre, artist_id) values ('Happier Than Ever', 'Pop', (select id from Artists where name = 'Billie Eilish'));
---INSERT INTO Albums(title, genre, artist_id) values ('Eternal Sunshine', 'Pop', (select id from Artists where name = 'Ariana Grande'));
---INSERT INTO Albums(title, genre, artist_id) values ('Whitney', 'Pop', (select id from Artists where name = 'Whitney Houston'));
---INSERT INTO Albums(title, genre, artist_id) values ('My Love Is Your Love', 'Pop', (select id from Artists where name = 'Whitney Houston'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Daydream', 'Pop', (SELECT id FROM Artists WHERE name = 'Mariah Carey'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('The Emancipation of Mimi', 'Pop', (SELECT id FROM Artists WHERE name = 'Mariah Carey'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('The Fame', 'Pop', (SELECT id FROM Artists WHERE name = 'Lady Gaga'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Born This Way', 'Pop', (SELECT id FROM Artists WHERE name = 'Lady Gaga'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Elvis Presley', 'Rock and Roll', (SELECT id FROM Artists WHERE name = 'Elvis Presley'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Songs in the Key of Life', 'R&B', (SELECT id FROM Artists WHERE name = 'Stevie Wonder'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Innervisions', 'R&B', (SELECT id FROM Artists WHERE name = 'Stevie Wonder'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Thriller', 'Pop', (SELECT id FROM Artists WHERE name = 'Michael Jackson'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Bad', 'Pop', (SELECT id FROM Artists WHERE name = 'Michael Jackson'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Elton John', 'Rock', (SELECT id FROM Artists WHERE name = 'Elton John'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Taylor Swift', 'Country', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Fearless', 'Country', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Speak Now', 'Country', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Red', 'Pop', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('1989', 'Pop', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Reputation', 'Pop', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Lover', 'Pop', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Folklore', 'Alternative', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Evermore', 'Alternative', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('Midnights', 'Pop', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));
---INSERT INTO Albums(title, genre, artist_id) VALUES ('The Tortured Poets Department', 'Synth pop', (SELECT id FROM Artists WHERE name = 'Taylor Swift'));

---CREATE TABLE Songs (
---    id INTEGER PRIMARY KEY,
---    title TEXT NOT NULL,
---    short_lyrics TEXT NOT NULL,
---    artist_id INTEGER,
---    album_id INTEGER,
---    FOREIGN KEY(artist_id) REFERENCES Artists(id),
---    FOREIGN KEY(album_id) REFERENCES Albums(id)
---);

---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Hold Up', 'Whats worse, lookin jealous or crazy? Jealous and crazy? Or like being walked all over lately, walked all over lately, Id rather be crazy', (SELECT id FROM Artists WHERE name = 'Beyonce'), (SELECT id FROM Albums WHERE title = 'Lemonade'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Formation', 'Okay, ladies, now lets get in formation, I slay Okay, ladies, now lets get in formation', (SELECT id FROM Artists WHERE name = 'Beyonce'), (SELECT id FROM Albums WHERE title = 'Lemonade'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('BREAK MY SOUL', 'Im lookin for motivation Im lookin for a new foundation, yeah', (SELECT id FROM Artists WHERE name = 'Beyonce'), (SELECT id FROM Albums WHERE title = 'RENAISSANCE'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Rolling in the Deep', 'We could have had it all, rolling in the deep. You had my heart inside of your hand, and you played it to the beat.', (SELECT id FROM Artists WHERE name = 'Adele'), (SELECT id FROM Albums WHERE title = '21'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Someone Like You', 'Never mind, Ill find someone like you. I wish nothing but the best for you, too. Dont forget me, I beg, I remember you said.', (SELECT id FROM Artists WHERE name = 'Adele'), (SELECT id FROM Albums WHERE title = '21'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Set Fire to the Rain', 'But theres a side to you that I never knew, never knew. All the things youd say, they were never true, never true.', (SELECT id FROM Artists WHERE name = 'Adele'), (SELECT id FROM Albums WHERE title = '21'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Hello', 'Hello, its me. I was wondering if after all these years youd like to meet, to go over everything.', (SELECT id FROM Artists WHERE name = 'Adele'), (SELECT id FROM Albums WHERE title = '25'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Send My Love (To Your New Lover)', 'Send my love to your new lover Treat her better Weve gotta let go of all of our ghosts', (SELECT id FROM Artists WHERE name = 'Adele'), (SELECT id FROM Albums WHERE title = '25'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Me Enamore', 'De que me andaba quejando No se que estaba pensando Voy pal cielo y voy pateando oh-oh oh-oh', (SELECT id FROM Artists WHERE name = 'Shakira'), (SELECT id FROM Albums WHERE title = 'El Dorado'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('La Bicicleta', 'A tu manera descomplicado En una bici que te lleve a todos lados Un vallenato desesperado Una cartica que yo guardo donde te escribi Que te sueno y que te quiero tanto', (SELECT id FROM Artists WHERE name = 'Shakira'), (SELECT id FROM Albums WHERE title = 'El Dorado'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Chantaje', 'Tu eres puro puro chantaje Puro puro chantaje Siempre es a tu manera Yo te quiero aunque no quiera', (SELECT id FROM Artists WHERE name = 'Shakira'), (SELECT id FROM Albums WHERE title = 'El Dorado'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Estoy Aqui', 'Y ahora estoy aqui Queriendo convertir Los campos en ciudad Mezclando el cielo con el mar Se que te deje escapar Se que te perdi Nada podra ser igual', (SELECT id FROM Artists WHERE name = 'Shakira'), (SELECT id FROM Albums WHERE title = 'Pies descalzos'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('¿Dónde Estás Corazon?', 'Donde estas corazon Ayer te busque Entre el suelo y el cielo mi cielo Y no te encontre', (SELECT id FROM Artists WHERE name = 'Shakira'), (SELECT id FROM Albums WHERE title = 'Pies Descalzos'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Antologia', 'Sobra tanto Dentro de este corazon Que a pesar de que dicen que los anos son sabios Todavia se siente el dolor', (SELECT id FROM Artists WHERE name = 'Shakira'), (SELECT id FROM Albums WHERE title = 'Pies Descalzos'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('24K Magic', 'Twenty four karat magic in the air head to toe so player uh, look out!', (SELECT id FROM Artists WHERE name = 'Bruno Mars'), (SELECT id FROM Albums WHERE title = '24K Magic'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Chunky', 'Yeah, I am the one, so Im trying to recruit Im looking at you yeah, you baby', (SELECT id FROM Artists WHERE name = 'Bruno Mars'), (SELECT id FROM Albums WHERE title = '24K Magic'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Thats what I like', 'Jump in the Cadillac girl, lets put some miles on it. Anything you want just to put a smile on it', (SELECT id FROM Artists WHERE name = 'Bruno Mars'), (SELECT id FROM Albums WHERE title = '24K Magic'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Love on the Brain', 'And you got me like, oh what you want from me? and I tried to buy your pretty heart, but the price too high', (SELECT id FROM Artists WHERE name = 'Rihanna'), (SELECT id FROM Albums WHERE title = 'Anti'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Whats my name?', 'Oh na na, whats my name? Oh na na, whats my name? Oh na na, whats my name? Whats my name? Whats my name?', (SELECT id FROM Artists WHERE name = 'Rihanna'), (SELECT id FROM Albums WHERE title = 'Loud'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Only girl (in the world)', 'Want you to make me feel like Im the only girl in the world, like Im the only one that youll ever love, like Im the only one who knows your heart', (SELECT id FROM Artists WHERE name = 'Rihanna'), (SELECT id FROM Albums WHERE title = 'Loud'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Love the way you lie (part II)', 'Just gonna stand there and watch me burn, but thats all right because I like the way it hurts. Just gonna stand there and hear me cry but thats all right because I love the way you lie', (SELECT id FROM Artists WHERE name = 'Rihanna'), (SELECT id FROM Albums WHERE title = 'Loud'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Hold On, Were Going Home', 'I cant get over you you left your mark on me I want your high love and emotion, endlessly', (SELECT id FROM Artists WHERE name = 'Drake'), (SELECT id FROM Albums WHERE title = 'Nothing Was the Same'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Happier Than Ever', 'When Im away from you, Im happier than ever, wish I could explain it better I wish it wasnt true', (SELECT id FROM Artists WHERE name = 'Billie Eilish'), (SELECT id FROM Albums WHERE title = 'Happier Than Ever'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Halleys Comet', 'Halleys Comet comes around more than I do but youre all it takes for me to break a promise', (SELECT id FROM Artists WHERE name = 'Billie Eilish'), (SELECT id FROM Albums WHERE title = 'Happier Than Ever'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Lost cause', 'You aint nothin but a lost cause and this aint nothin like it oncе was', (SELECT id FROM Artists WHERE name = 'Billie Eilish'), (SELECT id FROM Albums WHERE title = 'Happier Than Ever'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('yes, and?', 'In case you havent noticed well, everybodys tired and healin from somebody or somethin we dont see just right', (SELECT id FROM Artists WHERE name = 'Ariana Grande'), (SELECT id FROM Albums WHERE title = 'Eternal Sunshine'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('we cant be friends', 'We cant be friends but Id like to just pretend you cling to your papers and pens wait until you like me again', (SELECT id FROM Artists WHERE name = 'Ariana Grande'), (SELECT id FROM Albums WHERE title = 'Eternal Sunshine'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('I wanna dance with somebody (who loves me)', 'Yeah, I wanna dance with somebody with somebody who loves me', (SELECT id FROM Artists WHERE name = 'Whitney Houston'), (SELECT id FROM Albums WHERE title = 'Whitney'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Where do broken hearts go', 'Where do broken hearts go? Can they find their way home back to the open arms of a love thats waiting there?', (SELECT id FROM Artists WHERE name = 'Whitney Houston'), (SELECT id FROM Albums WHERE title = 'Whitney'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Fantasy', 'But its just a sweet sweet fantasy baby when I close my eyes', (SELECT id FROM Artists WHERE name = 'Mariah Carey'), (SELECT id FROM Albums WHERE title = 'Daydream'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('We Belong Together', 'So I turn the dial trying to catch a break and then I hear Babyface', (SELECT id FROM Artists WHERE name = 'Mariah Carey'), (SELECT id FROM Albums WHERE title = 'The Emancipation of Mimi'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Just Dance', 'Just dance, gonna be okay, da da doo-doo-mmm Just dance, spin that record, babe, da da doo-doo-mmm', (SELECT id FROM Artists WHERE name = 'Lady Gaga'), (SELECT id FROM Albums WHERE title = ' The Fame'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Poker Face', 'Cant read my, cant read my no, he cant read my poker face', (SELECT id FROM Artists WHERE name = 'Lady Gaga'), (SELECT id FROM Albums WHERE title = ' The Fame'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Born This Way', 'Im beautiful in my way cause God makes no mistakes Im on the right track, baby I was born this way', (SELECT id FROM Artists WHERE name = 'Lady Gaga'), (SELECT id FROM Albums WHERE title = ' Born This Way:'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Cant Help Falling in Love', 'Wise men say only fools rush in but I cant help falling in love with you', (SELECT id FROM Artists WHERE name = 'Elvis Presley'), (SELECT id FROM Albums WHERE title = 'Elvis Presley'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Blue moon', 'Blue moon you saw me standing alone without a dream in my heart without a love of my own', (SELECT id FROM Artists WHERE name = 'Elvis Presley'), (SELECT id FROM Albums WHERE title = 'Elvis Presley'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Sir Duke', 'Music knows that it is and always will be one of the things that life just wont quit', (SELECT id FROM Artists WHERE name = 'Stevie Wonder'), (SELECT id FROM Albums WHERE title = 'Songs in the Key of Life'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Isnt She Lovely', 'Isnt she lovely, Isnt she wonderful, Isnt she precious', (SELECT id FROM Artists WHERE name = 'Stevie Wonder'), (SELECT id FROM Albums WHERE title = 'Songs in the Key of Life'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Living for the City', 'The bus for New York City! Hey bus driver, Im getting on that, hold it Thanks a lot', (SELECT id FROM Artists WHERE name = 'Stevie Wonder'), (SELECT id FROM Albums WHERE title = 'Innervisions'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Thriller', 'Cause this is thriller, thriller night there aint no second chance against the thing with forty eyes, girl', (SELECT id FROM Artists WHERE name = 'Michael Jackson'), (SELECT id FROM Albums WHERE title = 'Thriller'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Beat It', 'You wanna stay alive, better do what you can so beat it, just beat it', (SELECT id FROM Artists WHERE name = 'Michael Jackson'), (SELECT id FROM Albums WHERE title = 'Thriller'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Smooth Criminal', 'Annie, are you okay? Will you tell us that youre okay? Theres a sign in the window that he struck you - a crescendo, Annie', (SELECT id FROM Artists WHERE name = 'Michael Jackson'), (SELECT id FROM Albums WHERE title = 'Bad'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Man in the Mirror', 'Im starting with the man in the mirror Im asking him to change his ways and no message couldve been any clearer', (SELECT id FROM Artists WHERE name = 'Michael Jackson'), (SELECT id FROM Albums WHERE title = 'Bad'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Your Song', 'And you can tell everybody this is your song it may be quite simple, but now that its done, I hope you dont mind I hope you dont mind that I put down in words how wonderful life is while youre in the world', (SELECT id FROM Artists WHERE name = 'Elton John'), (SELECT id FROM Albums WHERE title = 'Elton John'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Rocket Man', 'Oh, no, no, no Im a rocket man, Rocket man burning out his fuse up here alone', (SELECT id FROM Artists WHERE name = 'Elton John'), (SELECT id FROM Albums WHERE title = 'Elton John'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Our Song', 'Our song is the slamming screen door sneakin out late, tapping on your window', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Taylor Swift'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Love Story', 'I got tired of waiting wonderin if you were ever comin around my faith in you was fading when I met you on the outskirts of town', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Fearless'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('You Belong with Me', 'If you could see that Im the one who understands you been here all along, so why cant you see? You belong with me, you belong with me', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Fearless'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Mine', 'I say, "Can you believe it?" As were lyin on the couch. The moment, I can see it yes, yes, I can see it now', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Speak Now '));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('22', 'Were happy, free, confused and lonely at the same time. Its miserable and magical Oh, yeah', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Red'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('We Are Never Ever Getting Back Together', 'You go talk to your friends talk to my friends, talk to me but we are never, ever, ever, ever getting back together', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Red'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Shake It Off', 'Cause the players gonna play, play, play, play, play And the haters gonna hate, hate, hate, hate, hate Baby, Im just gonna shake, shake, shake, shake, shake I shake it off, I shake it off ', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = '1989'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Blank Space', 'Nice to meet you, where you been? I could show you incredible things, magic, madness, heaven, sin', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = '1989'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Look What You Made Me Do', 'Ive got a list of names and yours is in red, underlined. I check it once, then I check it twice, oh!', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Reputation'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Lover', 'Can I go where you go? Can we always be this close forever and ever?', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Lover'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Cruel Summer', 'Devils roll the dice, angels roll their eyes And if I bleed, youll be the last to know', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Lover'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Cardigan', 'Vintage tee, brand new phone high heels on cobblestones. When you are young, they assume you know nothing', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Folklore'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Cowboy Like Me', 'Ive got some tricks up my sleeve takes one to know one. Youre a cowboy like me never wanted love just a fancy car', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Evermore'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Champagne Problems', 'Your moms ring in your pocket my picture in your wallet your heart was glass, I dropped it, Champagne problems', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Evermore'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Youre on Your Own, Kid', 'So make the friendship bracelets Take the moment and taste it Youve got no reason to be afraid Youre on your own, kid Yeah, you can face this', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'Midnights'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Fortnight', 'And for a fortnight there, we were forever Run into you sometimes, ask about the weather', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'The Tortured Poets Department'));
---INSERT INTO Songs(title, short_lyrics, artist_id, album_id) VALUES ('Chloe or Sam or Sophia or Marcus', 'I changed into goddesses, villains and fools, changed plans and lovers and outfits and rules', (SELECT id FROM Artists WHERE name = 'Taylor Swift'), (SELECT id FROM Albums WHERE title = 'The Tortured Poets Department'));
EOF 