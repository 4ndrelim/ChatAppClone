const info = [
  {
    'name': 'Reinard',
    'message': 'Hi, wru?',
    'time': '3:53 pm',
    'profilePic':
        'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
  },
  {
    'name': 'andre',
    'message': 'Heyy, lima_dingdong here!',
    'time': '2:25 pm',
    'profilePic':
        'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg',
  },
  {
    'name': 'claudeon',
    'message': 'i m sleepy so gdnite.',
    'time': '1:03 pm',
    'profilePic':
        'https://media.cntraveler.com/photos/60596b398f4452dac88c59f8/16:9/w_3999,h_2249,c_limit/MtFuji-GettyImages-959111140.jpg',
  },
  {
    'name': 'Ramon',
    'message': 'I have a mala superiority complex.',
    'time': '12:06 pm',
    'profilePic':
        'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg',
  },
  {
    'name': 'Saadaas',
    'message': 'I\'m a palindrome and follow me on IG -> saadaas_destroyer',
    'time': '10:00 am',
    'profilePic':
        'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0',
  },
  {
    'name': 'Ara-Ara-San',
    'message': 'Who is she?',
    'time': '4:53 am',
    'profilePic':
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'WrewDon',
    'message': 'Wen fite day?',
    'time': '1:25 am',
    'profilePic':
        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'TMcDullI',
    'message': 'Check out my github page',
    'time': '3:31 pm',
    'profilePic':
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Kent_HO_O',
    'message': 'Ok, lets code!',
    'time': '3:26 pm',
    'profilePic':
        'https://images.unsplash.com/photo-1619194617062-5a61b9c6a049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
  },
];

const messages = [
  [
    {"isMe": false, "text": "So see you later at 3:30?", "time": "10:00 am"},
    {"isMe": true, "text": "Ok bossu", "time": "11:00 am"},
    {"isMe": false, "text": "Nice cya", "time": "11:01 am"},
    {"isMe": false, "text": "Lunch?", "time": "11:01 am"},
    {
      "isMe": true,
      "text": "Oops soz blo, didnt see, had lunch alr!",
      "time": "1:23 pm"
    },
    {"isMe": false, "text": "Haha issok, im omw", "time": "2:45 pm"},
    {"isMe": true, "text": "samez blo", "time": "2:45 pm"},
    {"isMe": false, "text": "im here!", "time": "3:28 pm"},
    {"isMe": false, "text": "Hi, wru?", "time": "3:53 pm"},
  ],
  [
    {"isMe": false, "text": "Heyy, lima_dingdong here!", "time": "2:25 pm"},
  ],
  [
    {"isMe": true, "text": "Yoo, wanna game n discord?", "time": "12:55 pm"},
    {
      "isMe": false,
      "text": "ehh.. not now, i gna nap soon",
      "time": "12:57 pm"
    },
    {"isMe": true, "text": "???? its only 1pm", "time": "12:57 pm"},
    {"isMe": false, "text": "ya but i wanna toh alr", "time": "12:58 pm"},
    {
      "isMe": true,
      "text": "what time did you even sleep last night",
      "time": "12:59 pm"
    },
    {"isMe": false, "text": "11pm? woke up at 7", "time": "12:59 pm"},
    {"isMe": true, "text": "??? Sleeping beauty", "time": "1:00 pm"},
    {"isMe": false, "text": "yes thats me.", "time": "1:00 pm"},
    {"isMe": false, "text": "i m sleepy so gdnite.", "time": "1:03 pm"},
  ],
  [
    {"isMe": false, "text": "So when mala?", "time": "11:53 am"},
    {
      "isMe": true,
      "text": "wot.. didn't we just have mala a few days back?",
      "time": "11:55 am"
    },
    {
      "isMe": false,
      "text": "yea but the mala grind nvr stops",
      "time": "11:55 am"
    },
    {
      "isMe": false,
      "text": "gotta train endurance and spice",
      "time": "11:56 am"
    },
    {"isMe": false, "text": "no spice no life", "time": "11:56 am"},
    {"isMe": true, "text": "u r nuts", "time": "11:59 am"},
    {"isMe": false, "text": "no im not", "time": "12:06 pm"},
    {
      "isMe": false,
      "text": "I have a mala superiority complex.",
      "time": "12:06 pm"
    },
  ],
  [
    {"isMe": true, "text": "waddup, Ninjaboi here", "time": "9:58 am"},
    {
      "isMe": false,
      "text": "I'm a palindrome and follow me on IG -> saadaas_destroyer",
      "time": "10:00 am"
    },
  ],
  [
    {"isMe": true, "text": "? why'd u call? im out", "time": "12:58 am"},
    {"isMe": false, "text": "Where are you?", "time": "12:58 am"},
    {"isMe": true, "text": "Out w friends", "time": "1:53 am"},
    {"isMe": false, "text": "With who?", "time": "1:53 am"},
    {"isMe": true, "text": "gaming friends", "time": "2:36 am"},
    {"isMe": false, "text": "At where?", "time": "2:37 am"},
    {"isMe": false, "text": "Who is she?", "time": "4:53 am"},
  ],
  [
    {"isMe": true, "text": "Gym den trng tmr night?", "time": "4:36 pm"},
    {"isMe": false, "text": "ok 7:30", "time": "5:00 pm"},
    {"isMe": true, "text": "sure c u", "time": "5:20 pm"},
    {"isMe": false, "text": "Wen fite day?", "time": "1:25 am"},
  ],
  [
    {"isMe": true, "text": "Wow! that's rly cool!", "time": "3:25 pm"},
    {"isMe": false, "text": "lol", "time": "3:26 pm"},
    {
      "isMe": false,
      "text": "i've more stuff if u int to see",
      "time": "3:26 pm"
    },
    {"isMe": true, "text": "oo like what", "time": "3:30 pm"},
    {"isMe": false, "text": "Check out my github page", "time": "3:31 pm"},
  ],
  [
    {"isMe": true, "text": "stop ur nonsense", "time": "3:20 pm"},
    {"isMe": false, "text": "Ok, lets code!", "time": "3:26 pm"},
  ],
];
