def courses
  [
    {
      title: 'Intro',
      description: 'Why i am here? Why i should be in IT? So many why? Here is an answer!',
      slug: 'intro',
    },
    {
      title: 'GIT & other SCV',
      description: 'Main tool to make your code safe. Add to it some versioning. Flavor it with coworking ability. The basis of basises',
      slug: 'git'
    },
    {
      title: 'HTML',
      description: 'Like alphabet starts with "A", Web development starts with HTML. Meet it!',
      slug: 'html'
    },
    {
      title: 'CSS',
      description: 'Powerfull tool for style-oriented markuping in 2k17...CSS in da building',
      slug: 'css'
    },
    {
      title: 'Bootstrap',
      description: 'Bootstrap. Bootstrap it. Bootstrap it, faster. CSS-easy way lib',
      slug: 'bootstrap'
    },
    {
      title: 'JavaScript',
      description: 'You think static pages is enough for 2k17? Its ok for you when each click means "reload this page, darling"? Mighty CSS and Super Html can everythind? If you think so - JavaScript is not for you, man.',
      slug: 'js'
    },
    {
      title: 'JQuery',
      description: 'Why you havent show it to me before?!?!?1 Its so yummy, yummy, yummy',
      slug: 'jquery'
    },
    {
      title: 'Test your code! Why? How? When?',
      description: 'Jasmine, Karma, Protractor, Mocha, Chai and another modern powerfull tools for testing.',
      slug: 'js-tests'
    },
    {
      title: 'JavaScript libs and frameworks',
      description: 'Man shall not live by JavaScript alone. Here is a pull of the most powerfull and modern libs whith small description',
      slug: 'js-libs'
    },
    {
      title: 'Refactoring',
      description: 'Sometimes you will never get the rubish out if nobody says that its rubish! Clean your code! Different approaches for the main idea.',
      slug: 'refactoring'
    },
    {
      title: 'MySQL',
      description: 'The system of database management. Create/Destroy/Update/Delete your data immediately. Select all clasters of data you want in few seconds.',
      slug: 'mysql'
    },
    {
      title: 'Linux vs Terminal',
      description: 'Thats Linux Torvald pink world. Discover main commands and utils of Linux',
      slug: 'linux'
    },
    {
      title: 'Ruby',
      description: 'Welcome to BackEnd mine of Ruby. Here we start to deal with it!',
      slug: 'ruby'
    },
    {
      title: 'Rails',
      description: 'Top Ruby framework. Nothing else.',
      slug: 'rails'
    },
    {
      title: 'TDD vs BDD',
      description: 'Methodologies that develop yourself and open eyes for another workflow of development',
      slug: 'tdd'
    },
    {
      title: 'React.js',
      description: 'Reactify yourself. Top JS framework of 2k17',
      slug: 'react'
    }
  ].each_with_index do |project, key|
    unless Course.exists?(title: project[:title])
      begin
        Course.create!(
          order: key + 1,
          is_active: true,
          title: project[:title],
          slug: project[:slug],
          description: project[:description]
        )
      rescue
        "Something went wrong with #{project[:title]}"
      end
    end
  end
end

def init
  courses
end

init
