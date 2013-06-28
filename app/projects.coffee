module.exports = projects = [
  {
    name: 'WebMote'
    tooltip: 'Built with Django, arduino, and circuitry'
    desc: "Control all the electronics in your house using your mobile phone"
    link: 'http://github.com/azylman/webmote'
    img: 'webmote'
  }
  {
    name: 'RollCall'
    tooltip: 'Built with CoffeeScript, Node.js, and Objective-C'
    desc: "iOS app that allows a principal to quickly and easily pull up all contact info associated with a student and his family"
    link: 'http://www.getclever.com/apps/rollcall'
    img: 'rollcall'
  }
  {
    name: 'Circadian.me'
    tooltip: 'Built with Google Web Toolkit and Google App Engine'
    desc: "Personal branding page that aggregates a customer's Twitter, Blogger, and LinkedIn data"
    link: 'http://github.com/azylman/circadian'
    img: 'circadian'
  }
  {
    name: 'Sticklet'
    tooltip: 'Built with Python, Javascript, and Google App Engine'
    desc: "Cloud-based sticky notes service utilizing advanced features of HTML5"
    link: 'http://www.sticklet.com'
    img: 'sticklet'
  }
]

orientation = 'left'
for project in projects
  project.img = "/images/#{project.img}.png"
  project.orientation = orientation
  orientation = if orientation is 'left' then 'right' else 'left'