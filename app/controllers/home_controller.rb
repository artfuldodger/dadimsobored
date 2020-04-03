class HomeController < ApplicationController
  def index
    @categories = categories
  end

  private

  def categories
    [
      Category.new(
        'Learnings',
        [
          {
            title: 'NASA at home',
            url: 'https://www.nasa.gov/nasa-at-home-for-kids-and-families',
            description: 'NASA curated activities, videos, and the like.'
          },
          {
            title: 'Khan Academy',
            url: 'https://www.khanacademy.org/',
            description: 'This is the best resource available for online classes. Math, science, art, computer science, and more targeted by grade.'
          },
          {
            title: 'Scholastic Learn at Home',
            url: 'https://classroommagazines.scholastic.com/support/learnathome.html',
            description: "Scholastic's list of projects for everybody from preK to grade 9."
          },
          {
            title: 'PBS LearningMedia',
            url: 'https://rmpbs.pbslearningmedia.org/',
            description: 'Educational videos from PBS.'
          },
          {
            title: 'TIME for Kids',
            url: 'https://time.com/tfk-free/',
            description: "Magazine that's free for this year only."
          }
        ]
      ),
      Category.new(
        'Entertainments',
        [
          {
            title: 'PBS Kids',
            url: 'https://pbskids.org/',
            description: 'Games and TV from PBS'
          }
        ]
      ),
      Category.new(
        'Museums',
        [
          {
            title: 'Google Arts and Culture',
            url: 'https://artsandculture.google.com/partner?hl=en',
            description: 'Look at art from museums around the world.'
          }
        ]
      ),
      Category.new(
        'Explore',
        [
          {
            title: 'National Parks Tours',
            url: 'https://artsandculture.withgoogle.com/en-us/national-parks-service',
            description: 'Take virtual tours of national parks.'
          }
        ]
      ),
      Category.new(
        'Get Moving',
        [
          {
            title: 'Do 50 jumping jacks',
            description: 'Jump up. Clap your hands.'
          },
          {
            title: 'Do 10 push ups.',
            description: 'Do it. Touch your nose to the floor.'
          },
          {
            title: 'Run around the block twice',
            description: 'Go as fast as you can around the block. Twice.'
          }
        ]
      )
    ]
  end

  class Category
    attr_accessor :name, :links

    def initialize(name, links)
      self.name = name
      self.links = Link.wrap(links)
    end
  end

  class Link < Struct.new(:title, :url, :description)
    def self.wrap(links)
      links.map { |link| new(link[:title], link[:url], link[:description]) }
    end
  end
end
