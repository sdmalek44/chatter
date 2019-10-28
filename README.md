# Chatter

Chatter is a Rails app that allows users to create a user, login as that user, and chat with other users.

### How to Run Locally

- uses Rails 5.2.3
```
$ git clone https://github.com/sdmalek44/chatter.git  
$ bundle install  
$ rails db:{create,migrate}  
```


To Run local server  
```
$ rails c
```
(go to localhost:3000 in browser)

* also can view on heroku https://chatter-0.herokuapp.com
* FWIW currently on heroku the messages don't update without refreshing the page. works when run locally though

### How to use app

- click button to "Create Account" on the nav bar
- enter a valid email and password
- enter a message in the text field and hit "Send"
- you should see your message in the box above 


- open up another incognito tab and go to chatter home page
- log in with different user
- should be able to post a message and see it on the other users screen

