# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# seeds for users, skills, roles
# then make posts

Skill.destroy_all
Role.destroy_all
Vote.destroy_all
Post.destroy_all
Profile.destroy_all
User.destroy_all

puts "Creating Skills and Roles"

skill = Skill.new(name: "Javascript")
skill.save!
puts "#{skill.name} created"

skill = Skill.new(name: "Ruby")
skill.save!
puts "#{skill.name} created"

skill = Skill.new(name: "CSS")
skill.save!
puts "#{skill.name} created"

skill = Skill.new(name: "React")
skill.save!
puts "#{skill.name} created"

role = Role.new(name: "Frontend")
role.save!
puts "#{role.name} created"

role = Role.new(name: "Backend")
role.save!
puts "#{role.name} created"

role = Role.new(name: "freelance")
role.save!
puts "#{role.name} created"

role = Role.new(name: "Full-stack")
role.save!
puts "#{role.name} created"

puts "Finished creating Skills and Roles"

user = User.new(
  first_name: "Charlie",
  last_name: "Jeppsson",
  email: "charlie@mail.com",
  username: "charliejeppsson",
  password: "123456"
)
user.save!
puts "#{user.first_name} created"

profile = Profile.new(
  avatar_url: "https://avatars.githubusercontent.com/u/23011729?v=4",
  user: user,
  GitHub_url: "https://github.com/charliejeppsson",
  LinkedIn_url: "https://www.linkedin.com/in/charlie-jeppsson-71315661/",
  website_url: "https://medium.com/@charliejeppsson",
  description: "Banker to full-stack developer",
  credentials: "Le Wagon alumni",
  years_of_experience: 3,
  city: "Stocholm",
  current_role: "self-employed"
)

profile.save!
puts "#{profile.user.first_name} created"

