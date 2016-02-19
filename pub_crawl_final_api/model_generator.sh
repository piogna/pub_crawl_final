bundle exec rails g model crawl description:text user:references
bundle exec rails g model bar name:string address:string city:string province:string latitude:string longitude:string
bundle exec rails g model hop bar:references crawl:references
bundle exec rails g model review crawl:references user:references rating:integer comment:text
bundle exec rails g model invitee crawl:references user:references
bundle exec rails g model tag name:string
