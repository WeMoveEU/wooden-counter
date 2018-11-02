This is for the wooden box counter used first for our people vs climate campaign.

the box is sold by smiirl, that acts as a gateway between their box and our counter. 

# Initial setup
you need to connect on the account created by leonie@wemove.eu. 

The only setup that matters to us is the url where to fetch a json {"some_key":nnn}. The number nnn is displayed on the box and updated regularly.

https://my.smiirl.com/en/counter/e08e3c2e4bf4

# server side

##nginx and cron
So our work it to provide this json with the counter to display.

I created a subdomain counter.wemove.eu that serves what is in pirandello:/usr/src/data

so far, we have:
donation.json : amount of donations today 
signature.json : number of signatures today
people.json: total number of signatures of climate campaign

update.sh does generate a new json and is called from /etc/cron.d/counter-box (every minute)

if you look at update.sh, the json is taken from a query in metabase

## metabase
- write a question that returns a number (the counter you want)
- edit the sql to "select cast( whatever as unsigned) number from ...." (cast as unsigned)
- make the question public (the share button)


