FactoryGirl.define do
  factory :article do
    #association :blog, :factory => :blog
    blog_id 1 # https://github.com/thoughtbot/factory_girl/issues/359
    title "My grand father designed the lions in Trafalgar Square"
    body "It doesnt sound very cutting edge now, but at the time it really put the cat amongst the pigeons."
  end
  
  factory :invalid_article, parent: :article do |f|
    f.title nil
  end
end