post = Post.new(
  title: "How I landed a full stack developer job without a tech degree or work experience",
  blurb: "From banker to full stack developer",
  content: "Six months ago, I got my first developer job as full stack web developer for a startup. I had no relevant work experience, no tech degree, and not even a year of active coding experience. And yet I managed to land my dream offer, and can today for the first time in my life say that I love my job. Here’s how I did it — the long version. Part 1: Embracing the quarter-life crisis
  About three years ago, I was in the middle of a raging quarter-life crisis. I’d graduated from business school, gotten an attractive investment banking job, and then quit that same job just a few months in after realizing I hated everything about it.
  Completely lost and quite cliché, I went solo traveling for a few months to “find myself”. And although I thought I did, I didn’t. Not enough anyway. But it actually helped me figure out a few things.
  The first thing was that I simply couldn’t keep pursuing a finance career. I just couldn’t see any future scenario where that would make me happy.
  The second thing was that backpacking and surfing, although being great and all, wouldn’t help me find that “calling” I was looking for. The only reasonable thing to do seemed like the classic trial-and-error method.
  So when I got back home, I decided to try out a few things that I thought might both make me happy and at the same time provide for some sort of decent living. And trial-and-error it was.
  First, I thought I’d give writing a serious shot. So I started writing and editing part-time for an online business magazine. It was pretty cool for a while. Working three days a week in a fast-paced editorial office, writing about anything business, finance, tech or sustainability-related.
  At the same time, I’d heard so much about life as a freelancer while travelling that I thought I’d try it out. So I set up my own firm, and soon enough stumbled upon a few business analyst projects. Being my own boss was of course very exciting at first, and being able to work from literally anywhere was completely new for me.
  I went on like this for about eight months, doubling as a writer/editor and a freelancing business analyst. But eventually I started losing interest in the job at the magazine.
  As any sane person dealing with digital content will know, clickbait cultures come at the expense of creativity and quality. In other words, when the main incentive of your content is clicks, all the superlatives required to hunt down those clicks will soon wear down on any creative ambitions that were there in the first place. Besides, I couldn’t shake the feeling that as a writer/editor, I was always too far away from the action I was reporting on.
  So I quit. Which was ok according to my trial-and-error deal with myself. But it still felt crappy, since I’d actually invested eight months into the whole writing thing. But as someone smart may or may not have said: when one door closes, another one opens.
  And I still had one more thing on my trial-and-error list to check off.
  Part 2: The lunch that changed my life
  Life is weird, and sometimes it will hide the biggest, most life-changing inspirations in the places you’d least expect. It was certainly like that for me when I experienced my first “pull” towards coding.
  Although quitting the job at the magazine felt like a failure, the experience would prove to not have been completely in vain after all. After writing so much about tech startups and the exciting lives of entrepreneurs, I was dead set on giving that lifestyle a shot as well.
  And after about a month of research and job hunting, I managed to land a job at one of the then — supposedly — most promising FinTech companies in the Nordics. In just a few years, it had grown to become one of Europe’s biggest equity crowdfunding platforms.
  I hadn’t really applied to any specific job opening. But since I really believed in the company’s mission, and was impressed by their success, I’d rather just gotten in touch with their CFO telling him just that. We met a couple of times, and all of a sudden I was working there in some quite fuzzy business development role.
  Although I’d hoped to get to work on strategic and analytical projects, I ended up doing what fuzzy business developers usually end up doing: selling. Which was also why this job too didn’t work out in the end.
  But, there’s more.
  Just like the last job experience from the magazine, this job would also prove to not have been all in vain. In fact, without it, I’d probably not be a developer today. Because that’s where I met Sandra.
  She was a front-end developer in the product team, sitting just on the other end of the tiny coworking office we were cramped in at the time.
  Technically we were colleagues, but as anyone whose worked in a dysfunctional tech company will know, the distance from the sales team to the product team can often feel like galaxies apart.
  It didn’t help that management had just decided to outsource the whole dev team to a remote team in Ukraine either. Meaning Sandra and all the other developers would be let go and were more or less just serving their two months notice.
  Despite this distance, one day Sandra and I ended up having lunch together. It would basically be my first real conversation with a professional developer, and I think it was a mix of genuine curiosity and my accelerating existential crisis that quickly more or less turned the lunch into an interview.
  And our lunch ended up being a totally life-changing experience for me. More specifically, three revelations made it so.
  I was shocked to learn that she had no “real” education in web development, which for me at the time would equal nothing short of an academic degree. Everything she knew, she’d learned from MOOC platforms (Massive Open Online Courses), like freeCodeCamp and Codecademy.
  She told me she had a background in finance, just like me. In fact, she had been working as a business controller for several years until just recently, when she’d joined the same startup as I had, just a few months earlier as a front-end intern.
  When she showed me the portfolio page she’d built with just some six months of coding experience, I couldn’t believe it. It was incredible.
  That lunch opened up a world of possibilities for me. Sandra’s story made me hungry for more.
  So for weeks I researched the different types of paths that people had taken to become developers. I ended up in all sorts of forums and articles, many of which I found right here on Medium.
  For example, Stackoverflow’s annual developer survey (100,000 interviewees) stated that only half of all professional developers had a bachelor’s degree, and of this half, a whole third majored in something completely unrelated to computer science and software engineering.
  The more I read, the more I realized how narrow my definition of education had been. If you didn’t need a computer science degree to break into something as complex as software engineering, what did you need an academic degree for? Although I might not have been able to see it then, I now clearly see how broken the academic system is.
  It was designed for the industrial age of workers, where you’d specialize in one craft, and then use those same skills for the rest of your life. It was certainly not designed for today’s knowledge society, where all information of the history of the world is never more than a few clicks away, and where things change so fast that education must in fact be a life-long process, and not the learn-once-use-forever one-off experience.
  But that’s a topic big enough for an article by itself. The important thing about that lunch with Sandra was that it ignited something in me, and motivated me to break free from the destructive loop that I found my current half-assed business career to be.
  Although I’d always envied programmers around me — even to the extent that I’d taken a Python 101 summer course a few years earlier — I’d never considered it a viable career path for me. At least not without going back to university for 3 — 5 years.
  So if you’re reading this Sandra, thank you! If I with this article can inspire just one person the way you inspired me, I’d consider the effort of writing it repaid a thousand times.
  Part 3: The text that cost me $6,000
  Over the next few months I spent hundreds of hours on online platforms like Codecademy and freeCodeCamp. I even purchased a subscription to the paid platform Code School.
  I’m not sure I really knew what my goal was. What got me started was the desperation of my recurring career disappointments. But what kept me going was how ridiculously fun and rewarding I found the coding exercises to be.
  I couldn’t even tell you at what point the coding turned from a casual side project, to the dead-serious “I’m going to be a professional developer.” But it was probably somewhere around here. I was just about to receive my front-end certificate from freeCodeCamp, when my next life-changing event occurred.
  After quitting my job as a business developer, I’d decided to escape the freezing limbo that is Swedish winter to go travel in Central America. I reckoned that if I was gonna spend hundreds of hours alone, teaching myself coding, I might as well do it somewhere warm, cheap, and not depressing.
  I was coding on my laptop in a hostel in El Salvador, when I got a text from my friend Marie.
  “I got the job!” it said.
  Marie was also learning how to code. I recalled how she, a few months earlier, had been telling me about this code school she went to. A “coding bootcamp.”
  At the time I’d basically mocked her for it — So. You’re gonna pay $5,000 for a 12 week course? And you’re not receiving a single university credit for it? And you dropped out of your top-tier MBA to do this? Sounds legit.
  And yet there she was. Four months later, and Marie was officially employed by one of Accenture’s digital agencies as a junior back-end developer. I was really happy for her, but of course also extremely jealous.
  I stopped what I was doing and made some calculations. If I could keep up my current pace, coding some 6 hours per day on average, about 5 days a week, I would do 30 hours per week. So to finish freeCodeCamp’s full 1,200 hour program, it would take me at least 8 more months. And that’s if I could keep up the pace. Which I definitely couldn’t, since my money was running out and I would have to go back to Sweden and get a new job soon.
  I kicked myself for not having taken the same road as Marie from the start, and spent my money on a bootcamp instead of backpacking for 4 months. Well, what’s done is done, I thought to myself. I’d still have to accept the fact that a bootcamp was the best option to reach an employable level fast enough.
  Back to good old Google research.

  In a way, I felt like I was right back where I started after that lunch with Sandra. Only this time, I looked at the whole bootcamp phenomenon with a fresh pair of eyes. Knowing Marie’s story, I knew that not all of them were too-good-to-be-true scams, but actually plausible ways to break into the industry.
  Later on, Stackoverflow’s annual developer survey again reassured me with the stats that 88.1% of coding bootcamp alumni had been hired within a year after finishing the bootcamp.
  Thanks to Switchup and Coursereport, it didn’t take long until I discovered Le Wagon, the French coding bootcamp startup success story with more than 15 locations all around the world and top 5 ratings on both rankings (at the time of writing, actually #1 on both, with 27 locations!).
  After comparing it with alternatives like Hack Reactor, Ironhack, General Assembly, and NYCDA, a few main reasons made me prefer it over the others:
  The relatively low price (back then $6,000).
  The focus on entrepreneurship and product development.
  The global presence and community.
  Nevertheless, I still had a few doubts about the program.
  The choice of the backend language Ruby and the MVC framework Rails. Although it appeared like this was pretty common among other recognized bootcamps, almost every article I read on the subject suggested that Javascript was really hot and what employers were looking for. My friend Marie’s bootcamp, for instance, taught a backend stack based on Node.js and Express.js. Both Javascript-based technologies. Some common arguments seemed to be that Ruby was a great language for learning, but that Node and Express were skills employers valued a lot higher. Was Ruby really the horse to bet on?
  The 9-week duration of the course seemed a bit short. Most competing programs appeared to be at least 12 weeks, which already seemed way too short to become an employable web developer.
  Le Wagon offered no actual job hunting assistance after completing the bootcamp. Many competitors offered either employment guarantees or seemingly solid career services functions.
  I’ll address each of these three doubts one by one with my post-bootcamp conclusions at the end of the next section.
  However, despite my concerns I figured it was my best option, which is why I decided to apply to their school in Barcelona. A few days later the local school manager Gus reached out to me for a Skype interview.
  Hooked up to a crappy Wi-Fi at a café in the lazy surftown of El Tunco we had a brief chat. But it was a lot more informal than I’d expected. I felt we connected, which made me want to get admitted even more. And then, not even 24 hours later, I got the email I’d been waiting for. Gus told me he would be pleased to have me in the next batch, and that the only thing I had to do next was pay the $1,200 deposit to reserve my place.
  That was basically all the money I had left at the time, and it was supposed to pay for my last weeks in El Salvador — including the eventual trip home. But if I could just manage to stick to a tighter budget, and book an earlier flight home than expected, I knew I could make it.
  So, after a brief moment of hesitation, and recalling the concerns I still held for Le Wagon, I acted on intuition, and transferred Gus the deposit. Afterwards, I remember feeling a bit awkward. Had I really just committed to paying almost $6,000 for a 9-week coding course? As a Swede, who’s never ever paid a single cent for education, the situation felt quite bizarre.
  However, it didn’t take long until that bizarre feeling turned into excitement. At least now I knew I wouldn’t have to go back to working in finance, sales, or online media in any near future. The same day, I started making arrangements for the time up until the bootcamp.
  In the three months left, I would somehow have to earn the remaining $4,800 of the fee. Plus rent and living expenses. Well sh*t.
  I reached out to one of the companies that I’d previously consulted for, and luckily enough they had the perfect business analyst project coming up. Since they initially wouldn’t accept anything less than a 4-month contract, I had to convince them I could do the job in two. Somehow, it worked.
  Phew! Just one week earlier, I’d been a runaway traveler without a thought of ever going home. Now, I was to start my new two-month gig in Stockholm in less than two weeks, and then move to Barcelona. Exciting things ahead indeed.
  Part 4: Bootcamp in Barcelona
  Fast-forward three months.. It’s the 1st of May 2017, and I’m in a classroom attending my first Le Wagon lecture.
  Around me are some 25 people from all corners of the world. Kilian from Germany, Daniel from Venezuela, Francesca from France, Arbi from Italy, Courtney from the US, and so on. Some with no coding experience at all, some with a little, and a few actually halfway to getting their computer science degrees.
  We’re listening to Gus, the local school manager, and Ruben, a Ruby teacher, explaining the structure of the program ahead.
  As we all would come to learn, the schedule was very systematic. Over the coming 9 weeks, we would spend more or less an equal amount of time on 6 different modules, each dealing with a topic of its own, finishing up with two weeks spent on planning and developing our very own web app.
  For the whole first week, I remember feeling quite confident about the course content. After all those hundreds of hours on freeCodeCamp, the difficulty level of the daily coding challenges seemed a bit low.
  Although Ruby was still pretty new to me, the basics seemed to be pretty much the same as with Javascript and Python. Listening to lectures and doing exercises to learn about variables, arrays, hashes, basic functions, and iterations felt quite repetitive. So I got cocky, and wondered if I’d actually get anything out of this bootcamp thing. However, not even a week later, all that would change. I went from feeling like the top of the class to actually struggling to keep up.
  Before I knew it, we were moving on from the basics to object-oriented programming, MVC architectures, and databases, and there were plenty of days when I felt I hadn’t even understood the concepts of the day before, and was already expected to move on to the next topic.
  So I had to put in the next gear. 10 hours a day in the classroom wouldn’t cut it for me. I made it a routine to put in a few extra hours each night, and spend most of the weekends repeating the trickiest stuff from the past week. It sucked a bit to not be able to enjoy Barcelona as much as I had the first few weeks, but the fact that I’d invested all my savings into the bootcamp was a big motivation.
  Another source of frustration was the scattered nature of the things we were learning. It felt like we’d been given a hundred puzzle pieces, but no instructions of how to put them all together. Knowing how to write basic Ruby, HTML, CSS, Javascript and SQL was really empowering, but how would that knowledge help me put together an actual app?
  And then came my big AHA moment.
  It was week 6 and we’d finally reached the Ruby on Rails module. Before I knew it I was looking at my Chrome browser window and reading the words “Yay! You’re on Rails!”. That was my first web app, the teacher said.

  Default landing page for any new Rails project.
  What? All I’d done was run a few simple commands in my terminal and surfed onto http://localhost:3000/ in my browser. What was I even looking at?
  I wasn’t until I opened up the app directory in the text editor that that big sweet understanding fell into place. Rails displayed it all so beautifully simply.
  One folder for the HTML, one for the CSS and Javascript, one for the controllers, and one for the models. One file for the routes. And one file for that sweet, sweet schema, mapping out the entire database like it wasn’t more complex than a grocery shopping list.
  After finally getting the big picture of how all those pieces would practically fit together in an MVC framework like Rails, spending all my nights and weekends coding was not much of a struggle anymore. Quite oppositely, I would often struggle to get off my laptop to go to bed at night.
  I was on a roll, getting massive new insights every single day. And it gave this intoxicating effect that’s still kind of hard to put down in words.
  So I can actually mix HTML and Ruby in my erb files?
  I can access instance variables from the controller in the associated html.erb file?
  I can import code that other people wrote using this thing called Gems?
  I can write as much vanilla JavaScript as I want in the assets/javascript directory?
  I can use the Rails console in the terminal to basically do whatever I want with the entire database?
  It was just a never-ending stream of incredibly satisfying Aha moments. Like you’d just realized the force was actually strong with you, and that you got one step closer to go full Jedi with each piece of new knowledge. Even now, nine months later, it feels like I’m still on that same high, and I’m starting to think it actually might be something permanent. How lovely that would be.
  Anyhow, the bootcamp train wasn’t slowing down, and soon enough we’d reached the last two weeks, when we were supposed to build our own app. The two weeks would end with a big Demo Day, where each group would pitch and demo their apps in front of cameras and a big audience.
  Pressure.
  To our surprise, the planning turned out to be the most time-consuming part by far. Although we prepared a lot in the past few weeks — pitching app ideas, forming groups, designing features in Sketch — it wasn’t until after a few days of coding that we realized we’d been way too ambitious.
  The initial idea for the app was sort of the “Happn for professional connections.” More specifically, letting users create pages for networking events that other users could attend and check in to. “But that’s Meetup,” you might be thinking. But our idea had a twist: you could only check in to an event if you were physically at the event location. Thus the “Happn for professional connections.”
  Once checked in at an event, a user would be able to see the professional profiles of other checked in users, using data gathered through LinkedIn’s API, and connect and chat with the ones who matched their interests, thus not missing out on potentially great connections.
  This was our initial MVP (minimum viable product) and we decided to call it Unify. Super corny and Silicon Valley wannabe, I know. But in our defence, we had better things to to with our time than think of better names.
  Like brainstorming about the actual features. But then we actually brainstormed a bit too much, and features were added and removed until we ended up with a completely different app that,
  would never be demo-ready within the remaining ten days, and
  wasn’t nearly as disruptive as we thought our first idea was.
  So we had to narrow down the features to the MVP, and actually ended up with almost exactly the same product that the Le Wagon manager Gus had recommended that we go with from the start.
  Big waste of time, was what we thought then. But the process at least taught me a few really important things about product development:
  When done right, it should be a whole lot more about planning than actual coding.
  Having to clean up old code mistakes is a lot more time-consuming than planning thoroughly and doing things right from the start.
  The MVP is always smaller than you’d think from the start.
  Some ten days later, after more than 100 hours of coding, designing, arguing, testing, database migrations and database rollbacks, we’d somehow miraculously reached the Demo Day and actually felt pretty good about our app. Sure, it was far from perfect, but all the main features were actually working like we wanted them to.

  However, just a few hours before the demo, we’d all nearly have a heart attack.
  Google’s geolocation API wasn’t responding as it should to our requests, so we couldn’t check in to the event that we would use for the demo. We tried everything. Switching computers and users. Deleting and creating new events. Changing the event street address. Nothing worked.
  The three of us tried to stay calm and not panic. It was probably just a bug the guy responsible for the geolocation feature would know how to solve easily.
  But he was running late, so we tried calling him.
  No answer.
  We tried calling again.
  No answer, again.
  And then we panicked.
  Not until the last minute, thanks to one of our amazing teaching assistants, Antoine, we managed to find the bug. Turns out we’d accidentally set the distance range too low, which was why the app couldn’t confirm that we were actually at the event location. We simply increased the radius by a few kilometers, committed, and pushed the change to our production server.
  And voilà — the app worked perfectly. And so did the demo.
  Overall, my Le Wagon experience was nothing short of amazing. I’ve probably never learnt so much in such a short time. In hindsight, it’s actually hard to believe that most of us were able to develop full-featured web apps with basically just 9 weeks of development experience.
  But don’t fool yourself, the bootcamp will not do the work for you. To get anything out of it, you’ll have to give it your full commitment. I myself saw plenty of people fall behind or even drop out because they
  didn’t have the right expectations of the difficulty level,
  weren’t prepared enough, or
  were too busy with other things to keep up.
  On a final note, a mistake I think many rookies make is to consider a computer science degree a substitute to self-learning or a bootcamp, as a means of becoming a web and/or mobile developer. Based on my experiences, this is not accurate.
  Even if you’re pursuing a computer science degree, you’ll still need to fill in a ton of practical knowledge gaps to become productive. I practically saw this first hand in my bootcamp classmates with 2 — 3 years of CS studies behind them. Again, that’s because the academic model is broken and outdated, and hence can’t keep up with the extreme pace with which real-world software development is changing.
  From my point of view, if the goal is to become a developer, self-learning or a bootcamp will at some point be necessary either way. So a computer science degree should be perceived as a complement rather than a substitute.
  And the reason why a (good) bootcamp can turn you into a developer faster than self-learning, is the combination of the following:
  a thorough but concise curriculum,
  a seamless online platform with tutorials and exercises, and most importantly;
  the on-call support of a human when you hit a wall.
  To conclude this section, I’d like to address the three concerns I had before committing to the bootcamp with the insights I’ve gained since then.
  1. Learning Ruby on Rails instead of a JavaScript-based stack
  If you’re currently in the position I was in before joining my Rails bootcamp, overwhelmed by all the JavaScript hype flooding the Internet, you might ask yourself if Ruby is a dated language, and if Rails is a dated framework. If this is the case my short answer would be no.
  The long answer, however, would be this.
  The company I’m working at now has a high-traffic web app built with Rails on the backend, and the Ember.js frontend framework on the front. Having worked full-time with this app for about six months now has required just as much coding in Javascript from me as in Ruby, which has brought me some insight into the differences and similarities between the technologies.
  And sure, when it comes to client side HTML/CSS rendering (or the “views”), the Rails user experience isn’t even comparable to the big JavaScript frameworks. That I must give the Rails haters.
  For instance, take a basic comment section of an article or blog post. As a user you’d expect any comments you submit to appear instantly on your screen.
  In a modern JavaScript framework, this is simply a matter of pushing the new data (the comment) into the client side data store and making sure that the comment list updates its state to show the new comment. This way, you don’t have to wait for the new record to be sent all the way to the backend, stored in the database, and then requested by the client again. Instead the new comment appears instantly on your screen.
  Without any JavaScript on top of your Rails HTML code, the user would have to refresh the page to see any new comments on the article. Which is just awful UX. To avoid this, you can take a few different paths.
  Before the age of the JS frameworks, the main solution would be to sprinkle some quite unstructured AJAX logic on top of the HTML, which would often become very hard to maintain in the long run as your app gets bigger. Another option made available for Rails quite recently is the pubsub (publish-subscribe) websocket solution using something like Action Cable. For instance, this is what we used for the chat in the app we built in the bootcamp. The problem is just that without a wrapping JavaScript framework, the websocket logic can easily get unnecessarily complex, and also hard to maintain.
  Luckily, however, today we have the much better option to use JavaScript frameworks for these types of problems. And since the client side in my opinion is the weakest point of Rails, this is also my main argument why Rails should not be discarded as an option to for instance Laravel or the MERN stack. Just smack a crisp JavaScript framework on top, like React or Ember, and you’re good to go.
  I personally love our integration between Rails and Ember and how they complement each other. Their opinionated natures, solid track records, visionary leadership, and huge contributor communities make them stable, trustworthy, and suitable for junior developers like ourselves.
  If you’re still, despite my best efforts, feeling hesitant about betting on Ruby as your first backend language, I’d like to remind you that I knew practically nothing about JavaScript six months ago (except for some basic vanilla JS, React, and jQuery syntax), and today I work with, and transition between, both of these languages and frameworks seamlessly on a daily basis. And love every minute of it (figuratively speaking).
  So no matter what you bet on as your first language, don’t worry — you can always learn the second one on the job 😎
  2. Aren’t 9 weeks too short to learn anything?
  Regarding my concern that the duration of the bootcamp — a mere 9 weeks — might be too short to actually learn something valuable, Le wagon helped me bust that myth as well. In hindsight, it’s actually clear that I’d prefer 9 weeks over the 12 that most other bootcamps offer.
  The reason is that the bootcamp itself doesn’t actually take you to an employment-ready level. At least not for me. Rather it provided me with a solid introduction to all the necessary tools I would require to reach a productive level, and how to put them all together. So even if they would have given me three more weeks, it would just have meant a dozen more tool introductions. Tools that I would later have to actually learn how to use in depth. And that list was already more than long enough.
  It wasn’t until after the bootcamp, after weeks of building my own portfolio apps, that I understood how the tools really worked. So if you’ve decided that you want to do the bootcamp thing, but are comparing options based on a difference of a few weeks, my advice would be to remove that variable from the equation. Because if you’re anything like me, you will still have to relearn every single tool on your own.
  Looking back, it’s actually quite remarkable how accurate Le Wagon’s toolset was. In my current job I use most of these tools daily. Some examples would be Postgres, Git, GitHub, Sidekiq, Pundit, Heroku and Cloudinary. The only two things that I wished my teachers would have spent more time on would be how to use a JavaScript framework like React, and how to write tests with technologies like Rspec. Because learning those two on my own later proved to be crucial for landing my first developer job.
  3. Would a job guarantee and/or career services have helped me?
  As I mentioned earlier, many bootcamps have a “get hired or get your money back” policy. And many more have a career services body, to help you get in touch with potential employers and coach you for applications and interviews.
  And although this probably sounds like a sweet deal to many, I actually don’t think it would have made a difference for me. But then again, I also had the time to spend some 500 hours coding over the two months following the bootcamp, the privilege of having an elite school degree on my resume, and a lot of experience in applying and interviewing for jobs. If these things don’t apply to you, maybe this is a factor to consider when choosing among bootcamps. I don’t know.
  Part 5: Building a portfolio
  On the last of July this past summer, the bootcamp was over. But I was just getting started.
  Developing the Unify app in the bootcamp and taking it across the finish line had given me a lot of momentum, and I was determined to make the most out of that momentum while it was there.
  I still had some money left in the bank, and a few weeks left on the Barcelona apartment sublease. Basically everyone I knew in the city was leaving. So I had no reason at all to not just keep eating, sleeping, and dreaming code. Only half consciously I set up a few new routines and habits for myself:
  I would code every single day until I reached my goal, which of course was getting that first developer job. Meaning Monday to Sunday, day and night.
  I would push every piece of code that I wrote to Github, the #1 place for potential employers to inspect your code skills and level of ambition. Even if I didn’t feel like I’d produced something worth committing, I’d still do it just to build onto that sweet green commit history for all the world to see.

  My Github commit history from https://github.com/charliejeppsson.
  And I would immerse myself completely in as much software content as I possibly could. That meant listening to podcasts like Software Engineering Daily and SE Radio whenever I was doing some errand, out running, or cooking. It meant watching code talks, tutorials, and lectures from Youtube channels like Coding Tech, Traversy Media, and CS50. It meant reading Medium publications like Hacker Noon, freeCodeCamp, and Codeburst and magazines like Techcrunch and The Next Web. And it meant installing Dash on my laptop, to always easily be able to look up the proper documentation on whatever syntax issue I was struggling with at any given moment (for me then mostly MDN web docs, api.rubyonrails.org, and RubyDocs).
  In other words, my motivation to become a developer was stronger than ever, and I knew that having neither any academic or professional merits to show off, I would probably never even get called to a job interview unless I had a kickass portfolio. So that’s what I set my mind to do next.
  The day after the Demo Day, barely sober from the night out that had followed, I started building my very first own Rails app (that’s how strong the momentum was!). Cocky as I was, I figured the first app would take a few weeks to finish, now that I’d already gone through it all one time with the Unify app. Again, I was wrong.
  It would take me almost two months to finish it. There were so many processes in the last two weeks of the bootcamp that had gone by so fast, without me fully understanding them. I got stuck for several days on all kinds of stuff, from embarrassingly simple to somewhat advanced. Just configuring a datetime-picker required several days spent on Stackoverflow. Not to mention the chat feature, using websockets with Action Cable, which took me about two weeks to get right.
  But the time invested was so worth it. The app actually turned out pretty great: it was actually something I could demo for people and feel proud. And although there’d been many moments of desperation I’d learned a ton. And in fact, experiencing all that hustle gave me a lot of comfort in that the bootcamp had probably been a good choice.
  If it was this hard to code this stuff now when I was familiar with everything, how hard wouldn’t it have been if I hadn’t had the teaching assistants, the platform, and the curriculum when doing it all the first time?
  So sometime in late August I finished the app. I was back home in Stockholm, living in my dad’s apartment, broke and feeling quite pathetic. I tried my best to use that self-pity to keep ramping up my coding efforts. And it was working pretty ok.
  Soon enough the time came to code the actual portfolio website. And for once, I decided to keep it simple. So I put together a very minimalistic static web page where I could gather the stuff I’d done. After finishing it, my plan had been to start applying for jobs. But there was something that bothered me. Remember how I said that I’d been a bit hesitant towards Ruby on Rails before joining Le Wagon? Well, although I’d actually come to love Ruby’s minimalism and the simplicity of using Rails, I still felt like I’d taken a shortcut somewhere.
  Under the “Skills” section on my portfolio page, one could find Ruby, Rails, SQL, Postgres, HTML/CSS, jQuery, Bootstrap, Sketch, Git, and Heroku. And JavaScript.

  It was the last one that bothered me. It felt like a lie.
  If I started applying for jobs now, I could probably land something decent as a Rails developer. But what if all the haters were right, and Rails was actually outdated and dying? And what if I found my dream job, only to realize they used advanced JS technologies? I wouldn’t stand a chance with my 200 hours on freeCodeCamp and 2 — 3 jQuery days + 1 React.js day at the bootcamp.
  The hubris part of my brain spoke to me again - “Here’s an idea: what if I would learn the MEAN stack as well?” MEAN as in MongoDB, Express.js, Angular.js and Node.js, which is sort of like the JavaScript equivalent of what Rails is to Ruby. According to the search results on LinkedIn and Glassdoor, that would mean that I would more or less double the amount of developer jobs that I was qualified for.
  I recalled that Gus, the bootcamp manager, had told me that it would take me about another month to learn it. How hard could it be? I could probably do it in two weeks, was my thought.
  And that’s how I ended up in what I’d like to call the tutorial swamp.
  So once again, I turned to my old friend Google to research learning strategies. But after a few hours I still couldn’t seem to find a good online course for my MEAN stack 101 needs. They all seemed to be focusing on one part at a time, which is definitely the right way to go if you want to understand a framework in depth. But since I wanted to learn as much as I could within two weeks, just enough to be able to add a new project to my portfolio, I didn’t have time for that.
  That’s when I discovered a completely new dimension of development education: YouTube tutorials. There were so many out there. For every technology or stack I could think of, I found at least five decent tutorials.
  Eventually I found my way to the Traversy Media channel, and the tutorial series MEAN Stack Front To Back. Ten videos at 20 minutes each, showing you how to build a basic RESTful web app with both user registration and sign-in authentication. Perfect.

  Traversy Media - MEAN Stack Front to Back
  I started right away and coded along to each video on my laptop. And crazy enough, after just a few days I was done. I’d actually coded a fully functioning web app using completely foreign technologies. Node for the backend, Mongo for managing the database, Angular for the frontend, and Express for tying it all together.
  Could it really be this easy? Did I know this stuff now? While I was happy that it had been so much easier than I’d thought, a cold shiver of too-good-to-be-true ran down my spine.
  Well, since I was ahead of schedule, I figured, why not build onto the app a bit further? My idea was to turn it into a Medium clone, by just enabling basic blog post CRUD actions (create, read, update, delete), like we’d done in a project in the bootcamp with Rails.
  I didn’t get very far, though. I figured I would just need to add a couple of new routes, models, controllers and views, and that would be it. The problem was that I was still thinking in the “Rails way,” where “convention over configuration” makes features like this really easy and fast to build.
  As I’d read and heard plenty of times, the MEAN stack follows the opposite mantra: “configuration over convention,” meaning that you get a significantly more flexible framework by giving up some of the “magic” automations. Like getting a controller action of a certain name connected to a view with that same name, right out of the box. Which is a really sweet piece of magic to get when you’re a beginner.
  So realizing for the first time how much harder it was to code following “configuration over convention” came as a big slap in the face. Because it proved that my hunch about the whole tutorial process having been too good to be true was right. But it wasn’t until I started coding off-script, without the comforting instructions from Brad Traversy, that I realized it.
  So there I was, knee deep in the big pool of mud that was the MEAN stack to me then. The app was nowhere near ready to be added to my portfolio page. It literally had no features. Just the possibility for users to register, log in, and do nothing but look at some static Bootstrap designs.
  Another option was to just keep hustling the trial and error way. Unlike the bootcamp, I’d removed my training wheels WAY too soon, and would likely have to spend weeks on Stackoverflow to be able to finish the app the way I’d planned it. I didn’t have weeks. I was supposed to start applying for jobs yesterday.
  Ironically, it turned out the only way out of the tutorial swamp I’d put myself in, was to keep wading through it, by following more tutorials. Luckily, I found a pretty good one on the same Youtube channel, and decided to use it as my lifeline.

  Travery Media - Build an Angular 2 Spotify App
  And that’s how the web app that was supposed to be a Medium clone in the end became a music discovery app, using the Spotify Search API.
  Despite all the hustle, two weeks after the decision to try and learn the MEAN stack, I actually deployed a decent web app. Which had been my goal. Sure, it was a bit like cheating, but I figured that as long as I could demo it and explain all parts of it on a job interview, nobody would care if I’d followed a tutorial or not.
  Boom. All of a sudden I had three apps in my portfolio, and could add a bunch of new technologies to my skills repertoire. Finally, it was time to enter the next phase of my developer journey: the job hunt. And it was not a day too soon.
  Part 6. Applying for jobs
  All in all, it would take me about 4 weeks, 30 applications, 10 interviews, and 3 offers to find that perfect fit. And ironically enough, it would actually be the first company I applied to that I would join. I could of course call it a coincidence, but I think it’s more an effect of a thorough screening process before even starting to send applications.
  I’ll have to admit that I think a fair amount of luck played into my fast job hunt success. But for what it’s worth, I’ll describe the process I followed, as I think it taught me a few things about what jobs and companies to focus on for that first dev job.
  The first thing I did was set up a spreadsheet for a shortlist of interesting jobs (I’m originally a dull economist, remember?). Then I spent several days scouring the job boards of LinkedIn, Glassdoor, and Stackoverflow for jobs based on keywords like web, development, software, frontend, backend, Ruby, Rails, Javascript, Angular, Node, and Postgres.
  Not very surprisingly, the searches returned hundreds of jobs just in the Stockholm area alone. The companies behind them ranged from startups to digital agencies, media companies, cloud service providers, game developers, and everything in between.
  Over the past few months I’d managed to put together a pretty narrow set of criteria of what I wanted from my next employer.
  If I could choose any job I wanted, my priorities looked more or less like the following:
  I would code across the whole stack, meaning that I’d get to do just as much database and architecture stuff as UX/UI stuff, and mainly in JavaScript. All the hype around React probably had a lot to do with the latter. Like I told you before, for all I knew at this point, Rails was basically dying, and JavaScript was the future.
  My learning curve would be extremely steep, to the point that I’d have to code day and night to keep up. All to become as good as I possibly could in the shortest amount of time.
  My coworkers would be smart, ambitious, funny, and informal, and preferably all at the same time.
  The company would be a high-growth startup with a meaningful mission and a product related to blockchain, AI, and/or sustainability, or a top-tier digital agency with such projects.
  I would get paid fairly.
  That was about it. Pretty high demands for a rookie one might think. But note that a high salary was not part of the criteria (nor is it today, with 6 months of professional experience). Maybe I’m stating the obvious, but if you’re migrating into a pure development role from something completely different, I think it’s important to know that it doesn’t matter what you were paid before.
  For instance, I knew that my market value in the finance industry was about $5,000 per month. But realizing that software development is a fundamentally different craft, I’d set my goal around $3,700, but would settle for as low as $3,000 (which is significantly lower than the Swedish average salary around $4,000).
  With all the above criteria in mind, I’d start going through the job ads one by one, adding the ones I liked to my shortlist and abandoning the ones I didn’t. After a while I was noticing a few patterns:
  Firstly, most companies on paper required way more tech skills and experience than I could offer. This came as no surprise. From both my own research and the bootcamp I’d learned that the “junior developer” position was dying.
  That many companies considered it too expensive to spend the valuable time of senior developers on mentoring rookies. Which was why they prefered hiring senior developers, which are in very high demand but extremely low in supply.
  The big paradox here is of course that if no one takes it upon themselves to foster and teach junior developers, how can we ever patch the shortage of senior developers on the market? Nevertheless, having realized that this is the way the industry works today, I also realized that I’d have to apply for positions I wasn’t qualified for.
  Secondly, I saw that the hotter and bigger the company was, the more likely it was to include requirements of some computer science related degree and professional development experience. I reckoned that sure, a decent portfolio and cover letter could probably get you an interview with a company who requires a “Rails ninja” or “React superstar” rather than a novice like I was.
  But if the job ad explicitly requires 3+ years of professional JavaScript experience, and an MSc in a computer science related field, my chances of getting an interview are probably very slim.
  Thirdly, that almost every single job ad mentioned React. Despite all the hype around it online, I was still amazed by its crazy high demand.
  So amazed that I actually decided to spend a few hours a day building a small React web app, using React.js on the front and Rails on the back, so that I could add that to my portfolio and resume as well.
  For this I actually mostly used the notes from the one React lecture in Le Wagon’s bootcamp, but if you’d be interested in learning it you won’t have a hard time finding free guides out there, not least the ones from freeCodeCamp.
  Except for the fact that I could put React on my resume, the biggest benefit from this experience was getting comfortable with building a web app using components (as opposed to controllers and views, as is the Rails way), and working with props and state.
  Odds are that you’ll need to become friends with some sort of JavaScript framework sooner or later, and then these concepts will come handy either way, be it React, Angular, Vue, Ember or any other of the gazillion JavaScript frameworks out there.
  With new insights like the ones above, I could develop and refine the criteria I already had to determine whether a certain job should be added to my shortlist or not. Soon enough I had a list of some 50 job openings, and it was time to actually start sending out applications. Coming from a background where I’d applied and interviewed at hundreds of companies, this felt like the easiest part so far.
  This might have something to do with me being the kind of person that writes one generic cover letter that I send to everyone. I know what you’re thinking: every mentor/teacher/recruiter you’ve ever talked to has advised against this. But come on. It’s a job application. Not the speech for your best friend’s wedding.
  Odds are the recruiter won’t spend more than a minute on it anyway. So it won’t really matter if you mention that prize that the company won, or that you were impressed by the YoY growth last year, or your totally speculative opinion on why their culture is so much better than competitor X’s.
  What matters is that you’re able to express in text the case why you’re worth them spending an hour on meeting you — in a compelling, data-driven, and grammatically flawless way. If you want to have a look at mine, just write me and I’ll send it to you! Got some pretty flattering feedback on it, just saying…
  The next thing I did was update my CV and LinkedIn profile. And here I can’t stress enough the importance of keywords. Make sure that the names of all the technologies you know (or want to pretend that you know) are included in both. This way, you’re more likely to appear in search results (same here, just ask me and I’ll send you my CV).
  After sending all the applications, a week or so went by without me hearing anything from any of the companies. That actually turned out to be a well-needed period of rest for me. I took some time to reconnect with the friends and family I’d sort of neglected for the past few months, caught up by my new obsession.
  Then I started getting replies.
  Part 7: Doing interviews
  The first reply came from a really young startup. It basically consisted of two guys, an ex-banker CEO and a senior developer CTO. The email was from the CTO, and he was inviting me to my very first developer interview.
  Aware that the positive responses will always come before the rejections, I tried to keep a cool head and not get too excited.
  But still, just the fact that this guy, a senior developer with 10+ years of experience, had looked over my LinkedIn profile, cover letter, CV, and most importantly my portfolio and the code behind it on my Github profile, and still thought I might be able to write good code for them, made me feel pretty damn proud of myself.
  Although I didn’t think the company actually met all my criteria (mainly due to the tiny team and poor salary outlook), I responded immediately and accepted the invite.
  Despite all my efforts up to this point, I hadn’t spent much time actually preparing for the technical interview. But from what I’d heard and read it was supposed to be an art in itself, and in many cases something people would spend months preparing for.
  Oftentimes, bootcamp alumni and self-taught coders with more practical experience will fail the technical interview due to their lack of knowledge in fundamental computer science theory. Just like CS grads will often fail due to their lack of experience with building apps with modern technologies.
  But since I was running out of both time and money, I figured this too was something I’d have to learn by doing. I just couldn’t postpone the interviewing phase anymore. Just like I’d gotten burned many times when learning how to do the financial type of interview, I knew those burns were crucial for me finally figuring out how to win the interview. Why would the technical interview be any different?
  So I accepted the invite, and a few days later I walked into the lobby of their office. They were waiting for me by the reception desk.
  The place was a dump. If you’d ever seen The Office, it felt like I’d just stepped inside the office of the Dunder Mifflin Paper Company. They told me it used to be an office for a big auditing company, remade into a cheap interim coworking space for the time left until its planned renovation. We stepped into a conference room and sat down by a big wooden table.

  They started off by telling me a lot about themselves and the company. They’d just released a beta version of a new Medium-ish app for prominent lifestyle writers, and had raised a bit of money from friends and family in their seed round. But they were still pre-launch, and most definitely pre-revenue.
  After about an hour of what felt much more like a sales pitch than an interview, the CEO left and I was told that the CTO and I would continue for the technical part of the interview. My heart skipped a beat. From all that I’d read about technical interviews I expected to get all sorts of brain teasers, coding challenges, and questions on complex data structures thrown at me.
  But none came. Instead, the CTO starting asking me all these very open-ended questions.
  Like what technologies and frameworks I liked. If I could choose any new technology to learn next, what it would be. What I thought about the new syntax introduced by ES6 (the 2015 Javascript update, introducing a lot of new cool stuff like arrow functions, promises, and constants).
  We had a nice conversation that lasted for probably another half hour. But then came the big backlash, when the CTO decided to put all the cards on the table.
  Due to their tight financial situation, he told me, they could only offer me a 6-month internship role with symbolic pay for now (meaning practically no pay). If the internship went well, however, they were very open to offering both equity and decent pay.
  “If the company is still around by then,” I almost added.
  Although I was flattered that they’d made me an offer on the spot, I knew instantly that this was neither the company nor product I was looking for. Nevertheless, I didn’t turn them down right away. An offer is still an offer, I thought, and can always come handy when negotiating with other companies later on.
  Despite the disappointment about both the job, and the fact that the technical interview hadn’t really taught me anything new, I’d still received an offer, which gave me a big confidence boost for the interviews to come.
  The second response I got was from a slightly larger startup called Teamtailor. They were a Stockholm-based company with a mission to digitize the recruiting and employer branding industry, currently ruled by quite non-technical recruitment consultants and HR managers.
  Not a bad idea. Although job ads starting with words like “recruitment” and “HR” 9 days out of 10 would’ve scared me away, there was something about this company that intrigued me.
  From my pretty thorough research I’d found that they’d been around for about 4 years, had some 30 employees, presence in 4 or 5 countries, 600 customers (businesses), a 100%+ revenue growth rate, and breaking even with some margin on top. Not bad at all.
  To top it all off, their instagram account revealed their office: a brooklyn-ish old red brick beer factory in the middle of Södermalm, the best area Stockholm has to offer.
  M. M. Mmm.
  Everything pointed towards the fact that they were in that sweet spot of the company life cycle. Young enough to be able to make you feel like you’re on a journey together, with an informal culture and lots of room for initiative and growth. But still old enough to have established some structures, which can be nice to lean on when you’re learning something new.
  Anyway. Again, it was the CTO that wrote to me. After a few messages back and forth we settled on a first interview in their office a few days later. I was told that both he and another co-founder would be meeting with me.
  Before even meeting with any of them, I had a really good feeling about the whole thing. Which was bad. At least in my head. Because now I would enter the interview probably wanting them more than they wanted me, I thought. After walking up the stairs of the old beer factory, I finally reached the door to their office and stepped right into a rather special scene.
  First, a big pink poster right in my face, with bold white letters screaming at me: “Teamtailor is one of Europe’s 100 hottest startups - Wired Magazine.” To my left what looked like a living room, where a bunch of 20-somethings were playing FIFA on a huge screen. In front of me a bigger room, where the table closest to me was filled with developers, casually hacking away on big crisp screens. And all around me, soft hiphop beats pulsating from Sonos speakers.
  Right in that moment, any bad prejudice I’d held against them for being an HR company disappeared. This place was awesome. Dammit.
  You can say a lot of bad things about the typical Silicon Valley wannabe office. But in my opinion, even the worst office of this kind will still be a thousand times better than the typical corporate counterpart. So for me it was heaven. Which was really bad for my attempted coolness for the interview.
  A tall skinny guy with a baseball cap smiled at me and got up from his chair to greet me. It was the CTO. We stepped into a conference room with glass walls and green fake grass covering the floor. The other co-founder joined us and we kicked off the interview.
  Unlike my last interview, they started off by telling me about the process I was in. The purpose of this first meeting was mainly to get to know me better. If I proceeded, the second step would be a technical interview. I was so relieved to hear that. The imposter syndrome was real.
  The first question was more or less the classic “Why do you want to be a developer?” They told me that more than anything else, it was my cover letter and CV that had caught their eye. Finding business-minded developers was rare, and finding developers with business degrees and experience from both business development and finance even rarer. So why had I decided to hop off my path to pursue this totally different one?
  From interview experience, I’ve learned that honesty is almost always the best way to go in these cases. So I basically told them what I told you in the beginning of this article, that I hate selling, love technology, and wanted to transition into the creative side of things.
  From this point forward, the conversation sort of got its own life. At one point, I told them that if I’d known the things that I know now, I’d probably had chosen to study computer science instead of business. To my surprise, the CTO was surprised by this remark. He laughed and asked me why.
  I hesitated. I realized it was one of those things I’d said because I thought it’s what they wanted to hear. He let me off the hook, and told me that he was also a self-taught developer. The only subject he’d taken in uni was film studies. I was a bit shocked by that. But there was more to it.
  As a matter of fact, none of the 10 developers at the company had a real CS degree. A few of them had taken a year or two of some private web development program, but most were actually self-taught.
  Hearing that from this guy made me so happy. He’d just confirmed what my former colleague Sandra had told me a year earlier - that you don’t need a degree to become a great developer. Good stuff.
  The conversation kept going so smoothly that it wasn’t until the last few minutes when they asked me about my portfolio. Only one of them had actually looked at it, and he literally said he’d just “had a glance.” All caught up by how well the interview was going, I told them I would be happy to demo one of my apps.
  Immediately, their faces lit up and they straightened in their chairs, nodding me on. I was about to realize that I’d just made a BIG mistake.
  The only app that was nearly good enough to show to these guys was the one that I’d made over the month straight after the bootcamp. And I hadn’t touched that one for at least a month. I hooked up my MacBook to the big screen in front of us, and entered the URL in the browser.

  The first embarrassment was that it literally took 20 seconds to load the home page. With a dry throat I tried to explain that I was using the free version of Heroku, which meant that whenever the server associated with the domain didn’t receive any requests for more than an hour, it would go into this “sleep mode,” from which it took a long time to wake up. The last thing I wanted was them to think my app was slow.
  When it had actually loaded I took some time to explain the idea behind the product. It was basically a service for creating virtual lines, allowing organizations like airlines, banks, and hospitals to set up queues online instead of in their physical locations.
  Then came the second embarrassment. When I tried logging in on my account using Facebook authentication it failed. As I would realize much too late, the reason was that I hadn’t updated the URL in my Facebook API settings after getting a new SSL certificate. So Facebook was expecting requests from an http://domain, while mine came from an https:// domain. Rookie mistake.
  I finally managed to log in manually instead, and demoed some of the main features without any issues. But then came the biggest embarrassment of them all. I couldn’t seem to get the crown jewel of my app to work: the chat. When I clicked the chat link, I got to the chat page, but couldn’t see any of my fake users to chat with.
  Then I basically gave up. Which I really shouldn’t have. Because just a few hours later, I would realize that the chat worked perfectly fine. My user account simply hadn’t signed up for any lines to participate in, which is why I couldn’t see any users to chat with either.
  We said our goodbyes and they told me they would be in touch. I left the interview feeling angry and disappointed. Why hadn’t I prepared better for the demo? It had all gone so smoothly until that last part.
  Nevertheless, not even an hour would pass until David wrote me again. He told me I had proceeded to the next step of the process. I couldn’t believe it and I couldn’t have been happier. But of course, also a bit scared about taking on my first real technical interview.
  In the end, however, this second interview would also turn out to be nothing like all the horror stories I’d read about online. Already in the invite email, the CTO told me that I would be meeting with two of their senior developers, and that they simply wanted me to show off one my apps more thoroughly, along with the code behind it.
  The main purpose would be to get a grip of how well I knew their backend framework (Rails), and how fast I could be able to learn their frontend framework Ember.js (which I hadn’t even heard about at this point).
  I knew instantly that the demo app would have to be the one that I’d built using Rails and React.js. It was perfect for two reasons:
  it was built on Rails integrated with a JavaScript framework (just like their stack), and
  I’d learned all the React stuff I used in less than two weeks, which would give them a good sense of how fast I could learn Ember.
  This case is a perfect example why it can actually pay off to not put all your eggs in one basket when you’re building your portfolio, but actually try out a few different stacks.
  Soon enough the big day came, and I was back in their office in another of their fake-grass-floor conference rooms. I started off showing the UI flow of the app.
  I surfed onto the web app, and soon enough the working title “AppHunt” lit up on the screen in big bold purple letters. It was sort of like Product Hunt, but more like a market place strictly for apps. So any user would be able to browse the home page for apps for sale and for purchase. And if they created an account and logged in, they would also be able to search and filter the app items, rate them, and write stuff in the comment fields. That was basically it.

  But fortunately for me, it was enough. The two senior developers apparently liked what I showed them so much that they gave the CTO the thumbs up. They later told me a few things that they liked specifically:
  That the real-time features — like changes in the comments, search results, and ratings appearing instantly — showed that I knew how to use state and props, which is crucial in any JavaScript framework.
  That I used JBuilder to serialize the JSON requests between frontend and backend.
  That I used Elasticsearch for the search feature.
  That they liked the design and that I’d made my sketches myself in Sketch before starting to code.
  That the CSS code wasn’t very contextually styled or nested. Instead they found much of it reusable throughout the entire app, which was good. One thing that would have made them even more impressed though, they told me, would have been if I’d followed the so-called BEM CSS naming convention as well.
  It wasn’t until a few weeks after the second interview that the CTO reached out to me again with an offer. After some discussions back and forth we settled on a probationary period of 6 months, with a $3,300 monthly salary that would be boosted to my $3,700 target when I reached a productive level.
  I accepted on the spot and started my new job the next week. ✌️

  RIP Michael Scott ❤️
  In parallel with the whole Teamtailor process, I interviewed for 4 other companies as well. The most noteworthy was the Swedish fintech phenomenon iZettle, which is sort of an umbrella of several different financial products, but where their wireless card terminal is probably the one they’re most known for.
  As this successful startup was approaching a unicorn valuation, I’d learn that their demands on experience and skill level were significantly higher than the smaller startups that I’d interviewed for up to this point. I saw it both in the much more thorough recruitment process they had (5 interviews!) and the difficulty level of the interview questions.
  The main reason a rookie like me even got an interview there in the first place I’d say would be largely due to the recommendation from a friend and the name of the business school I graduated from. So I sort of cheated my way in, I’d say. But I was so obviously not prepared for them.
  Just like with the other companies, the first interview was all fluff and soft skills. But even more “HR” this time. Why do you want to work as a developer? What technologies do you like using? What are your strengths/weaknesses? And so on. Easy stuff.
  The second interview, however, would turn out to be a quite traumatic experience. It all started with me sitting down in a conference room with two of their web developers. We repeated the whole “get to know each other” conversation and I was getting pretty comfortable and confident. And then I got the biggest sucker punch of my life.
  Out of nowhere the guy across the table handed me a huge white A3 paper and a pen. He told me they wanted me to draw a sketch of the data flows and processes involved in the following scenario:
  “A small business owner has an account with iZettle and uses their card terminal. After one of his/her own customers has made a purchase using the terminal, he/she wants to log onto the web app and/or mobile app to see the transaction.”
  This really caught me off guard, but I hesitantly nodded and accepted the challenge. Then the guy said something like: “We’ll just go and have a coffee, and then in 5 minutes or so we’ll come back and let you explain your thoughts.”
  5 minutes! Was that a joke? I really couldn’t tell. When they’d left, I seriously considered if this was some sort of trick question, where I was supposed to realize that this task was just too big to perform decently in such short time. But time was already running out and it was too big of a risk. So I decided to give it a shot.
  In hindsight, I realize that it was a system design question, meaning that they wanted me to basically just map up an overall view of how the web app and mobile app made requests to some API that connected them to the server(s) and database (if you want to improve your system design skills, I’d really recommend this Youtube channel).
  But I did none of that. In my state of panic, I skipped ahead several steps, and started trying to sketch the database model of the user account, with a table, columns and foreign keys (I assumed that they used a relational database). When I was done with that, I had about 30 seconds left to map up the other components of the architecture. I was so stressed that I got all philosophical, and started questioning what the actual roles of the API and server were. Not a good sign.
  5 minutes passed, and the two developers returned to a sketch barely worthy of a 5-year-old. I’d basically just drawn three circles. One to the left, representing the database, and two to the right, representing the web and mobile app clients.
  Of course, I failed the interview miserably. Which was also the reason I didn’t move on to a third one. However, they let me down easy, telling me that they liked me and that I should apply again when I had one or two more years of experience.
  The whole experience bummed me out, as I didn’t think I’d gotten a chance to show them my practical skills. Although I can kind of see that there’s some sort of value in being able to illustrate system architecture on a piece of paper, I really think that there’s a thousand times more value in being able to show your skills with a practical exercise, like a coding challenge or app demo. But hey, there’s a lesson to be learned in every failure, right?
  All in all, during my 4 weeks of job hunting I ended up attending 11 interviews for 6 companies, of which 3 made me offers. So despite getting burned a few times, it was really an amazing experience. If I was asked to name the one single biggest reward (except for getting my dream offer), it would be that I got comfortable with talking to developers about software. If you’re suffering from the imposter syndrome like I did (look it up, it’s a thing), there’s simply no better way to treat it.
  Another key takeaway is that out of my 11 interviews, only one turned out to require actual theoretical computer science knowledge. No questions on complex data structures, no devious brainteasers. Just one question on system architecture. The rest were 100% centered around either practical or soft skills. So unless you’re applying for a flashy software engineering job at Google or Facebook, I’d definitely recommend to focus on the practical stuff, and learn the theoretical stuff later.
  Lastly, I’d like to stress the fact that I didn’t know anyone involved with the company that I ended up getting hired by. I know there’s a lot of content out there claiming that a strong personal network is the single most important factor to land the first dev job. And although that might be true statistically, cold-applying without a referrer is definitely not a waste of time.
  Part 8: What I do today
  At the time of writing, I’ve been working at Teamtailor for six months. And time really has flown by quicker than I could’ve ever imagined. I’ve barely even noticed the long, dark, and freezing winter that’s usually a struggle to endure here in Stockholm.
  I’m part of a team of 12 people, where everyone except for one designer are full stack Rails and JavaScript developers. A few have 10+ years of experience, some just a few years, but only two hold actual academic tech degrees. The rest of us are more or less self-taught.
  I spend my days hacking away on our Rails/Ember platform, every day trying to leave the app a little bit better than I found it the same morning. The product itself is a recruitment web app that lets companies build and manage their own career sites, effortlessly and completely without requiring any coding skills.

  https://career.teamtailor.com
  In turn, the app behind this career site has two main dimensions:
  It lets users handle the employer branding meant to attract talent, with means such as job posts, social media content, a blog, images, videos and gifs.
  It offers a massive set of tools to handle the traffic and applicants — like tracking candidates, chatting, emailing and texting them, evaluating them with tests, setting up automatic triggers to execute some action when a candidate is moved from one stage to another, and promoting job ads on all the major job boards to name a few.
  How we work
  In our product team, we try our best to follow the agile principles of Scrum, Kanban, and pair programming. Practically, for us this means we carry out our work in cycles, where we split up the implementation of new features into projects running for 6 weeks at a time. In turn, each project has developers paired up two-and-two, and made responsible for shipping the new features within those 6 weeks. The pairs deploy their work continuously, based on a predefined Trello board of smaller tasks within each planned feature.
  Of course, we don’t just build new stuff. We also maintain the app. And at the core of this maintenance we have what I believe is a pretty unusual routine: the “tech-on-call” duty. This means a weekly rotating position where each developer in turn spends one whole week assisting our users and support staff on Intercom.
  If you think this sounds like an annoying and frustrating task, it was. Until we decided that each tech-on-call would pause all their other projects while on support duty. Then all of sudden, when I no longer felt like every minute spent on Intercom was a minute stolen from my projects and deadlines, I actually started enjoying it.
  Think about it - when you just take the time to listen, you realize that you basically have an army of volunteering quality assurance testers at your disposal, always ready to give instant feedback on the product’s actual UX and user pain points. Considering this, suffice it to say that I’ve learned just as much from my tech-on-call weeks as any other project or bug that I’ve been working on.
  Lastly, in between each 6-week cycle, we take two weeks to make a common effort to squash all the bugs lined up in our Trello bug board. We also use these two weeks to develop pitches for new features that we ourselves would like to see in the app. Every developer then gets the chance to pitch these ideas in a shared pitch meeting that we have every 8 weeks, which is really empowering for someone who’s not just looking to solve tough code problems, but also business problems through new cool additions to the existing product.
  What I’ve done so far
  Although the app includes so many features and technologies that in the beginning were completely foreign to me, I was thrown right into the middle of the action already in my second week. The onboarding process — meaning me having a senior developer show me the ropes — lasted only five days. After that first week, in theory, I was supposed to be more or less autonomous.
  This meant I was expected to understand the architecture of the platform, the dev toolkit, the team’s workflow, our style guide, how to provide tech support to users and colleagues, and other internal routines for developing, testing, debugging, reviewing and deploying code. In other words, a LOT of new stuff for someone who just came out of a bootcamp.
  If you’re panicking right now because you think I actually learned all that in a week, relax. I definitely didn’t. It wasn’t until after a few months that I started getting comfortable with most of that stuff. And with time, the others would notice, and I would be trusted with more and more responsibility. Since then I’ve gotten to be a part of some of the most exciting and challenging projects I’ve ever worked on.

  My candidate profile with some fetched social media URLs in the gray box.
  The first serious one was updating the method we used to fetch information about users who signed up on our app with just an email. We’d already integrated with a third party API for this, that we made requests to to get data like full names and URLs to social media profiles and avatar pictures.
  However, since we’d found the fetched data to often be incorrect, the product team had decided to switch to another provider. Since it would expose me to several crucial areas and data flows of the app, it was the perfect next step for me.
  To implement it, I would have to navigate all the way from getting the email from the user input at the very front of the client layer, to understanding how the data would travel from the Ember frontend, through adapters and serializers to the Rails backend and ultimately get stored in the database.

  An example of how the call to action button can be used on a career site.
  My second own feature was developing what we call the “call to action button,” meaning that we’d allow our users to add custom buttons to their career sites in our editor tool.
  For instance, we wanted to let them redirect to the page of a certain job opening, a certain department, or some completely external URL. This actually turned out to be a lot easier than I’d expected. Most of the backend architecture was already in place, so all I had to do was basically create a few new Ember components and add them to the other options in the career site editor.

  The modal form for our new automated candidate testing feature.
  The third feature I worked on was enabling our users to integrate with external assessment providers, meaning they would be able to send candidates to a test platform like Hackerrank. When they’d finished a test, the results would automatically be sent through an integration between our and the provider’s APIs. This was a big one, so I mostly acted as an assistant to the senior developer (aka the Ember grandmaster of our team) responsible for the project. Still, it taught me tons about how to properly set up an API integration and automating workflows with triggers.

  One of the pages in the Employees section, rewritten in Ember.js.
  My fourth project was the biggest to date, and for good and bad I ended up doing it more or less on my own. The entire app had originally been built in Rails, and most views had been rewritten with JavaScript and Ember one by one. Only one of our main sections of the app still had just Rails views. It was the so-called “Employees” section, which was basically the main destination for creating, editing, and deleting user accounts. So it was kind of important that my translation to Ember was flawless.
  Which stressed me out like crazy. Since I’d been on the team for about three months at this point, I figured it was time to stop acting like some annoying intern and start working more independently. Meaning I tried to bother the others with as few questions as I possibly could. The good thing about this was that I got a lot of confidence in my ability to solve real-world software problems completely on my own. The bad thing, however, was that it made me super slow, and that it took me a good 6 weeks to ship the full rewrite of more than 2,000 new lines of code.
  In the end, this actually even proved to be the main reason why I didn’t get the raise that the CTO and I had agreed on, since I hadn’t fulfilled my end of the bargain: I hadn’t reached a productive level in line with the rest of the team.
  Although this sucked at the time, I now realize that his standpoint was completely fair, and it taught me an important lesson. In the world of Agile software development, lone wolfing isn’t an option. Teamwork is a major part of finding a productive workflow.
  The fifth project is the last to date, and we actually just shipped it. It was our new feature to handle the emerging new European data privacy legislation (GDPR). For us that translated into building tools that made it easier for our customers’ candidates to have their personal data deleted from our database, and also for our customers to ask the candidates for permission to store and keep storing their data.
  Sounds pretty straightforward right? Well, it wasn’t. At all.
  I think the main reason was that we couldn’t focus on a single destination of the app. Instead, the feature required us to add stuff all over the place. Notifications in one place, warning flags in another, search filters and bulk actions in a third, and dozens of new email sendout actions everywhere.
  For the first time since I started, I was paired up with the senior developer and co-founder that onboarded me. So I felt it was really important for me to show him how much I’d learned since that first week six months earlier. My probation period was about to end, and they would soon have to make a decision if I was good enough to keep on the team. And with this “simple” project, I first figured proving that would be a piece of cake.
  Oddly enough though, I think the complexities made our pair-programming sessions even better. There were so many user scenarios to take into account when designing each part of the architecture, that we were forced to discuss and twist and turn every new block of code. For the first time, I’d have to take into account not only the UI/UX dimension, but also extensive legal considerations, that could cause a lot of trouble for our users if we didn’t implement it correctly.
  So we pair-programmed a lot, and it was really great. When I coded, he came with a lot of good feedback that mostly made my code a lot cleaner. But unlike that first onboarding week, I was actually also able to give feedback on his code, making suggestions and asking questions that really made his code better as well.
  When you’re in a state of intense development, like I’ve been for the past year, I think it’s hard to quantify how much your skills have improved at any given moment. So being able to give constructive feedback to this guy, with 15+ years of coding under his belt, really put the writing on the wall for me.
  And by the way, so did the extension of my 6-month probationary employment contract, which I was just recently made aware of. From now on, I’m a regular full-time employee, with the salary I initially requested six months ago 😃 🎉

  Me at work 😎
  Part 9: Why becoming a developer is the best thing I’ve ever done
  As you’ve probably figured out by now, I’m in love with coding.
  I love that it keeps forcing me to push my intellectual limits through quantitative problem solving.
  I love that it provides me with an outlet for creative expressions when designing anything from UI to system architecture.
  I love that it provides me with a thousand different solutions for every real-world problem.
  I love that it not only tolerates my inner perfectionist, but actually requires that perfectionist to be present — and punishes its absence.
  I love that it surrounds me with people that value genuineness and transparency above small-talk and politeness.
  I love that, on my introverted days, it lets me put on my headphones, roll up my sleeves, and deep dive into another dimension for a while.
  I love that it always holds something new for me to learn, and that it will require me to be a lifelong learner, unlike many other stagnant professions.
  But most of all, I love that coding has given me a sense that the future is truly limitless.
  In a few weeks I’ll turn 27, and I have no idea what the future holds for me. In three years, for all I know, I might still be in the same position as I am now, writing code for the same company. I might be a lead developer. I might be a product owner or manager. Or I might be somewhere completely different.
  Freelancing remotely from a sunny paradise. Developing decentralized apps on some disruptive blockchain. Designing machine learning models to combat global warming. Writing spaceship algorithms for expeditions to Mars. Or building my own product.
  All of the above scenarios would have seemed utterly crazy to me before I started coding.
  At best, my former finance jobs gave me the slim satisfaction of having put together a thick powerpoint presentation filled with upward-sloping KPI curves. And the best possible future scenario I could think of then was me landing a CFO or CEO position at some listed company after dedicating a decade of my life into 100-hour work weeks at some investment bank, private equity firm, or management consultancy, having spent my days around people who cared more about money and prestige than trying to do something meaningful with their lives. And that scared me.
  Today, there’s no likely future scenario that scares me at all. And that alone gives me certainty that my crooked journey over the past three years has had a purpose.
  Although it’s a bit sad that I invested so much time and energy into a career path that turned out to be a dead end, I know I was really fortunate to realize that already at age 23 — and to have the luxury to be able to make a halt, look around, and pursue something I felt more passionately about.
  So good or bad, I guess it was the sum of all my experiences that took me to where I am today. A place where I somehow managed to find something few people ever do — a job that I love. And for that I’m more thankful than words can say.",
  rating: 45,
  postable: role,
  user: user
)

post.save!
puts "#{post.title} created"
