Strange encoding errors.

Install ruby 1.9.1p243

Download. Rake db:migrate (it uses sqlite).

Ok, first thing to observe:

1. Start server with ./script/server - WebBrick on my system

2. Browse to:

http://0.0.0.0:3000/pages

observe (erb): Bad char:ú:ASCII-8BIT

3. Browse to:

http://0.0.0.0:3000/users

observe (haml): Bad char: ú : UTF-8

4. Create a new user called 'ü', this should crash the index.html.haml page when it tries to display the line with 'user.name'


Second,

Try the same steps as above whilst running under passenger.

1. Browse to '/users'

It will throw an error 'invalid byte sequence in US-ASCII'