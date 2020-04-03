class HomeController < ApplicationController
  def index
    @categories = categories
  end

  private

  def categories
    [
      Category.new(
        'Learning',
        [
          {
            title: 'Khan Academy',
            url: 'https://www.khanacademy.org/',
            description: 'This is the best resource available for online classes. Math, science, art, computer science, and more targeted by grade.'
          },
          {
            title: 'NASA at home',
            url: 'https://www.nasa.gov/nasa-at-home-for-kids-and-families',
            description: 'NASA curated activities, videos, and the like.'
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
            title: 'Prodigy Math Game',
            url: 'https://www.prodigygame.com/',
            description: 'Play a game while maybe learning some math along the way.'
          },
          {
            title: 'Tynker',
            url: 'https://www.tynker.com/',
            description: 'Learn to code by playing and modifying games.'
          },
          {
            title: 'Scratch from MIT',
            url: 'https://scratch.mit.edu/',
            description: 'Learn to code by building games.'
          }
        ]
      ),
      Category.new(
        'Read',
        [
          {
            title: 'Storyline Online',
            url: 'https://www.storylineonline.net/',
            description: 'Fun videos of books being read aloud'
          },
          {
            title: 'Audible Stories',
            url: 'https://stories.audible.com/',
            description: 'Free audiobooks for a huge number of kid books'
          },
          {
            title: 'Denver Library Story Time',
            url: 'https://www.youtube.com/user/denverlibrary',
            description: 'Stories read aloud at the Denver Public Library.'
          }
        ]
      ),
      Category.new(
        'Entertainment',
        [
          {
            title: 'PBS Kids',
            url: 'https://pbskids.org/',
            description: 'Games and TV from PBS'
          },
          {
            title: 'TIME for Kids',
            url: 'https://time.com/tfk-free/',
            description: "Magazine that's free for this year only."
          },
          {
            title: 'Jeff and Paige',
            url: 'https://www.jeffandpaige.org/',
            description: "Bringing science and nature to life through kid-delighting music and stories"
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
          },
          {
            title: 'Aquarium Web Cams',
            url: 'https://www.montereybayaquarium.org/animals/live-cams/',
            description: 'Watch some web cams at the Monterey Bay Aquarium.'
          },
          {
            title: 'Puppy Cam',
            url: 'https://www.cci.org/get-involved/puppy-day-puppy-cam.html',
            description: 'Watch puppies play with the Canine Companions Puppy Cam'
          },
          {
            title: 'Google Arts and Culture',
            url: 'https://artsandculture.google.com/partner?hl=en',
            description: 'Look at art from museums around the world.'
          }
        ]
      ),
      Category.new(
        'Get Moving',
        [
          {
            title: 'Do 50 jumping jacks',
            description: 'Jump up. Clap your hands. Maybe do these outside.'
          },
          {
            title: 'Do 10 push ups.',
            description: 'Do it. Touch your nose to the floor.'
          },
          {
            title: 'Run around the block twice',
            description: 'Go as fast as you can around the block. Twice.'
          },
          {
            title: 'Do 10 burpees',
            description: 'Do a push up. Jump up. Clap your hands over your head. Repeat.'
          }
        ]
      ),
      Category.new(
        'Art and Crafts',
        [
          {
            title: 'Cardboard box projects',
            url: 'https://www.google.com/search?q=cardboard+box+projects',
            description: 'You can make a lot of fun stuff from cardboard boxes. Find a project.'
          },
          {
            title: 'Art for Kids Hub',
            url: 'https://www.youtube.com/user/ArtforKidsHub',
            description: 'A YouTube channel with lots of art lessons to follow along.'
          },
          {
            title: 'Lunch Doodles with Mo Willems',
            url: 'https://www.youtube.com/watch?v=k4RfUC6-aKE&list=PL14hRqd0PELGbKihHuTqx_pbvCLqGbOkF',
            description: 'Another YouTube channel with art lessons'
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
