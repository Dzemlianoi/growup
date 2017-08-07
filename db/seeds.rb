def courses
  [
    {
      title: 'Intro',
      description: 'Why i am here? Why i should be in IT? Why, why, why? Here is an answer!',
    },
    {
      title: 'HTML',
      description: 'Like alphabet starts with A, Web development starts with HTML.'
    },
    {
      title: 'CSS',
      description: 'Powerfull tool for style-oriented markuping in 2k17...CSS in da building'
    },
    {
      title: 'Bootstrap',
      description: 'Bootstrap. Bootstrap it. Bootstrap it, faster.'
    },
    {
      title: 'JavaScript',
      description: 'You think static pages is enough for 2k17? Its ok for you when each click means "reload this page, darling"? Mighty CSS and Super Html can everythind? If you think so - JavaScript is not for you, man.'
    },
    {
      title: 'JQuery',
      description: 'WHY YOU HAVENT SHOW IT TO ME BEFORE?!?!?1 Its so yummy, yummy, yummy'
    },
    {
      title: 'Test your code! Why? How? When?',
      description: 'Jasmine, Karma, Protractor, Mocha, Chai and another modern powerfull tools for testing.'
    },
    {
      title: 'JavaScript libs and frameworks',
      description: 'Man shall not live by JavaScript alone. Here is a pull of the most powerfull and modern libs whith small description'
    }
  ].each_with_index do |project, key|
    begin
      Course.create!(
        order: key + 1,
        is_active: true,
        title: project[:title],
        description: project[:description]
      )
    rescue
      "Something went wrong with #{project[:title]}"
    end
  end
end

courses
