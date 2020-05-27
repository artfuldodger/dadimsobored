class HomeController < ApplicationController
  def index
    @categories = categories
  end

  private

  def categories
    [
      Category.new(
        'Learn',
        [
          {
            title: 'Khan Academy',
            url: 'https://www.khanacademy.org/',
            description: 'This is the best resource available for online classes. You can learn math, science, art, computer science, and more at your grade level.'
          },
          {
            title: 'Scholastic Learn at Home',
            url: 'https://classroommagazines.scholastic.com/support/learnathome.html',
            description: "A bunch of projects from Scholastic - you can also choose your own grade-level here."
          },
          {
            title: 'PBS LearningMedia',
            url: 'https://rmpbs.pbslearningmedia.org/',
            description: 'Watch some educational videos from PBS.'
          },
          {
            title: 'Prodigy Math Game',
            url: 'https://www.prodigygame.com/',
            description: 'Play a game while maybe learning some math along the way.'
          },
          {
            title: 'NASA at home',
            url: 'https://www.nasa.gov/nasa-at-home-for-kids-and-families',
            description: 'NASA-curated activities, videos, and the like.'
          },
          {
            title: 'NASA Kids Club',
            url: 'https://www.nasa.gov/kidsclub/index.html',
            description: 'Play games and learn about NASA.'
          },
          {
            title: 'Research Quest Live',
            url: 'https://nhmu.utah.edu/RQ-Live',
            description: 'From the Natural History Museum of Utah, you can attend live science classes.'
          },
          {
            title: 'Freckle',
            url: 'https://blog.freckle.com/freckle-at-home',
            description: "You'll need a parent to sign up, but then you get great educational resources."
          },
          {
            title: 'TEDEd',
            url: 'https://ed.ted.com/lessons?direction=desc&sort=featured-position&user_by_click=student',
            description: 'Lots of super interesting educational videos with illutrations. My favorite is The Bug that Poops Candy.'
          }
        ]
      ),
      Category.new(
        'Read',
        [
          {
            title: 'Storyline Online',
            url: 'https://www.storylineonline.net/',
            description: 'Watch fun videos of books being read aloud'
          },
          {
            title: 'Audible Stories',
            url: 'https://stories.audible.com/',
            description: 'Listen to free audiobooks for a huge number of kid books'
          },
          {
            title: 'Denver Library Story Time',
            url: 'https://www.youtube.com/user/denverlibrary',
            description: 'Listen to stories read aloud at the Denver Public Library.'
          },
          {
            title: 'Stories from Space',
            url: 'https://storytimefromspace.com/',
            description: 'Real astronauts read you stories from LITERALLY SPACE'
          }
        ]
      ),
      Category.new(
        'Explore',
        [
          {
            title: 'Explore.org',
            url: 'https://explore.org/',
            description: 'Live cams of wildlife from all over. Also some documentaries.'
          },
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
          },
          {
            title: 'Cincinnati Zoo and Botanical Garden',
            url: 'https://www.youtube.com/channel/UCE3VoxyYmyQCReOXk2ogsVg',
            description: 'Videos from the Cincinnati Zoo. I like the one of hippos squishing watermelons.'
          }
        ]
      ),
      Category.new(
        'Arts and Crafts',
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
          },
          {
            title: 'Sew a mask',
            url: 'https://github.com/bldg61/tutorials/blob/master/sewing/medicalStyleMasks.pdf',
            description: "If you've got some sewing skills and a parent helper, try making a medical-style mask."
          }
        ]
      ),
      Category.new(
        'Programming',
        [
          {
            title: 'Code.org',
            url: 'https://code.org/athome',
            description: 'Lots of fun programming classes and tutorials. Minecraft!'
          },
          {
            title: 'Codecademy',
            url: 'https://www.codecademy.com/',
            description: 'Fancy and cool programming site that is good enough for adults so it is good enough for you'
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
          },
          {
            title: 'Microsoft MakeCode',
            url: 'https://arcade.makecode.com/',
            description: 'Another great option for learning to code by building games.'
          }
        ]
      ),
      Category.new(
        'Build a Website',
        [
          {
            title: 'Neocities',
            url: 'https://neocities.org/',
            description: 'Make your own website and share it with the world.'
          },
          {
            title: 'Blogger',
            url: 'https://www.blogger.com/',
            description: 'Create a blog. Share your thoughts, your poetry, your art, your pictures, etc!'
          }
        ]
      ),
      Category.new(
        'Entertainment',
        [
          {
            title: 'ABCya',
            url: 'https://www.abcya.com/',
            description: "Lots of exciting, free, educational web-based games"
          },
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
        'Get Moving',
        [
          {
            title: 'GoNoodle',
            url: 'https://www.gonoodle.com/',
            description: 'Watch some silly videos that get you moving!'
          },
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
