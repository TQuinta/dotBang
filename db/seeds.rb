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

Comment.destroy_all
Bookmark.destroy_all
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

role = Role.new(name: "Freelance")
role.save!
puts "#{role.name} created"

role = Role.new(name: "Full-Stack")
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
  rich_content: "<p>Six months ago, I got my first developer job as full stack web developer for a startup. I had no relevant work experience, no tech degree, and not even a year of active coding experience. And yet I managed to land my dream offer, and can today for the first time in my life say that I love my job. Here’s how I did it — the long version.</p>
  <h2>Part 1: Embracing the quarter-life crisis</h2>
  <p>About three years ago, I was in the middle of a raging quarter-life crisis. I’d graduated from business school, gotten an attractive investment banking job, and then quit that same job just a few months in after realizing I hated everything about it.</p>
  <p>Completely lost and quite cliché, I went solo traveling for a few months to “find myself”. And although I thought I did, I didn’t. Not enough anyway. But it actually helped me figure out a few things.</p>
  <p>The first thing was that I simply couldn’t keep pursuing a finance career. I just couldn’t see any future scenario where that would make me happy.</p>
  <p>The second thing was that backpacking and surfing, although being great and all, wouldn’t help me find that “calling” I was looking for. The only reasonable thing to do seemed like the classic trial-and-error method.</p>
  <p>So when I got back home, I decided to try out a few things that I thought might both make me happy and at the same time provide for some sort of decent living. And trial-and-error it was.</p>
  <p>First, I thought I’d give writing a serious shot. So I started writing and editing part-time for an online business magazine. It was pretty cool for a while. Working three days a week in a fast-paced editorial office, writing about anything business, finance, tech or sustainability-related.</p>
  <p>At the same time, I’d heard so much about life as a freelancer while travelling that I thought I’d try it out. So I set up my own firm, and soon enough stumbled upon a few business analyst projects. Being my own boss was of course very exciting at first, and being able to work from literally anywhere was completely new for me.</p>
  <p>I went on like this for about eight months, doubling as a writer/editor and a freelancing business analyst. But eventually I started losing interest in the job at the magazine.</p>
  <p>As any sane person dealing with digital content will know, clickbait cultures come at the expense of creativity and quality. In other words, when the main incentive of your content is clicks, all the superlatives required to hunt down those clicks will soon wear down on any creative ambitions that were there in the first place. Besides, I couldn’t shake the feeling that as a writer/editor, I was always too far away from the action I was reporting on.</p>
  <p>So I quit. Which was ok according to my trial-and-error deal with myself. But it still felt crappy, since I’d actually invested eight months into the whole writing thing. But as someone smart may or may not have said: when one door closes, another one opens.</p>
  <p>And I still had one more thing on my trial-and-error list to check off.</p>
  <h2>Part 2: The lunch that changed my life</h2>
  <p>Life is weird, and sometimes it will hide the biggest, most life-changing inspirations in the places you’d least expect. It was certainly like that for me when I experienced my first “pull” towards coding.</p>
  <p>Although quitting the job at the magazine felt like a failure, the experience would prove to not have been completely in vain after all. After writing so much about tech startups and the exciting lives of entrepreneurs, I was dead set on giving that lifestyle a shot as well.</p>
  <p>And after about a month of research and job hunting, I managed to land a job at one of the then — supposedly — most promising FinTech companies in the Nordics. In just a few years, it had grown to become one of Europe’s biggest equity crowdfunding platforms.</p>
  <p>I hadn’t really applied to any specific job opening. But since I really believed in the company’s mission, and was impressed by their success, I’d rather just gotten in touch with their CFO telling him just that. We met a couple of times, and all of a sudden I was working there in some quite fuzzy business development role.</p>
  <p>Although I’d hoped to get to work on strategic and analytical projects, I ended up doing what fuzzy business developers usually end up doing: selling. Which was also why this job too didn’t work out in the end.</p>
  <p>But, there’s more.</p>
  <p>Just like the last job experience from the magazine, this job would also prove to not have been all in vain. In fact, without it, I’d probably not be a developer today. Because that’s where I met Sandra.</p>
  <p>She was a front-end developer in the product team, sitting just on the other end of the tiny coworking office we were cramped in at the time.</p>
  <p>Technically we were colleagues, but as anyone whose worked in a dysfunctional tech company will know, the distance from the sales team to the product team can often feel like galaxies apart.</p>
  <p>It didn’t help that management had just decided to outsource the whole dev team to a remote team in Ukraine either. Meaning Sandra and all the other developers would be let go and were more or less just serving their two months notice.</p>
  <p>Despite this distance, one day Sandra and I ended up having lunch together. It would basically be my first real conversation with a professional developer, and I think it was a mix of genuine curiosity and my accelerating existential crisis that quickly more or less turned the lunch into an interview.</p>
  <p>And our lunch ended up being a totally life-changing experience for me. More specifically, three revelations made it so.</p>
  <p>I was shocked to learn that she had no “real” education in web development, which for me at the time would equal nothing short of an academic degree. Everything she knew, she’d learned from MOOC platforms (Massive Open Online Courses), like freeCodeCamp and Codecademy.</p>
  <p>She told me she had a background in finance, just like me. In fact, she had been working as a business controller for several years until just recently, when she’d joined the same startup as I had, just a few months earlier as a front-end intern.</p>
  <p>When she showed me the portfolio page she’d built with just some six months of coding experience, I couldn’t believe it. It was incredible.</p>
  <p>That lunch opened up a world of possibilities for me. Sandra’s story made me hungry for more.
  So for weeks I researched the different types of paths that people had taken to become developers. I ended up in all sorts of forums and articles, many of which I found right here on Medium.</p>
  <p>For example, Stackoverflow’s annual developer survey (100,000 interviewees) stated that only half of all professional developers had a bachelor’s degree, and of this half, a whole third majored in something completely unrelated to computer science and software engineering.</p>
  <p>The more I read, the more I realized how narrow my definition of education had been. If you didn’t need a computer science degree to break into something as complex as software engineering, what did you need an academic degree for? Although I might not have been able to see it then, I now clearly see how broken the academic system is.</p>
  <p>It was designed for the industrial age of workers, where you’d specialize in one craft, and then use those same skills for the rest of your life. It was certainly not designed for today’s knowledge society, where all information of the history of the world is never more than a few clicks away, and where things change so fast that education must in fact be a life-long process, and not the learn-once-use-forever one-off experience.</p>
  <p>But that’s a topic big enough for an article by itself. The important thing about that lunch with Sandra was that it ignited something in me, and motivated me to break free from the destructive loop that I found my current half-assed business career to be.</p>
  <p>Although I’d always envied programmers around me — even to the extent that I’d taken a Python 101 summer course a few years earlier — I’d never considered it a viable career path for me. At least not without going back to university for 3 — 5 years.</p>
  <p>So if you’re reading this Sandra, thank you! If I with this article can inspire just one person the way you inspired me, I’d consider the effort of writing it repaid a thousand times.</p>
  <h2>Part 3: The text that cost me $6,000</h2>
  <p>Over the next few months I spent hundreds of hours on online platforms like Codecademy and freeCodeCamp. I even purchased a subscription to the paid platform Code School.</p>
  <p>I’m not sure I really knew what my goal was. What got me started was the desperation of my recurring career disappointments. But what kept me going was how ridiculously fun and rewarding I found the coding exercises to be.</p>
  <p>I couldn’t even tell you at what point the coding turned from a casual side project, to the dead-serious “I’m going to be a professional developer.” But it was probably somewhere around here. I was just about to receive my front-end certificate from freeCodeCamp, when my next life-changing event occurred.</p>
  <p>After quitting my job as a business developer, I’d decided to escape the freezing limbo that is Swedish winter to go travel in Central America. I reckoned that if I was gonna spend hundreds of hours alone, teaching myself coding, I might as well do it somewhere warm, cheap, and not depressing.</p>
  <p>I was coding on my laptop in a hostel in El Salvador, when I got a text from my friend Marie.\n\n
  “I got the job!” it said.</p>
  <p>Marie was also learning how to code. I recalled how she, a few months earlier, had been telling me about this code school she went to. A “coding bootcamp.”</p>
  <p>At the time I’d basically mocked her for it — So. You’re gonna pay $5,000 for a 12 week course? And you’re not receiving a single university credit for it? And you dropped out of your top-tier MBA to do this? Sounds legit.</p>
  <p>And yet there she was. Four months later, and Marie was officially employed by one of Accenture’s digital agencies as a junior back-end developer. I was really happy for her, but of course also extremely jealous.</p>
  <p>I stopped what I was doing and made some calculations. If I could keep up my current pace, coding some 6 hours per day on average, about 5 days a week, I would do 30 hours per week. So to finish freeCodeCamp’s full 1,200 hour program, it would take me at least 8 more months. And that’s if I could keep up the pace. Which I definitely couldn’t, since my money was running out and I would have to go back to Sweden and get a new job soon.</p>
  <p>I kicked myself for not having taken the same road as Marie from the start, and spent my money on a bootcamp instead of backpacking for 4 months. Well, what’s done is done, I thought to myself. I’d still have to accept the fact that a bootcamp was the best option to reach an employable level fast enough.</p>
  <p>Back to good old Google research.</p>

  <p>In a way, I felt like I was right back where I started after that lunch with Sandra. Only this time, I looked at the whole bootcamp phenomenon with a fresh pair of eyes. Knowing Marie’s story, I knew that not all of them were too-good-to-be-true scams, but actually plausible ways to break into the industry.</p>
  <p>Later on, Stackoverflow’s annual developer survey again reassured me with the stats that 88.1% of coding bootcamp alumni had been hired within a year after finishing the bootcamp.</p>
  <p>Thanks to Switchup and Coursereport, it didn’t take long until I discovered Le Wagon, the French coding bootcamp startup success story with more than 15 locations all around the world and top 5 ratings on both rankings (at the time of writing, actually #1 on both, with 27 locations!).</p>
  <p>After comparing it with alternatives like Hack Reactor, Ironhack, General Assembly, and NYCDA, a few main reasons made me prefer it over the others:</p>
  <ul>
  <li>The relatively low price (back then $6,000).</li>
  <li>The focus on entrepreneurship and product development.</li>
  <li>The global presence and community.</li>
  </ul>

  <p>Nevertheless, I still had a few doubts about the program.</p>
  <p>The choice of the backend language Ruby and the MVC framework Rails. Although it appeared like this was pretty common among other recognized bootcamps, almost every article I read on the subject suggested that Javascript was really hot and what employers were looking for. My friend Marie’s bootcamp, for instance, taught a backend stack based on Node.js and Express.js. Both Javascript-based technologies. Some common arguments seemed to be that Ruby was a great language for learning, but that Node and Express were skills employers valued a lot higher. Was Ruby really the horse to bet on?<p>
  <p>The 9-week duration of the course seemed a bit short. Most competing programs appeared to be at least 12 weeks, which already seemed way too short to become an employable web developer.</p>
  <p>Le Wagon offered no actual job hunting assistance after completing the bootcamp. Many competitors offered either employment guarantees or seemingly solid career services functions.
  I’ll address each of these three doubts one by one with my post-bootcamp conclusions at the end of the next section.</p>
  <p>However, despite my concerns I figured it was my best option, which is why I decided to apply to their school in Barcelona. A few days later the local school manager Gus reached out to me for a Skype interview.</p>
  <p>Hooked up to a crappy Wi-Fi at a café in the lazy surftown of El Tunco we had a brief chat. But it was a lot more informal than I’d expected. I felt we connected, which made me want to get admitted even more. And then, not even 24 hours later, I got the email I’d been waiting for. Gus told me he would be pleased to have me in the next batch, and that the only thing I had to do next was pay the $1,200 deposit to reserve my place.</p>
  <p>That was basically all the money I had left at the time, and it was supposed to pay for my last weeks in El Salvador — including the eventual trip home. But if I could just manage to stick to a tighter budget, and book an earlier flight home than expected, I knew I could make it.</p>
  <p>So, after a brief moment of hesitation, and recalling the concerns I still held for Le Wagon, I acted on intuition, and transferred Gus the deposit. Afterwards, I remember feeling a bit awkward. Had I really just committed to paying almost $6,000 for a 9-week coding course? As a Swede, who’s never ever paid a single cent for education, the situation felt quite bizarre.</p>
  <p>However, it didn’t take long until that bizarre feeling turned into excitement. At least now I knew <p>I wouldn’t have to go back to working in finance, sales, or online media in any near future. The same day, I started making arrangements for the time up until the bootcamp.</p>
  <p>In the three months left, I would somehow have to earn the remaining $4,800 of the fee. Plus rent and living expenses. Well sh*t.</p>
  <p> I reached out to one of the companies that I’d previously consulted for, and luckily enough they had the perfect business analyst project coming up. Since they initially wouldn’t accept anything less than a 4-month contract, I had to convince them I could do the job in two. Somehow, it worked.
    <p>Phew! Just one week earlier, I’d been a runaway traveler without a thought of ever going home. Now, I was to start my new two-month gig in Stockholm in less than two weeks, and then move to Barcelona. Exciting things ahead indeed.</p>
  <h2>Part 4: Bootcamp in Barcelona</h2>
  <p>Fast-forward three months.. It’s the 1st of May 2017, and I’m in a classroom attending my first Le Wagon lecture.</p>
  <p>Around me are some 25 people from all corners of the world. Kilian from Germany, Daniel from Venezuela, Francesca from France, <p>Arbi from Italy, Courtney from the US, and so on. Some with no coding experience at all, some with a little, and a few actually halfway to getting their computer science degrees.</p>
  <p>We’re listening to Gus, the local school manager, and Ruben, a Ruby teacher, explaining the structure of the program ahead.</p>
  <p>As we all would come to learn, the schedule was very systematic. Over the coming 9 weeks, we would spend more or less an equal amount of time on 6 different modules, each dealing with a topic of its own, finishing up with two weeks spent on planning and developing our very own web app.</p>
  <p>For the whole first week, I remember feeling quite confident about the course content. After all those hundreds of hours on freeCodeCamp, the difficulty level of the daily coding challenges seemed a bit low.</p>
  <p>Although Ruby was still pretty new to me, the basics seemed to be pretty much the same as with Javascript and Python. Listening to lectures and doing exercises to learn about variables, arrays, hashes, basic functions, and iterations felt quite repetitive. So I got cocky, and wondered if I’d actually get anything out of this bootcamp thing. However, not even a week later, all that would change. I went from feeling like the top of the class to actually struggling to keep up.</p>
  <p>Before I knew it, we were moving on from the basics to object-oriented programming, MVC architectures, and databases, and there were plenty of days when I felt I hadn’t even understood the concepts of the day before, and was already expected to move on to the next topic.</p>
  <p>So I had to put in the next gear. 10 hours a day in the classroom wouldn’t cut it for me. I made it a routine to put in a few extra hours each night, and spend most of the weekends repeating the trickiest stuff from the past week. It sucked a bit to not be able to enjoy Barcelona as much as I had the first few weeks, but the fact that I’d invested all my savings into the bootcamp was a big motivation.</p>
  <p>Another source of frustration was the scattered nature of the things we were learning. It felt like we’d been given a hundred puzzle pieces, but no instructions of how to put them all together. Knowing how to write basic Ruby, HTML, CSS, Javascript and SQL was really empowering, but how would that knowledge help me put together an actual app?</p>
  <p>And then came my big AHA moment.</p>
  <p>It was week 6 and we’d finally reached the Ruby on Rails module. Before I knew it I was looking at my Chrome browser window and reading the words “Yay! You’re on Rails!”. That was my first web app, the teacher said.</p>

  <p>Default landing page for any new Rails project.</p>
  <p>What? All I’d done was run a few simple commands in my terminal and surfed onto http://localhost:3000/ in my browser. What was I even looking at?</p>
  <p>I wasn’t until I opened up the app directory in the text editor that that big sweet understanding fell into place. Rails displayed it all so beautifully simply.</p>
  <p>One folder for the HTML, one for the CSS and Javascript, one for the controllers, and one for the models. One file for the routes. <p>And one file for that sweet, sweet schema, mapping out the entire database like it wasn’t more complex than a grocery shopping list.</p>
  <p>After finally getting the big picture of how all those pieces would practically fit together in an MVC framework like Rails, spending all my nights and weekends coding was not much of a struggle anymore. Quite oppositely, I would often struggle to get off my laptop to go to bed at night.</p>
  <p>I was on a roll, getting massive new insights every single day. And it gave this intoxicating effect that’s still kind of hard to put down in words.</p>
  <p>So I can actually mix HTML and Ruby in my erb files?</p>
  <p>I can access instance variables from the controller in the associated html.erb file?</p>
  <p>I can import code that other people wrote using this thing called Gems?</p>
  <p>I can write as much vanilla JavaScript as I want in the assets/javascript directory?</p>
  <p>I can use the Rails console in the terminal to basically do whatever I want with the entire database?</p>
    <p>It was just a never-ending stream of incredibly satisfying Aha moments. Like you’d just realized the force was actually strong with you, and that you got one step closer to go full Jedi with each piece of new knowledge. Even now, nine months later, it feels like I’m still on that same high, and I’m starting to think it actually might be something permanent. How lovely that would be.</p>
  <p>Anyhow, the bootcamp train wasn’t slowing down, and soon enough we’d reached the last two weeks, when we were supposed to build our own app. The two weeks would end with a big Demo Day, where each group would pitch and demo their apps in front of cameras and a big audience.</p>
  <p><strong>Pressure.</strong></p>
  <p>To our surprise, the planning turned out to be the most time-consuming part by far. Although we prepared a lot in the past few weeks — pitching app ideas, forming groups, designing features in Sketch — it wasn’t until after a few days of coding that we realized we’d been way too ambitious.
  <p>The initial idea for the app was sort of the “Happn for professional connections.” More specifically, letting users create pages for networking events that other users could attend and check in to. “But that’s Meetup,” you might be thinking. But our idea had a twist: you could only check in to an event if you were physically at the event location. Thus the “Happn for professional connections.”</p>
  <p>Once checked in at an event, a user would be able to see the professional profiles of other checked in users, using data gathered through LinkedIn’s API, and connect and chat with the ones who matched their interests, thus not missing out on potentially great connections.</p>
  <p>This was our initial MVP (minimum viable product) and we decided to call it Unify. Super corny and Silicon Valley wannabe, I know. But in our defence, we had better things to to with our time than think of better names.</p>
  <p> Like brainstorming about the actual features. But then we actually brainstormed a bit too much, and features were added and removed until we ended up with a completely different app that,
  would never be demo-ready within the remaining ten days, and
  wasn’t nearly as disruptive as we thought our first idea was.</p>
  <p>So we had to narrow down the features to the MVP, and actually ended up with almost exactly the same product that the Le Wagon manager Gus had recommended that we go with from the start.</p>
  <p>Big waste of time, was what we thought then. But the process at least taught me a few really important things about product development:</p>
  <ul>
  <li>When done right, it should be a whole lot more about planning than actual coding.</li>
  <li>Having to clean up old code mistakes is a lot more time-consuming than planning thoroughly and doing things right from the start.</li>
  <li>The MVP is always smaller than you’d think from the start.</li>
  </ul>
  <p>Some ten days later, after more than 100 hours of coding, designing, arguing, testing, database migrations and database rollbacks, we’d somehow miraculously reached the Demo Day and actually felt pretty good about our app. Sure, it was far from perfect, but all the main features were actually working like we wanted them to.</p>

  <p>However, just a few hours before the demo, we’d all nearly have a heart attack.</p>
  <p>Google’s geolocation API wasn’t responding as it should to our requests, so we couldn’t check in to the event that we would use for the demo. We tried everything. Switching computers and users. Deleting and creating new events. Changing the event street address. Nothing worked.</p>
  <p>The three of us tried to stay calm and not panic. It was probably just a bug the guy responsible for the geolocation feature would know how to solve easily.</p>
  <p>But he was running late, so we tried calling him.</p>
  <p>No answer.</p>
  <p>We tried calling again.</p>
  <p>No answer, again.</p>
  <p>And then we panicked.</p>
  <p>Not until the last minute, thanks to one of our amazing teaching assistants, Antoine, we managed to find the bug. Turns out we’d accidentally set the distance range too low, which was why the app couldn’t confirm that we were actually at the event location. <p>We simply increased the radius by a few kilometers, committed, and pushed the change to our production server.
  <p>And voilà — the app worked perfectly. And so did the demo.</p>
  <p>Overall, my Le Wagon experience was nothing short of amazing. I’ve probably never learnt so much in such a short time. In hindsight, it’s actually hard to believe that most of us were able to develop full-featured web apps with basically just 9 weeks of development experience.</p>
  <p>But don’t fool yourself, the bootcamp will not do the work for you. To get anything out of it, you’ll have to give it your full commitment. I myself saw plenty of people fall behind or even drop out because they
  didn’t have the right expectations of the difficulty level,
  weren’t prepared enough, or
  were too busy with other things to keep up.</p>
  <p>On a final note, a mistake I think many rookies make is to consider a computer science degree a substitute to self-learning or a bootcamp, as a means of becoming a web and/or mobile developer. Based on my experiences, this is not accurate.</p>
  <p>Even if you’re pursuing a computer science degree, you’ll still need to fill in a ton of practical knowledge gaps to become productive. I practically saw this first hand in my bootcamp classmates with 2 — 3 years of CS studies behind them. Again, that’s because the academic model is broken and outdated, and hence can’t keep up with the extreme pace with which real-world software development is changing.</p>
  <p>From my point of view, if the goal is to become a developer, self-learning or a bootcamp will at some point be necessary either way. So a computer science degree should be perceived as a complement rather than a substitute.</p>
  <p>And the reason why a (good) bootcamp can turn you into a developer faster than self-learning, is the combination of the following:
  a thorough but concise curriculum,
  a seamless online platform with tutorials and exercises, and most importantly;
  the on-call support of a human when you hit a wall.</p>
  <p> To conclude this section, I’d like to address the three concerns I had before committing to the bootcamp with the insights I’ve gained since then.</p>
  <h3>1. Learning Ruby on Rails instead of a JavaScript-based stack</h3>
  <p>If you’re currently in the position I was in before joining my Rails bootcamp, overwhelmed by all the JavaScript hype flooding the Internet, you might ask yourself if Ruby is a dated language, and if Rails is a dated framework. If this is the case my short answer would be no.</p>
    <p>The long answer, however, would be this.</p>
  <p>The company I’m working at now has a high-traffic web app built with Rails on the backend, and the Ember.js frontend framework on the front. Having worked full-time with this app for about six months now has required just as much coding in Javascript from me as in Ruby, which has brought me some insight into the differences and similarities between the technologies.</p>
  <p>And sure, when it comes to client side HTML/CSS rendering (or the “views”), the Rails user experience isn’t even comparable to the big JavaScript frameworks. That I must give the Rails haters.</p>
  <p>For instance, take a basic comment section of an article or blog post. As a user you’d expect any comments you submit to appear instantly on your screen.</p>
  <p>In a modern JavaScript framework, this is simply a matter of pushing the new data (the comment) into the client side data store and making sure that the comment list updates its state to show the new comment. This way, you don’t have to wait for the new record to be sent all the way to the backend, stored in the database, and then requested by the client again. Instead the new comment appears instantly on your screen.</p>
  <p>Without any JavaScript on top of your Rails HTML code, the user would have to refresh the page to see any new comments on the article. Which is just awful UX. To avoid this, you can take a few different paths.</p>
  <p>Before the age of the JS frameworks, the main solution would be to sprinkle some quite unstructured AJAX logic on top of the HTML, which would often become very hard to maintain in the long run as your app gets bigger. Another option made available for Rails quite recently is the pubsub (publish-subscribe) websocket solution using something like Action Cable. For instance, this is what we used for the chat in the app we built in the bootcamp. The problem is just that without a wrapping JavaScript framework, the websocket logic can easily get unnecessarily complex, and also hard to maintain.</p>
  <p>Luckily, however, today we have the much better option to use JavaScript frameworks for these types of problems. And since the client side in my opinion is the weakest point of Rails, this is also my main argument why Rails should not be discarded as an option to for instance Laravel or the MERN stack. Just smack a crisp JavaScript framework on top, like React or Ember, and you’re good to go.</p>
  <p>I personally love our integration between Rails and Ember and how they complement each other. Their opinionated natures, solid track records, visionary leadership, and huge contributor communities make them stable, trustworthy, and suitable for junior developers like ourselves.</p>
  <p>If you’re still, despite my best efforts, feeling hesitant about betting on Ruby as your first backend language, I’d like to remind you that I knew practically nothing about JavaScript six months ago (except for some basic vanilla JS, React, and jQuery syntax), and today I work with, and transition between, both of these languages and frameworks seamlessly on a daily basis. And love every minute of it (figuratively speaking).</p>
  <p>So no matter what you bet on as your first language, don’t worry — you can always learn the second one on the job 😎</p>
  <h3>2. Aren’t 9 weeks too short to learn anything?</h3>
  <p>Regarding my concern that the duration of the bootcamp — a mere 9 weeks — might be too short to actually learn something valuable, <p>Le wagon helped me bust that myth as well. In hindsight, it’s actually clear that I’d prefer 9 weeks over the 12 that most other bootcamps offer.</p>
  <p>The reason is that the bootcamp itself doesn’t actually take you to an employment-ready level. At least not for me. Rather it provided me with a solid introduction to all the necessary tools I would require to reach a productive level, and how to put them all together. So even if they would have given me three more weeks, it would just have meant a dozen more tool introductions. <p>Tools that I would later have to actually learn how to use in depth. And that list was already more than long enough.</p>
  <p>It wasn’t until after the bootcamp, after weeks of building my own portfolio apps, that I understood how the tools really worked. <p>So if you’ve decided that you want to do the bootcamp thing, but are comparing options based on a difference of a few weeks, my advice would be to remove that variable from the equation. Because if you’re anything like me, you will still have to relearn every single tool on your own.</p>
    <p>Looking back, it’s actually quite remarkable how accurate Le Wagon’s toolset was. In my current job I use most of these tools daily. Some examples would be Postgres, Git, GitHub, Sidekiq, Pundit, Heroku and Cloudinary. The only two things that I wished my teachers would have spent more time on would be how to use a JavaScript framework like React, and how to write tests with technologies like Rspec. Because learning those two on my own later proved to be crucial for landing my first developer job.
  <h3>3. Would a job guarantee and/or career services have helped me?</h3>
  <p>As I mentioned earlier, many bootcamps have a “get hired or get your money back” policy. And many more have a career services body, to help you get in touch with potential employers and coach you for applications and interviews.</p>
  <p>And although this probably sounds like a sweet deal to many, I actually don’t think it would have made a difference for me. But then again, I also had the time to spend some 500 hours coding over the two months following the bootcamp, the privilege of having an elite school degree on my resume, and a lot of experience in applying and interviewing for jobs. If these things don’t apply to you, maybe this is a factor to consider when choosing among bootcamps. I don’t know.</p>
  <h2>Part 5: Building a portfolio</h2>
  <p>On the last of July this past summer, the bootcamp was over. But I was just getting started.</p>
  <p>Developing the Unify app in the bootcamp and taking it across the finish line had given me a lot of momentum, and I was determined to make the most out of that momentum while it was there.</p>
  <p>I still had some money left in the bank, and a few weeks left on the Barcelona apartment sublease. Basically everyone I knew in the city was leaving. So I had no reason at all to not just keep eating, sleeping, and dreaming code. Only half consciously I set up a few new routines and habits for myself:</p>
  <ul>
  <li>I would code every single day until I reached my goal, which of course was getting that first developer job. Meaning Monday to Sunday, day and night.</li>
  <li>I would push every piece of code that I wrote to Github, the #1 place for potential employers to inspect your code skills and level of ambition. Even if I didn’t feel like I’d produced something worth committing, I’d still do it just to build onto that sweet green commit history for all the world to see.</li>
  </ul>

  <p>My Github commit history from https://github.com/charliejeppsson.</p>
  <p>And I would immerse myself completely in as much software content as I possibly could. That meant listening to podcasts like <p>Software Engineering Daily and SE Radio whenever I was doing some errand, out running, or cooking. It meant watching code talks, tutorials, and lectures from Youtube channels like Coding Tech, Traversy Media, and CS50. It meant reading Medium publications like Hacker Noon, freeCodeCamp, and Codeburst and magazines like Techcrunch and The Next Web. And it meant installing Dash on my laptop, to always easily be able to look up the proper documentation on whatever syntax issue I was struggling with at any given moment (for me then mostly MDN web docs, api.rubyonrails.org, and RubyDocs).</p>
  <p> In other words, my motivation to become a developer was stronger than ever, and I knew that having neither any academic or professional merits to show off, I would probably never even get called to a job interview unless I had a kickass portfolio. So that’s what I set my mind to do next.</p>
    <p>The day after the Demo Day, barely sober from the night out that had followed, I started building my very first own Rails app (that’s how strong the momentum was!). Cocky as I was, I figured the first app would take a few weeks to finish, now that I’d already gone through it all one time with the Unify app. Again, I was wrong.</p>
  <p>It would take me almost two months to finish it. There were so many processes in the last two weeks of the bootcamp that had gone by so fast, without me fully understanding them. I got stuck for several days on all kinds of stuff, from embarrassingly simple to somewhat advanced. Just configuring a datetime-picker required several days spent on Stackoverflow. Not to mention the chat feature, using websockets with Action Cable, which took me about two weeks to get right.</p>
  <p>But the time invested was so worth it. The app actually turned out pretty great: it was actually something I could demo for people and feel proud. And although there’d been many moments of desperation I’d learned a ton. And in fact, experiencing all that hustle gave me a lot of comfort in that the bootcamp had probably been a good choice.</p>
  <p>If it was this hard to code this stuff now when I was familiar with everything, how hard wouldn’t it have been if I hadn’t had the teaching assistants, the platform, and the curriculum when doing it all the first time?</p>
  <p>So sometime in late August I finished the app. I was back home in Stockholm, living in my dad’s apartment, broke and feeling quite pathetic. I tried my best to use that self-pity to keep ramping up my coding efforts. And it was working pretty ok.</p>
  <p>Soon enough the time came to code the actual portfolio website. And for once, I decided to keep it simple. So I put together a very minimalistic static web page where I could gather the stuff I’d done. After finishing it, my plan had been to start applying for jobs. But there was something that bothered me. Remember how I said that I’d been a bit hesitant towards Ruby on Rails before joining Le Wagon? Well, although I’d actually come to love Ruby’s minimalism and the simplicity of using Rails, I still felt like <p>I’d taken a shortcut somewhere.</p>
  <p>Under the “Skills” section on my portfolio page, one could find Ruby, Rails, SQL, Postgres, HTML/CSS, jQuery, Bootstrap, Sketch, Git, and Heroku. And JavaScript.</p>

  <p>It was the last one that bothered me. It felt like a lie.</p>
  <p>If I started applying for jobs now, I could probably land something decent as a Rails developer. But what if all the haters were right, and Rails was actually outdated and dying? And what if I found my dream job, only to realize they used advanced JS technologies? I wouldn’t stand a chance with my 200 hours on freeCodeCamp and 2 — 3 jQuery days + 1 React.js day at the bootcamp.
  <p>The hubris part of my brain spoke to me again - “Here’s an idea: what if I would learn the MEAN stack as well?” MEAN as in MongoDB, Express.js, Angular.js and Node.js, which is sort of like the JavaScript equivalent of what Rails is to Ruby. According to the search results on LinkedIn and Glassdoor, that would mean that I would more or less double the amount of developer jobs that I was qualified for.</p>
  <p>I recalled that Gus, the bootcamp manager, had told me that it would take me about another month to learn it. How hard could it be? I could probably do it in two weeks, was my thought.</p>
  <p>And that’s how I ended up in what I’d like to call the tutorial swamp.</p>
  <p>So once again, I turned to my old friend Google to research learning strategies. But after a few hours I still couldn’t seem to find a good online course for my MEAN stack 101 needs. They all seemed to be focusing on one part at a time, which is definitely the right way to go if you want to understand a framework in depth. But since I wanted to learn as much as I could within two weeks, just enough to be able to add a new project to my portfolio, I didn’t have time for that.</p>
  <p>That’s when I discovered a completely new dimension of development education: YouTube tutorials. There were so many out there. For every technology or stack I could think of, I found at least five decent tutorials.</p>
  <p>Eventually I found my way to the Traversy Media channel, and the tutorial series MEAN Stack Front To Back. Ten videos at 20 minutes each, showing you how to build a basic RESTful web app with both user registration and sign-in authentication. Perfect.</p>

  <p>Traversy Media - MEAN Stack Front to Back</p>
  <p>I started right away and coded along to each video on my laptop. And crazy enough, after just a few days I was done. I’d actually coded a fully functioning web app using completely foreign technologies. Node for the backend, Mongo for managing the database, Angular for the frontend, and Express for tying it all together.</p>
  <p>Could it really be this easy? Did I know this stuff now? While I was happy that it had been so much easier than I’d thought, a cold shiver of too-good-to-be-true ran down my spine.</p>
  <p>Well, since I was ahead of schedule, I figured, why not build onto the app a bit further? My idea was to turn it into a Medium clone, by just enabling basic blog post CRUD actions (create, read, update, delete), like we’d done in a project in the bootcamp with Rails.</p>
  <p>I didn’t get very far, though. I figured I would just need to add a couple of new routes, models, controllers and views, and that would be it. The problem was that I was still thinking in the “Rails way,” where “convention over configuration” makes features like this really easy and fast to build.</p>
  <p>As I’d read and heard plenty of times, the MEAN stack follows the opposite mantra: “configuration over convention,” meaning that you get a significantly more flexible framework by giving up some of the “magic” automations. Like getting a controller action of a certain name connected to a view with that same name, right out of the box. Which is a really sweet piece of magic to get when you’re a beginner.</p>
  <p>So realizing for the first time how much harder it was to code following “configuration over convention” came as a big slap in the face. Because it proved that my hunch about the whole tutorial process having been too good to be true was right. But it wasn’t until I started coding off-script, without the comforting instructions from Brad Traversy, that I realized it.
  <p>So there I was, knee deep in the big pool of mud that was the MEAN stack to me then. The app was nowhere near ready to be added to my portfolio page. It literally had no features. Just the possibility for users to register, log in, and do nothing but look at some static Bootstrap designs.</p>
    <p>Another option was to just keep hustling the trial and error way. Unlike the bootcamp, I’d removed my training wheels WAY too soon, and would likely have to spend weeks on Stackoverflow to be able to finish the app the way I’d planned it. I didn’t have weeks. I was supposed to start applying for jobs yesterday.</p>
  <p>Ironically, it turned out the only way out of the tutorial swamp I’d put myself in, was to keep wading through it, by following more tutorials. Luckily, I found a pretty good one on the same Youtube channel, and decided to use it as my lifeline.</p>

  <p>Travery Media - Build an Angular 2 Spotify App</p>
  <p>And that’s how the web app that was supposed to be a Medium clone in the end became a music discovery app, using the Spotify Search API.</p>
  <p>Despite all the hustle, two weeks after the decision to try and learn the MEAN stack, I actually deployed a decent web app. Which had been my goal. Sure, it was a bit like cheating, but I figured that as long as I could demo it and explain all parts of it on a job interview, nobody would care if I’d followed a tutorial or not.</p>
  <p>Boom. All of a sudden I had three apps in my portfolio, and could add a bunch of new technologies to my skills repertoire. Finally, it was time to enter the next phase of my developer journey: the job hunt. And it was not a day too soon.
  <h2>Part 6. Applying for jobs</h2>
  <p>All in all, it would take me about 4 weeks, 30 applications, 10 interviews, and 3 offers to find that perfect fit. And ironically enough, it would actually be the first company I applied to that I would join. I could of course call it a coincidence, but I think it’s more an effect of a thorough screening process before even starting to send applications.</p>
  <p>I’ll have to admit that I think a fair amount of luck played into my fast job hunt success. But for what it’s worth, I’ll describe the process I followed, as I think it taught me a few things about what jobs and companies to focus on for that first dev job.
  <p>The first thing I did was set up a spreadsheet for a shortlist of interesting jobs (I’m originally a dull economist, remember?). Then I spent several days scouring the job boards of LinkedIn, Glassdoor, and Stackoverflow for jobs based on keywords like web, development, software, frontend, backend, Ruby, Rails, Javascript, Angular, Node, and Postgres.</p>
  <p> Not very surprisingly, the searches returned hundreds of jobs just in the Stockholm area alone. The companies behind them ranged from startups to digital agencies, media companies, cloud service providers, game developers, and everything in between.
  <p>Over the past few months I’d managed to put together a pretty narrow set of criteria of what I wanted from my next employer.</p>
  <p>If I could choose any job I wanted, my priorities looked more or less like the following:</p>
  <p>I would code across the whole stack, meaning that I’d get to do just as much database and architecture stuff as UX/UI stuff, and mainly in JavaScript. All the hype around React probably had a lot to do with the latter. Like I told you before, for all I knew at this point, Rails was basically dying, and JavaScript was the future.</p>
    <p>My learning curve would be extremely steep, to the point that I’d have to code day and night to keep up. All to become as good as I possibly could in the shortest amount of time.</p>
  <p>My coworkers would be smart, ambitious, funny, and informal, and preferably all at the same time.
  The company would be a high-growth startup with a meaningful mission and a product related to blockchain, AI, and/or sustainability, or a top-tier digital agency with such projects.</p>
  <p>I would get paid fairly.</p>
  <p>That was about it. Pretty high demands for a rookie one might think. But note that a high salary was not part of the criteria (nor is it today, with 6 months of professional experience). Maybe I’m stating the obvious, but if you’re migrating into a pure development role from something completely different, I think it’s important to know that it doesn’t matter what you were paid before.</p>
  <p>For instance, I knew that my market value in the finance industry was about $5,000 per month. But realizing that software development is a fundamentally different craft, I’d set my goal around $3,700, but would settle for as low as $3,000 (which is significantly lower than the Swedish average salary around $4,000).</p>
  <p> With all the above criteria in mind, I’d start going through the job ads one by one, adding the ones I liked to my shortlist and abandoning the ones I didn’t. After a while I was noticing a few patterns:</p>
  <p>Firstly, most companies on paper required way more tech skills and experience than I could offer. This came as no surprise. From both my own research and the bootcamp I’d learned that the “junior developer” position was dying.</p>
  <p>That many companies considered it too expensive to spend the valuable time of senior developers on mentoring rookies. Which was why they prefered hiring senior developers, which are in very high demand but extremely low in supply.</p>
  <p>The big paradox here is of course that if no one takes it upon themselves to foster and teach junior developers, how can we ever patch the shortage of senior developers on the market? Nevertheless, having realized that this is the way the industry works today, I also realized that I’d have to apply for positions I wasn’t qualified for.</p>
  <p>Secondly, I saw that the hotter and bigger the company was, the more likely it was to include requirements of some computer science related degree and professional development experience. I reckoned that sure, a decent portfolio and cover letter could probably get you an interview with a company who requires a “Rails ninja” or “React superstar” rather than a novice like I was.
  <p> But if the job ad explicitly requires 3+ years of professional JavaScript experience, and an MSc in a computer science related field, my chances of getting an interview are probably very slim.</p>
  <p>Thirdly, that almost every single job ad mentioned React. Despite all the hype around it online, I was still amazed by its crazy high demand.</p>
  <p>So amazed that I actually decided to spend a few hours a day building a small React web app, using React.js on the front and Rails on the back, so that I could add that to my portfolio and resume as well.</p>
  <p>For this I actually mostly used the notes from the one React lecture in Le Wagon’s bootcamp, but if you’d be interested in learning it you won’t have a hard time finding free guides out there, not least the ones from freeCodeCamp.</p>
  <p>Except for the fact that I could put React on my resume, the biggest benefit from this experience was getting comfortable with building a web app using components (as opposed to controllers and views, as is the Rails way), and working with props and state.</p>
  <p>Odds are that you’ll need to become friends with some sort of JavaScript framework sooner or later, and then these concepts will come handy either way, be it React, Angular, Vue, Ember or any other of the gazillion JavaScript frameworks out there.</p>
  <p>With new insights like the ones above, I could develop and refine the criteria I already had to determine whether a certain job should be added to my shortlist or not. Soon enough I had a list of some 50 job openings, and it was time to actually start sending out applications. Coming from a background where I’d applied and interviewed at hundreds of companies, this felt like the easiest part so far.</p>
  <p>This might have something to do with me being the kind of person that writes one generic cover letter that I send to everyone. I know what you’re thinking: every mentor/teacher/recruiter you’ve ever talked to has advised against this. But come on. It’s a job application. Not the speech for your best friend’s wedding.</p>
    <p>Odds are the recruiter won’t spend more than a minute on it anyway. So it won’t really matter if you mention that prize that the company won, or that you were impressed by the YoY growth last year, or your totally speculative opinion on why their culture is so much better than competitor X’s.</p>
  <p>What matters is that you’re able to express in text the case why you’re worth them spending an hour on meeting you — in a compelling, data-driven, and grammatically flawless way. If you want to have a look at mine, just write me and I’ll send it to you! Got some pretty flattering feedback on it, just saying…</p>
  <p>The next thing I did was update my CV and LinkedIn profile. And here I can’t stress enough the importance of keywords. Make sure that the names of all the technologies you know (or want to pretend that you know) are included in both. This way, you’re more likely to appear in search results (same here, just ask me and I’ll send you my CV).</p>
  <p>After sending all the applications, a week or so went by without me hearing anything from any of the companies. That actually turned out to be a well-needed period of rest for me. I took some time to reconnect with the friends and family I’d sort of neglected for the past few months, caught up by my new obsession.</p>
  <p>Then I started getting replies.</p>
  <h2>Part 7: Doing interviews</h2>
  <p>The first reply came from a really young startup. It basically consisted of two guys, an ex-banker CEO and a senior developer CTO. The email was from the CTO, and he was inviting me to my very first developer interview.</p>
  <p>Aware that the positive responses will always come before the rejections, I tried to keep a cool head and not get too excited.
  <p>But still, just the fact that this guy, a senior developer with 10+ years of experience, had looked over my LinkedIn profile, cover letter, CV, and most importantly my portfolio and the code behind it on my Github profile, and still thought I might be able to write good code for them, made me feel pretty damn proud of myself.</p>
  <p>Although I didn’t think the company actually met all my criteria (mainly due to the tiny team and poor salary outlook), I responded immediately and accepted the invite.</p>
  <p>Despite all my efforts up to this point, I hadn’t spent much time actually preparing for the technical interview. But from what I’d heard and read it was supposed to be an art in itself, and in many cases something people would spend months preparing for.
  <p>Oftentimes, bootcamp alumni and self-taught coders with more practical experience will fail the technical interview due to their lack of knowledge in fundamental computer science theory. Just like CS grads will often fail due to their lack of experience with building apps with modern technologies.</p>
  <p>But since I was running out of both time and money, I figured this too was something I’d have to learn by doing. I just couldn’t postpone the interviewing phase anymore. Just like I’d gotten burned many times when learning how to do the financial type of interview, I knew those burns were crucial for me finally figuring out how to win the interview. Why would the technical interview be any different?</p>
    <p>So I accepted the invite, and a few days later I walked into the lobby of their office. They were waiting for me by the reception desk.</p>
  <p>The place was a dump. If you’d ever seen The Office, it felt like I’d just stepped inside the office of the Dunder Mifflin Paper Company. They told me it used to be an office for a big auditing company, remade into a cheap interim coworking space for the time left until its planned renovation. We stepped into a conference room and sat down by a big wooden table.</p>

  <p>They started off by telling me a lot about themselves and the company. They’d just released a beta version of a new Medium-ish app for prominent lifestyle writers, and had raised a bit of money from friends and family in their seed round. But they were still pre-launch, and most definitely pre-revenue.</p>
  <p>After about an hour of what felt much more like a sales pitch than an interview, the CEO left and I was told that the CTO and I would continue for the technical part of the interview. My heart skipped a beat. From all that I’d read about technical interviews <p>I expected to get all sorts of brain teasers, coding challenges, and questions on complex data structures thrown at me.</p>
  <p>But none came. Instead, the CTO starting asking me all these very open-ended questions.</p>
  <p>Like what technologies and frameworks I liked. If I could choose any new technology to learn next, what it would be. What I thought about the new syntax introduced by ES6 (the 2015 Javascript update, introducing a lot of new cool stuff like arrow functions, promises, and constants).</p>
  <p> We had a nice conversation that lasted for probably another half hour. But then came the big backlash, when the CTO decided to put all the cards on the table.</p>
  <p>Due to their tight financial situation, he told me, they could only offer me a 6-month internship role with symbolic pay for now (meaning practically no pay). If the internship went well, however, they were very open to offering both equity and decent pay.
  “If the company is still around by then,” I almost added.</p>
  <p>Although I was flattered that they’d made me an offer on the spot, I knew instantly that this was neither the company nor product I was looking for. Nevertheless, I didn’t turn them down right away. An offer is still an offer, I thought, and can always come handy when negotiating with other companies later on.</p>
  <p>Despite the disappointment about both the job, and the fact that the technical interview hadn’t really taught me anything new, I’d still received an offer, which gave me a big confidence boost for the interviews to come.</p>
  <p>The second response I got was from a slightly larger startup called Teamtailor. They were a Stockholm-based company with a mission to digitize the recruiting and employer branding industry, currently ruled by quite non-technical recruitment consultants and HR managers.</p>
  <p>Not a bad idea. Although job ads starting with words like “recruitment” and “HR” 9 days out of 10 would’ve scared me away, there was something about this company that intrigued me.</p>
  <p>From my pretty thorough research I’d found that they’d been around for about 4 years, had some 30 employees, presence in 4 or 5 countries, 600 customers (businesses), a 100%+ revenue growth rate, and breaking even with some margin on top. Not bad at all.
  <p> To top it all off, their instagram account revealed their office: a brooklyn-ish old red brick beer factory in the middle of Södermalm, the best area Stockholm has to offer.</p>
  <p>M. M. Mmm.</p>
  <p>Everything pointed towards the fact that they were in that sweet spot of the company life cycle. Young enough to be able to make you feel like you’re on a journey together, with an informal culture and lots of room for initiative and growth. But still old enough to have established some structures, which can be nice to lean on when you’re learning something new.</p>
  <p> Anyway. Again, it was the CTO that wrote to me. After a few messages back and forth we settled on a first interview in their office a few days later. I was told that both he and another co-founder would be meeting with me.</p>
  <p>Before even meeting with any of them, I had a really good feeling about the whole thing. Which was bad. At least in my head. Because now I would enter the interview probably wanting them more than they wanted me, I thought. After walking up the stairs of the old beer factory, I finally reached the door to their office and stepped right into a rather special scene.</p>
  <p>First, a big pink poster right in my face, with bold white letters screaming at me: “Teamtailor is one of Europe’s 100 hottest startups - Wired Magazine.” To my left what looked like a living room, where a bunch of 20-somethings were playing FIFA on a huge screen. In front of me a bigger room, where the table closest to me was filled with developers, casually hacking away on big crisp screens. And all around me, soft hiphop beats pulsating from Sonos speakers.</p>
  <p>Right in that moment, any bad prejudice I’d held against them for being an HR company disappeared. This place was awesome. Dammit.
  You can say a lot of bad things about the typical Silicon Valley wannabe office. But in my opinion, even the worst office of this kind will still be a thousand times better than the typical corporate counterpart. So for me it was heaven. Which was really bad for my attempted coolness for the interview.</p>
  <p>A tall skinny guy with a baseball cap smiled at me and got up from his chair to greet me. It was the CTO. We stepped into a conference room with glass walls and green fake grass covering the floor. The other co-founder joined us and we kicked off the interview.</p>
  <p>Unlike my last interview, they started off by telling me about the process I was in. The purpose of this first meeting was mainly to get to know me better. If I proceeded, the second step would be a technical interview. I was so relieved to hear that. The imposter syndrome was real.</p>
  <p>The first question was more or less the classic “Why do you want to be a developer?” They told me that more than anything else, it was my cover letter and CV that had caught their eye. Finding business-minded developers was rare, and finding developers with business degrees and experience from both business development and finance even rarer. So why had I decided to hop off my path to pursue this totally different one?</p>
    <p>From interview experience, I’ve learned that honesty is almost always the best way to go in these cases. So I basically told them what I told you in the beginning of this article, that I hate selling, love technology, and wanted to transition into the creative side of things.</p>
  <p>From this point forward, the conversation sort of got its own life. At one point, I told them that if I’d known the things that I know now, I’d probably had chosen to study computer science instead of business. To my surprise, the CTO was surprised by this remark. He laughed and asked me why.</p>
  <p>I hesitated. I realized it was one of those things I’d said because I thought it’s what they wanted to hear. He let me off the hook, and told me that he was also a self-taught developer. The only subject he’d taken in uni was film studies. I was a bit shocked by that. But there was more to it.</p>
  <p>As a matter of fact, none of the 10 developers at the company had a real CS degree. A few of them had taken a year or two of some private web development program, but most were actually self-taught.</p>
  <p>Hearing that from this guy made me so happy. He’d just confirmed what my former colleague Sandra had told me a year earlier - that you don’t need a degree to become a great developer. Good stuff.</p>
  <p>The conversation kept going so smoothly that it wasn’t until the last few minutes when they asked me about my portfolio. Only one of them had actually looked at it, and he literally said he’d just “had a glance.” All caught up by how well the interview was going, I told them I would be happy to demo one of my apps.</p>
  <p>Immediately, their faces lit up and they straightened in their chairs, nodding me on. I was about to realize that I’d just made a BIG mistake.</p>
  <p>The only app that was nearly good enough to show to these guys was the one that I’d made over the month straight after the bootcamp. And I hadn’t touched that one for at least a month. I hooked up my MacBook to the big screen in front of us, and entered the URL in the browser.</p>

  <p>The first embarrassment was that it literally took 20 seconds to load the home page. With a dry throat I tried to explain that I was using the free version of Heroku, which meant that whenever the server associated with the domain didn’t receive any requests for more than an hour, it would go into this “sleep mode,” from which it took a long time to wake up. The last thing I wanted was them to think my app was slow.</p>
  <p>When it had actually loaded I took some time to explain the idea behind the product. It was basically a service for creating virtual lines, allowing organizations like airlines, banks, and hospitals to set up queues online instead of in their physical locations.</p>
  <p>Then came the second embarrassment. When I tried logging in on my account using Facebook authentication it failed. As I would realize much too late, the reason was that I hadn’t updated the URL in my Facebook API settings after getting a new SSL certificate. So Facebook was expecting requests from an http://domain, while mine came from an https:// domain. Rookie mistake.
  <p>I finally managed to log in manually instead, and demoed some of the main features without any issues. But then came the biggest embarrassment of them all. I couldn’t seem to get the crown jewel of my app to work: the chat. When I clicked the chat link, I got to the chat page, but couldn’t see any of my fake users to chat with.</p>
  <p>Then I basically gave up. Which I really shouldn’t have. Because just a few hours later, I would realize that the chat worked perfectly fine. My user account simply hadn’t signed up for any lines to participate in, which is why I couldn’t see any users to chat with either.</p>
  <p> We said our goodbyes and they told me they would be in touch. I left the interview feeling angry and disappointed. Why hadn’t I prepared better for the demo? It had all gone so smoothly until that last part.</p>
  <p>Nevertheless, not even an hour would pass until David wrote me again. He told me I had proceeded to the next step of the process. <p>I couldn’t believe it and I couldn’t have been happier. But of course, also a bit scared about taking on my first real technical interview.</p>
  <p> In the end, however, this second interview would also turn out to be nothing like all the horror stories I’d read about online. Already in the invite email, the CTO told me that I would be meeting with two of their senior developers, and that they simply wanted me to show off one my apps more thoroughly, along with the code behind it.</p>
  <p>The main purpose would be to get a grip of how well I knew their backend framework (Rails), and how fast I could be able to learn their frontend framework Ember.js (which I hadn’t even heard about at this point).</p>
  <p> I knew instantly that the demo app would have to be the one that I’d built using Rails and React.js. It was perfect for two reasons:</p>
  <p>it was built on Rails integrated with a JavaScript framework (just like their stack), and
  I’d learned all the React stuff I used in less than two weeks, which would give them a good sense of how fast I could learn Ember.
  <p>This case is a perfect example why it can actually pay off to not put all your eggs in one basket when you’re building your portfolio, but actually try out a few different stacks.</p>
    <p>Soon enough the big day came, and I was back in their office in another of their fake-grass-floor conference rooms. I started off showing the UI flow of the app.</p>
  <p>I surfed onto the web app, and soon enough the working title “AppHunt” lit up on the screen in big bold purple letters. It was sort of like Product Hunt, but more like a market place strictly for apps. So any user would be able to browse the home page for apps for sale and for purchase. And if they created an account and logged in, they would also be able to search and filter the app items, rate them, and write stuff in the comment fields. That was basically it.</p>

  <p>But fortunately for me, it was enough. The two senior developers apparently liked what I showed them so much that they gave the CTO the thumbs up. They later told me a few things that they liked specifically:</p>
  <p>That the real-time features — like changes in the comments, search results, and ratings appearing instantly — showed that I knew how to use state and props, which is crucial in any JavaScript framework.</p>
  <p>That I used JBuilder to serialize the JSON requests between frontend and backend.</p>
  <p>That I used Elasticsearch for the search feature.</p>
  <p>That they liked the design and that I’d made my sketches myself in Sketch before starting to code.</p>
  <p>That the CSS code wasn’t very contextually styled or nested. Instead they found much of it reusable throughout the entire app, which was good. One thing that would have made them even more impressed though, they told me, would have been if I’d followed the so-called BEM CSS naming convention as well.</p>
  <p>It wasn’t until a few weeks after the second interview that the CTO reached out to me again with an offer. After some discussions back and forth we settled on a probationary period of 6 months, with a $3,300 monthly salary that would be boosted to my $3,700 target when I reached a productive level.</p>
  <p>I accepted on the spot and started my new job the next week. ✌️</p>

  <p>RIP Michael Scott ❤️</p>
  <p>In parallel with the whole Teamtailor process, I interviewed for 4 other companies as well. The most noteworthy was the Swedish fintech phenomenon iZettle, which is sort of an umbrella of several different financial products, but where their wireless card terminal is probably the one they’re most known for.</p>
  <p>As this successful startup was approaching a unicorn valuation, I’d learn that their demands on experience and skill level were significantly higher than the smaller startups that I’d interviewed for up to this point. I saw it both in the much more thorough recruitment process they had (5 interviews!) and the difficulty level of the interview questions.</p>
  <p>The main reason a rookie like me even got an interview there in the first place I’d say would be largely due to the recommendation from a friend and the name of the business school I graduated from. So I sort of cheated my way in, I’d say. But I was so obviously not prepared for them.</p>
  <p>Just like with the other companies, the first interview was all fluff and soft skills. But even more “HR” this time. Why do you want to work as a developer? What technologies do you like using? What are your strengths/weaknesses? And so on. Easy stuff.
  <p>The second interview, however, would turn out to be a quite traumatic experience. It all started with me sitting down in a conference room with two of their web developers. We repeated the whole “get to know each other” conversation and I was getting pretty comfortable and confident. And then I got the biggest sucker punch of my life.</p>
  <p>Out of nowhere the guy across the table handed me a huge white A3 paper and a pen. He told me they wanted me to draw a sketch of the data flows and processes involved in the following scenario:</p>
  <p>“A small business owner has an account with iZettle and uses their card terminal. After one of his/her own customers has made a purchase using the terminal, he/she wants to log onto the web app and/or mobile app to see the transaction.” </p>
  <p>This really caught me off guard, but I hesitantly nodded and accepted the challenge. Then the guy said something like: “We’ll just go and have a coffee, and then in 5 minutes or so we’ll come back and let you explain your thoughts.”</p>
  <p>5 minutes! Was that a joke? I really couldn’t tell. When they’d left, I seriously considered if this was some sort of trick question, where I was supposed to realize that this task was just too big to perform decently in such short time. But time was already running out and it was too big of a risk. So I decided to give it a shot.</p>
  <p>In hindsight, I realize that it was a system design question, meaning that they wanted me to basically just map up an overall view of how the web app and mobile app made requests to some API that connected them to the server(s) and database (if you want to improve your system design skills, I’d really recommend this Youtube channel).</p>
  <p>But I did none of that. In my state of panic, I skipped ahead several steps, and started trying to sketch the database model of the user account, with a table, columns and foreign keys (I assumed that they used a relational database). When I was done with that, I had about 30 seconds left to map up the other components of the architecture. I was so stressed that I got all philosophical, and started questioning what the actual roles of the API and server were. Not a good sign.</p>
  <p>5 minutes passed, and the two developers returned to a sketch barely worthy of a 5-year-old. I’d basically just drawn three circles. One to the left, representing the database, and two to the right, representing the web and mobile app clients.</p>
  <p>Of course, I failed the interview miserably. Which was also the reason I didn’t move on to a third one. However, they let me down easy, telling me that they liked me and that I should apply again when I had one or two more years of experience.</p>
  <p>The whole experience bummed me out, as I didn’t think I’d gotten a chance to show them my practical skills. Although I can kind of see that there’s some sort of value in being able to illustrate system architecture on a piece of paper, I really think that there’s a thousand times more value in being able to show your skills with a practical exercise, like a coding challenge or app demo. But hey, there’s a lesson to be learned in every failure, right?</p>
  <p>All in all, during my 4 weeks of job hunting I ended up attending 11 interviews for 6 companies, of which 3 made me offers. So despite getting burned a few times, it was really an amazing experience. If I was asked to name the one single biggest reward (except for getting my dream offer), it would be that I got comfortable with talking to developers about software. If you’re suffering from the imposter syndrome like I did (look it up, it’s a thing), there’s simply no better way to treat it.</p>
  <p>Another key takeaway is that out of my 11 interviews, only one turned out to require actual theoretical computer science knowledge. No questions on complex data structures, no devious brainteasers. Just one question on system architecture. The rest were 100% centered around either practical or soft skills. So unless you’re applying for a flashy software engineering job at Google or Facebook, I’d definitely recommend to focus on the practical stuff, and learn the theoretical stuff later.</p>
  <p>Lastly, I’d like to stress the fact that I didn’t know anyone involved with the company that I ended up getting hired by. I know there’s a lot of content out there claiming that a strong personal network is the single most important factor to land the first dev job. And although that might be true statistically, cold-applying without a referrer is definitely not a waste of time.</p>
  <h2>Part 8: What I do today</h2>
  <p>At the time of writing, I’ve been working at Teamtailor for six months. And time really has flown by quicker than I could’ve ever imagined. I’ve barely even noticed the long, dark, and freezing winter that’s usually a struggle to endure here in Stockholm.
  <p>I’m part of a team of 12 people, where everyone except for one designer are full stack Rails and JavaScript developers. A few have 10+ years of experience, some just a few years, but only two hold actual academic tech degrees. The rest of us are more or less self-taught.</p>
  <p>I spend my days hacking away on our Rails/Ember platform, every day trying to leave the app a little bit better than I found it the same morning. The product itself is a recruitment web app that lets companies build and manage their own career sites, effortlessly and completely without requiring any coding skills.</p>

  <p>https://career.teamtailor.com</p>
  <p>In turn, the app behind this career site has two main dimensions:</p>
  <p>It lets users handle the employer branding meant to attract talent, with means such as job posts, social media content, a blog, images, videos and gifs.</p>
  <p>It offers a massive set of tools to handle the traffic and applicants — like tracking candidates, chatting, emailing and texting them, evaluating them with tests, setting up automatic triggers to execute some action when a candidate is moved from one stage to another, and promoting job ads on all the major job boards to name a few.</p>
  <p>How we work</p>
  <p>In our product team, we try our best to follow the agile principles of Scrum, Kanban, and pair programming. Practically, for us this means we carry out our work in cycles, where we split up the implementation of new features into projects running for 6 weeks at a time. In turn, each project has developers paired up two-and-two, and made responsible for shipping the new features within those 6 weeks. The pairs deploy their work continuously, based on a predefined Trello board of smaller tasks within each planned feature.</p>
  <p>Of course, we don’t just build new stuff. We also maintain the app. And at the core of this maintenance we have what I believe is a pretty unusual routine: the “tech-on-call” duty. This means a weekly rotating position where each developer in turn spends one whole week assisting our users and support staff on Intercom.</p>
  <p>If you think this sounds like an annoying and frustrating task, it was. Until we decided that each tech-on-call would pause all their other projects while on support duty. Then all of sudden, when I no longer felt like every minute spent on Intercom was a minute stolen from my projects and deadlines, I actually started enjoying it.</p>
  <p>Think about it - when you just take the time to listen, you realize that you basically have an army of volunteering quality assurance testers at your disposal, always ready to give instant feedback on the product’s actual UX and user pain points. Considering this, suffice it to say that I’ve learned just as much from my tech-on-call weeks as any other project or bug that <p>I’ve been working on.</p>
  <p>Lastly, in between each 6-week cycle, we take two weeks to make a common effort to squash all the bugs lined up in our Trello bug board. We also use these two weeks to develop pitches for new features that we ourselves would like to see in the app. Every developer then gets the chance to pitch these ideas in a shared pitch meeting that we have every 8 weeks, which is really empowering for someone who’s not just looking to solve tough code problems, but also business problems through new cool additions to the existing product.</p>
  <p>What I’ve done so far</p>
  <p>Although the app includes so many features and technologies that in the beginning were completely foreign to me, I was thrown right into the middle of the action already in my second week. The onboarding process — meaning me having a senior developer show me the ropes — lasted only five days. After that first week, in theory, I was supposed to be more or less autonomous.
  <p>This meant I was expected to understand the architecture of the platform, the dev toolkit, the team’s workflow, our style guide, how to provide tech support to users and colleagues, and other internal routines for developing, testing, debugging, reviewing and deploying code. In other words, a LOT of new stuff for someone who just came out of a bootcamp.</p>
  <p>If you’re panicking right now because you think I actually learned all that in a week, relax. I definitely didn’t. It wasn’t until after a few months that I started getting comfortable with most of that stuff. And with time, the others would notice, and I would be trusted with more and more responsibility. Since then I’ve gotten to be a part of some of the most exciting and challenging projects I’ve ever worked on.</p>

  <p>My candidate profile with some fetched social media URLs in the gray box.</p>
  <p>The first serious one was updating the method we used to fetch information about users who signed up on our app with just an email. We’d already integrated with a third party API for this, that we made requests to to get data like full names and URLs to social media profiles and avatar pictures.</p>
  <p> However, since we’d found the fetched data to often be incorrect, the product team had decided to switch to another provider. </p>
  <p>Since it would expose me to several crucial areas and data flows of the app, it was the perfect next step for me.</p>
  <p>To implement it, I would have to navigate all the way from getting the email from the user input at the very front of the client layer, to understanding how the data would travel from the Ember frontend, through adapters and serializers to the Rails backend and ultimately get stored in the database.</p>

  <p>An example of how the call to action button can be used on a career site.</p>
  <p><p>My second own feature was developing what we call the “call to action button,” meaning that we’d allow our users to add custom buttons to their career sites in our editor tool.</p>
  <p>For instance, we wanted to let them redirect to the page of a certain job opening, a certain department, or some completely external URL. This actually turned out to be a lot easier than I’d expected. Most of the backend architecture was already in place, so all I had to do was basically create a few new Ember components and add them to the other options in the career site editor.</p>

  <p>The modal form for our new automated candidate testing feature.</p>
  <p>The third feature I worked on was enabling our users to integrate with external assessment providers, meaning they would be able to send candidates to a test platform like Hackerrank. When they’d finished a test, the results would automatically be sent through an integration between our and the provider’s APIs. This was a big one, so I mostly acted as an assistant to the senior developer (aka the Ember grandmaster of our team) responsible for the project. Still, it taught me tons about how to properly set up an API integration and automating workflows with triggers.</p>

  <p>One of the pages in the Employees section, rewritten in Ember.js.</p>
  <p>My fourth project was the biggest to date, and for good and bad I ended up doing it more or less on my own. The entire app had originally been built in Rails, and most views had been rewritten with JavaScript and Ember one by one. Only one of our main sections of the app still had just Rails views. It was the so-called “Employees” section, which was basically the main destination for creating, editing, and deleting user accounts. So it was kind of important that my translation to Ember was flawless.
  <p>Which stressed me out like crazy. Since I’d been on the team for about three months at this point, I figured it was time to stop acting like some annoying intern and start working more independently. Meaning I tried to bother the others with as few questions as I possibly could. The good thing about this was that I got a lot of confidence in my ability to solve real-world software problems completely on my own. The bad thing, however, was that it made me super slow, and that it took me a good 6 weeks to ship the full rewrite of more than 2,000 new lines of code.</p>
  <p> In the end, this actually even proved to be the main reason why I didn’t get the raise that the CTO and I had agreed on, since I hadn’t fulfilled my end of the bargain: I hadn’t reached a productive level in line with the rest of the team.</p>
  <p>Although this sucked at the time, I now realize that his standpoint was completely fair, and it taught me an important lesson. In the world of Agile software development, lone wolfing isn’t an option. Teamwork is a major part of finding a productive workflow.
  <p>The fifth project is the last to date, and we actually just shipped it. It was our new feature to handle the emerging new European data privacy legislation (GDPR). For us that translated into building tools that made it easier for our customers’ candidates to have their personal data deleted from our database, and also for our customers to ask the candidates for permission to store and keep storing their data.</p>
  <p>Sounds pretty straightforward right? Well, it wasn’t. At all.</p>
  <p>I think the main reason was that we couldn’t focus on a single destination of the app. Instead, the feature required us to add stuff all over the place. Notifications in one place, warning flags in another, search filters and bulk actions in a third, and dozens of new email sendout actions everywhere.</p>
  <p>For the first time since I started, I was paired up with the senior developer and co-founder that onboarded me. So I felt it was really important for me to show him how much I’d learned since that first week six months earlier. My probation period was about to end, and they would soon have to make a decision if I was good enough to keep on the team. And with this “simple” project, I first figured proving that would be a piece of cake.</p>
  <p>Oddly enough though, I think the complexities made our pair-programming sessions even better. There were so many user scenarios to take into account when designing each part of the architecture, that we were forced to discuss and twist and turn every new block of code. For the first time, I’d have to take into account not only the UI/UX dimension, but also extensive legal considerations, that could cause a lot of trouble for our users if we didn’t implement it correctly.</p>
  <p>So we pair-programmed a lot, and it was really great. When I coded, he came with a lot of good feedback that mostly made my code a lot cleaner. But unlike that first onboarding week, I was actually also able to give feedback on his code, making suggestions and asking questions that really made his code better as well.</p>
  <p>When you’re in a state of intense development, like I’ve been for the past year, I think it’s hard to quantify how much your skills have improved at any given moment. So being able to give constructive feedback to this guy, with 15+ years of coding under his belt, really put the writing on the wall for me.</p>
  <p>And by the way, so did the extension of my 6-month probationary employment contract, which I was just recently made aware of. From now on, I’m a regular full-time employee, with the salary I initially requested six months ago 😃 🎉</p>

  <p>Me at work 😎</p>
  <h2>Part 9: Why becoming a developer is the best thing I’ve ever done</h2>
  <p>As you’ve probably figured out by now, I’m in love with coding.</p>
  <p>I love that it keeps forcing me to push my intellectual limits through quantitative problem solving.</p>
  <p>I love that it provides me with an outlet for creative expressions when designing anything from UI to system architecture.</p>
  <p>I love that it provides me with a thousand different solutions for every real-world problem.</p>
  <p>I love that it not only tolerates my inner perfectionist, but actually requires that perfectionist to be present — and punishes its absence.</p>
  <p>I love that it surrounds me with people that value genuineness and transparency above small-talk and politeness.</p>
  <p>I love that, on my introverted days, it lets me put on my headphones, roll up my sleeves, and deep dive into another dimension for a while.</p>
  <p>I love that it always holds something new for me to learn, and that it will require me to be a lifelong learner, unlike many other stagnant professions.</p>
  <p>But most of all, I love that coding has given me a sense that the future is truly limitless.</p>
  <p>In a few weeks I’ll turn 27, and I have no idea what the future holds for me. In three years, for all I know, I might still be in the same position as I am now, writing code for the same company. I might be a lead developer. I might be a product owner or manager. Or I might be somewhere completely different.</p>
  <p>Freelancing remotely from a sunny paradise. Developing decentralized apps on some disruptive blockchain. Designing machine learning models to combat global warming. Writing spaceship algorithms for expeditions to Mars. Or building my own product.
  <p>All of the above scenarios would have seemed utterly crazy to me before I started coding.</p>
  <p>At best, my former finance jobs gave me the slim satisfaction of having put together a thick powerpoint presentation filled with upward-sloping KPI curves. And the best possible future scenario I could think of then was me landing a CFO or CEO position at some listed company after dedicating a decade of my life into 100-hour work weeks at some investment bank, private equity firm, or management consultancy, having spent my days around people who cared more about money and prestige than trying to do something meaningful with their lives. And that scared me.</p>
  <p>Today, there’s no likely future scenario that scares me at all. And that alone gives me certainty that my crooked journey over the past three years has had a purpose.</p>
  <p>Although it’s a bit sad that I invested so much time and energy into a career path that turned out to be a dead end, I know I was really fortunate to realize that already at age 23 — and to have the luxury to be able to make a halt, look around, and pursue something I felt more passionately about.</p>
  <p>So good or bad, I guess it was the sum of all my experiences that took me to where I am today. A place where I somehow managed to find something few people ever do — a job that I love. And for that I’m more thankful than words can say.</p>",
  postable: role,
  user: user
)

post.save!
puts "#{post.title} created"

post = Post.new(
  title: "How I built my first React Native app for my first freelance client",
  blurb: "I recently launched my first native mobile app built with React Native. As it happens, it was also the first app I’ve built for a client as a freelancing developer. Here’s the bumpy ride, all the way from react-native init to app store release.",
  rich_content: "<h2>Why freelance?</h2>
  <p>Last May, I stumbled upon this exciting freelance opportunity. At the time, I was working as a full stack web developer for a Stockholm-based startup. It was my first dev job, and I’d landed it barely a year earlier (which you can read more about in this article).</p>
  <p>Summer was approaching rapidly, and the otherwise fairly high work pace was getting slower by the day. During one week, when the product team’s rotating tech support duty was mine, I was feeling a bit bored and frustrated with some of the bugs I was assigned to.</p>
  <p>It was in this gloomy mood that my dad reached out to me about his intentions to build a mobile app for his company’s customers. <p>Although he knew my job kept me busy and didn’t expect a full-time commitment, he asked if I wanted to be a part of the project in a more advisory type of role. Somewhat intellectually starved I said yes. Although it wasn’t my original intention, this advisory role eventually resulted in me taking on the development of the app as lead developer.</p>
  <p>Now, you might be asking yourself — why would one even attempt to get into the mobile app space after just shy of a year of professional web development experience? Wouldn’t it make more sense to keep specializing in that area while adding some years of experience to your resume?</p>
  <p>Absolutely it would. But, being the hopeless generalist that I am, I committed several years ago to making career decisions not based on career strategy, but rather on what makes me happy. In other words: my resume is already a trainwreck that could probably not get more scattered and incoherent.</p>
  <p>Of course, career strategy and work life happiness aren’t necessarily mutually exclusive. In fact, I was very happy with my former job and employer. I just happened to find another project that I felt even more passionately about.</p>
  <p>So what was it that made this particular project that exciting? Even more exciting than working on a hyper-growth product used by thousands of companies in a team with some of the most awesome people I’ve met? In three words: freedom, challenge and self-development.</p>
  <p>Why React Native?</p>
  <p>When I joined the project, my client had already received a few offers from some local digital agencies. Before I was even considering building the app on my own, I was asked to review them as a friendly favor. And I was just amazed by the low quality of the propositions.</p>
  <p> One of them had sent some design sketches that were really sloppy and not at all in line with the brand presented on the client’s website. Another agency proposed a ridiculous price with some even more ridiculous recurring fees. And a third didn’t even seem to have done any pitch prep work whatsoever. And they all shared one thing: that they wanted to build the app with the hybrid framework Cordova.</p>
  <p>And that wasn’t all. Although Cordova is completely free and open-source, one of them had even tried to hide the fact that this was the technology they used. Instead, they promoted their “own” internal mobile app platform — seemingly just some thin layer around Cordova — to justify a lock-in giving them exclusive app maintenance rights and making an eventual future handover complicated and expensive. Low-quality propositions.</p>
  <p>Now, I don’t hold any grudge against hybrid frameworks. I use apps built with them all the time. Gmail, Slack, Atom and Figma to name a few. But at the time, I’d been hearing about React Native for quite some time. How it allowed building cross-platform mobile apps using Javascript — that weren’t hybrid!</p>
  <p>What now? Had iOS and Android somehow stealthily been sneaking in support for writing native apps in Javascript? Because last I checked, iOS apps had to be built with Objective-C or Swift, and Android apps with Java or Kotlin.</p>

  <p>Of course not. So how could React Native apps be called actual native apps? Short answer: APIs. It took me longer to get this than I dare to admit, but the way React Native apps can run natively on your smart phone is not by running Javascript, and not by compiling your Javascript to native code, but by making requests to APIs that render native components in Objective-C on iPhone and in Java on Android.</p>
  <p>If you want to know more about React Native’s fundamentals I’d really recommend this super-pedagogical Quora answer, this React <p>Conf talk by the amazing Parashuram N and the original unveiling of RN to the world.</p>
  <p>Although I didn’t know this secret behind React Native’s magic trick at the time, I knew that it was in fact running native code — which was also my main argument for not going with any of the Cordova solutions suggested by the agencies. I reckoned that if they wanted a mobile app, they should build a native app. And if they wanted an HTML/CSS/JS app, their money would be better spent simply improving the mobile experience of their web app.</p>
  <p>When I shared this with the client, they asked me if I knew someone who could build such an app. I told them I didn’t. They asked me if I could do it. I told them I couldn’t. Still, the seed had been planted, and I just couldn’t keep myself from dabbling around with React Native based on their app specs.</p>
    <p>And before I knew it, a foundation for their app was already in place. So somehow, just a few weeks after that conversation we’d agreed that I would build the app for them.</p>
  <p>App specs</p>
  <p>Before we dive into the more techy details, a brief description of what type of app we’re dealing with here seems to be in place.
  <p>The client is a Stockholm-based company that operates coworking spaces. In other words, workspace hotels for companies. They currently have some 10 active spaces where about 400 companies with about 1,400 employees rent office space. These tenants are the target group of the app.</p>

  <p>The lounge at one of the client’s coworking spaces</p>
  <p>After some discussions back and forth with the project manager, a few app specs crystallized:</p>
  <p>Login/logout authentication and password resetting. Note: all user accounts are created by admins, so sign-ups are not possible in the app. Hence, if you decide to download the app, you will basically not be able to do anything with it 😞</p>
    <p>Viewing and editing of a user profile, including name, email, password and avatar image.</p>
  <p>Push notifications.</p>
  <p>A Home destination where users can read about recent events around the company in general and their home coworking space in particular.</p>
  <p>A Community destination where users can browse through the different coworking spaces, get in touch with each space’s site manager and see other resident companies.</p>
  <p>A Conference destination where users can book meeting rooms and manage their bookings.</p>
  <p>A Selection destination where users can access exclusive member discounts and offers.</p>
  <p>First build the iOS version, then add support for Android.</p>
  <p>A backend admin web app to manage the content of the RN app. Although I will focus on the frontend stuff in this text, it might be relevant to know that it was built on Ruby on Rails, Postgres and Heroku.</p>
  <p>As you can tell, it’s a pretty slim set of features. Which is exactly what you want for your first app with a new technology. If you want to know how the end result turned out (and whether the rest of this text is worth your time or not), here’s an overview of the 1.0 version:</p>

  <p>You’re still here? Great, then let’s move on.</p>
  <p>Learning from the best</p>
  <p>So imagine you’ve promised a friend to build them a house. But you have no idea how to build a house. Barely even where to start. What’s the first thing you’d do?</p>
    <p>You find yourself a carpenter.</p>
  <p>So that’s what I tried to do. And did I hit the jackpot. After just a few hours of researching the React Native learning resources out there, I found a 13-part video course from Harvard on Youtube (completely free). Each lecture deep-diving into its own topic for between 90–120 minutes each. So about 23 hours of high quality material in total.</p>
    <p>Immediately, I started consuming the video lectures as if possessed. And after just a few weeks of coding along during nights and weekends, I’d finished the course and set myself up with a pretty decent app base.</p>
  <p>In hindsight it’s without a doubt one of the best learning resources I’ve found, all categories. The packed and always relevant curriculum absolutely played a big part, but the teacher Jordan Hayashi was definitely the big win here. I’d describe his teaching style as fast, hyper-practical and straight to the point. No time wasted on bad jokes and distracting personal anecdotes. Unlike yours truly…</p>
  <p>Anyhow, somehow each lecture always seemed to compress an amount of information that would take most other teachers at least twice the time. In other words, a style very similar to Harvard CS50 teacher David J Malan.</p>
  <p>So if you’re looking for a starting point for your first RN app, this would be my #1 recommendation. One caveat though: in the course, Jordan uses the Expo toolchain, which is a great tool for most simple apps as it does a lot of the nitty gritty work for you. But if you, like me, are building the foundation for what might become a quite big and complex app sooner rather than later, where you value total configuration freedom, react-native init might be a more appropriate solution.</p>
  <p>The second best learning resource I had access to was actually my colleagues. By a lucky coincidence, we were just getting started with a React Native project at the company where I worked until just a few months ago. Although I wasn’t on the project myself, I learned a ton from just talking to the guys on the project and reviewing their PRs.</p>
  <p>Now that we’ve got all the contextual things sorted out, we can finally move on to the more technical stuff!🤖</p>
  <p>Dev environment</p>
  <p>After getting the app foundation set up using react-native init, one of the first challenges was to get comfortable with a new development environment.</p>
  <p>If you’re coming from the average web development environment, many things will stay the same. For me that included keeping Atom as my text editor, iTerm as my terminal and GitUp as my git interface (to the groaning Vim users out there: haters gonna hate). But other than that React Native required a few additions to my usual work flow.</p>
  <p>Getting cozy with the iOS simulator, for instance. While running “react-native run-ios” from your command line sounds deceptively simple, in the beginning it was rarely enough to get the simulator up and running. As new npm packages were added to the project almost daily (and later on also quite a few native CocoaPod modules), I had to get more familiar then I’d preferred with the painful ritual of clearing watchman, removing the haste cache, deleting the node_modules directory, reinstalling all the node modules again and resetting the Metro Bundler cache. The following command will do all this for you:</p>
    <p>watchman watch-del-all && rm -rf tmp/haste-map-react-native-packager && rm -rf node_modules && yarn && npm start --reset-cache
  9 times out of 10 that dance would be enough to get the simulator going again. And sometimes it required delving deep into various GitHub issues and Stackoverflow threads.</p>
  <p>The root of some other pains was that I for a long time thought that opening Xcode was required to achieve certain things. And believe me, you want to spend as little time as possible in that horror house of an IDE (more on that later).</p>
  <p>Like telling the simulator to run a certain iPhone version. If someone would have told me that the line below did exactly that for me, straight from the command line, I would probably have been a slightly happier person during those first months.</p>
  <p>react-native run-ios --simulator=’iPhone X’</p>
  <p>Another example would be the 3 stage rocket required when going from Release mode (for deploying the app to App Store or some CI destination like Visual Studio App Center or Firebase) to Debug mode (dev mode). Perhaps obvious to many, these changes could also be made directly from your text editor of choice. Anyhow, just two small things that had a surprisingly big impact on my work flow when working in dev mode.</p>
  <p>Lastly, it took some time to get used to constantly having to jump between different macOS apps to do things I would normally do in Chrome when working with web apps.</p>
    <p>To inspect my Javascript console logs and HTML/CSS output for style debugging, I turned to React Native Debugger. And to keep track of app state, actions dispatched and API requests/responses I used Reactotron. While I found both these apps immensely useful, I couldn’t help but miss my corresponding Ember.js workflow, where I could do all of these things in the same place that my app was actually running (with the help of the Ember Inspector Chrome plugin).</p>
    <p>Navigation</p>
  <p>Navigation/routing has apparently been a pretty hard problem to solve in React Native. Four years in, there’s plenty of different solutions out there, but still no obvious consensus on which one is the best. I decided to go with react-navigation, but mostly due to that being the solution used in both the Harvard course and in the project my colleagues worked on.</p>
  <p>However, if I would have taken the time to do some proper research, I might have made the following findings:</p>
    <p>The react-navigation repo has ~15 000 stars and 86 open issues. It’s fully Javascript-based and also has the most thorough documentation of all the navigation solutions I’ve seen.</p>
  <p>The react-native-navigation repo has ~10 000 stars and 162 open issues. Also worth taking into account is that it is not fully Javascript-based (i.e. requires editing native files).</p>
  <p>The react-router repo has ~35 000 stars and 36 open issues. However, these figures are not really comparable to the others since the repo includes routing packages for React.js as well.</p>
  <p>The native-navigation repo has ~3 000 stars and 55 open issues. However, the fact that this solution is still in beta, not fully Javascript-based and maintained by Airbnb should be seriously considered before investing a lot of time into it (Airbnb decided to sunset React Native).</p>
  <p>Considering the above, I would probably still have chosen react-navigation, since I would not have had the time to test them all, as for instance Kurtis Kemple at MLS did. Lastly, as he explains in his talk, picking a navigation solution is not really a question about which one is the best as much as a question about which one best suits your particular needs.</p>
  <p>After working with react-navigation for about 9 months, I have to say I don’t really have much to complain about. Seeing as my main point of reference was the router.js library used in Ember.js, it was an entirely new routing experience.</p>
  <p>Getting to know react-navigation’s three main types of navigators was the easy part (StackNavigator, TabNavigator and DrawerNavigator). The hard part was understanding how the navigators should be nested with one another to get the intended user flow.</p>
  <p>For instance, that my DrawerNavigator was supposed to be at the navigation root (one step above my main TabNavigation) was not at all obvious to me. If this is hard to picture, here’s the DrawerNavigator in action (much smoother in reality than in the gif):</p>

  <p>react-navigation’s DrawerNavigator in action</p>
  <p>As you can see, I wanted a sidebar that could be opened with a swipe of the thumb from anywhere in the app.</p>
  <p>Seeing as a sidebar is more of a secondary component in an app compared to the main bottom tab bar, my first intuition here was that the DrawerNavigator should be placed underneath or in parallel with the central BottomTabNavigator position in the route tree (see image below).</p>
  <p>However, after banging my head against the wall trying to force-squeeze the sidebar in there, I found that the react-navigation way would actually be to put the DrawerNavigator one step above the BottomTabNavigator, i.e. at the root of the route tree. Hopefully this heads up will save someone out there the fair amount of hours I spent in the docs and GitHub issue threads to get to this insight.</p>
  <p>Here’s another illustration with the DrawerNavigator at the root:</p>

  <p>The app’s 1.0 version’s final navigation tree</p>
  <p>One question you might ask yourself is: why both a StackNavigator and a TabNavigator for both Community and Conference? Why not just skip the stack layer and go straight to the tabs?</p>
  <p>Well, because I wanted a header on top of each of the two TabNavigators. These guys:</p>

  <p>Again, my intuition and the react-navigation way of doing things diverged. Seeing as the createMaterialTopTabNavigator must be a pretty standard navigation component, I figured it should have a simple built-in header config in it’s navigationOptions. Turns out it doesn’t, which is why I was forced to use a StackNavigator in between, thus adding another layer of complexity to the infrastructure for a purely superficial purpose.</p>
  <p>This flaw in react-navigation also caused me some more serious problems. Namely, getting the header images to collapse/disappear when a user scrolls down in any of the two FlatLists. Since the headers of Home and Selection are rendered within the same StackNavigator as their lists, here this could easily be solved by simply letting the header scroll up together with the rest of the list.</p>
  <p>But with Community and Conference — since the headers are rendered in StackNavigators, and the lists in TabNavigators one step beneath them in the tree — I found no way to apply the same solution to them. Hence I’m left with this painful asymmetry:</p>

  <p>Scrolling in TabNavigator vs StackNavigator</p>
  <p>Now this may not appear as an issue on the iPhone X running in the simulator above, but on smaller screens that header might take up some 20% of valuable screen area. If anyone has an idea how to get around this, I’m all ears!</p>
  <p>The same TabNavigator issue also caused a problem in the Community destination. As demonstrated below, I wanted to put another TabNavigator inside the Coworking Spaces tab, to get the three top tabs Info, Members and Contact visible on the right side of the gif.</p>
  <p>However, since TabNavigator made it really hard to put an image slideshow on top of it without adding a ton of complexity causing all sorts of other navigation headaches (mainly related to navigation params), I had to resort to a JS package called react-native-swiper to deal with those three tabs instead. And I would actually have been totally fine with that, if it wasn’t for the quite unsmooth slide animations of the tab underlines. Anyway, I deemed it a fair price to avoid the alternative navigation headaches.</p>

  <p>react-navigation TabNavigator vs react-native-swiper (notice the different animations of the golden underscore when swiping)
  <p>To sum up my experience with navigation in React Native:</p>
  <p>There are plenty of well-documented solutions out there, of which I found react-navigation to best suit my needs.</p>
  <p>React-navigation made it really easy to get started without knowing much about how purely native navigation works.</p>
  <p>React-navigation has a few non-intuitive dimensions (for a web developer), but none that can’t be conquered with some clunky work-arounds.</p>
  <p>Splash screen</p>
  <p>When running a new react-native init app on your simulator, reloading the app over and over again every time you make a change, you will quickly become aware of the need for a pretty launch screen (also called splash screen).</p>
  <p>And since there’s already a really great guide for how to achieve this, I will not waste any of our time repeating the author’s words. I only ran into one problem here that the guide did not cover:</p>

  <p> It’s pretty much an iOS edge case, but still something that will likely bother the few users exposed to it. I discovered it first when I was working someplace where I could not access the wifi, and thus was sharing the 4G from my phone with my laptop. As iPhone users will know, the status bar on the device will turn blue and get an increased height while internet sharing. And it totally broke my splash screen image when running on device. The same problem appeared when in-call.</p>
    <p> So after a while of digging around in the react-native-splash-screen repo and not finding anything helpful, I decided to work around the problem by hiding the status bar completely while the splash screen was visible.</p>
    <p> It’s super easy, all you need to do is add a UIStatusBarHidden key with the boolean value of true to your info.plist file, and then set the React Native StatusBar component’s “hidden” prop to false after SplashScreen.hide() has been called.</p>
    <p>State management</p>
    <p>“Convention over configuration” is a mantra I feel like I’ve been hearing every single day for the past two years. Not least at my former employer. Not very surprisingly, since we used Ruby on Rails on the server side and Ember.js on the client side — two frameworks basically synonymous with that saying. I thought I knew what those words meant, but the process of learning how to handle state in React Native gave them a whole new meaning.</p>
  <p>Although I’d played around with the “configuration over convention” React library for the web in a few very simple demo apps, I’d never built anything big enough to justify bringing in a state container like Redux or MobX. Instead, most of my JS state management experience came from Ember Data (Ember’s built-in state management and data persistence library).</p>
  <p>Since Redux was the go-to solution I’d heard people talk about for years on podcasts, blogs and in videos (including Jordan in the RN Youtube course), I never really considered any of it’s contenders. I just wanted to set up the best possible state management infrastructure with the least possible effort.</p>
  <p>In Ember you are basically given 90% of this infrastructure for free. Little did I know that I would have to accept the opposite ratio in my current project. Not only won’t React provide you with anything useful to handle global state, but Redux — the most popular solution on the market — is so light-weight that you’ll basically have to pull 90% of the weight yourself the get an equal state solution.</p>
  <p>Now that the slightly younger me got that out of his system, the hard part was actually just getting a hang of this new functional and immutable work flow. Once I’d accepted the surprising amount of new complexity needed to simply fetch or post some data from/to my server, it all boiled down to 7 pretty straightforward steps:</p>
  <p>Add the three SOME_ACTION_REQUEST, SOME_ACTION_FAILED, SOME_ACTION_SUCCEEDED to your constants file.</p>
  <p>Add the action creator to your actions file.</p>
  <p>Handle the three actions in the appropriate reducer, and if necessary add a new reducer and include that reducer in your root reducer.</p>
  <p>Add workers to the appropriate saga, and if necessary add a new saga and include that saga in your root saga (I’m using redux-saga for async actions).</p>
  <p>Add function to handle any eventual API request.</p>
  <p>Map the necessary state to props in the appropriate React components.</p>
  <p>Dispatch the SOME_ACTION_REQUEST action from the appropriate React components.</p>
  <p>Redux and redux-saga surely have so much more to offer, but as far as I’m currently concerned, the above 7 steps are essentially what Redux is for me.</p>
  <p>Sessions</p>
  <p>So we’ve got our React Native dev environment set up, a navigation tree mapped out, and a state management infrastructure in place. What would be a good next step? Well, for me the natural choice was user authentication, thus getting into sessions.
  <p>If you’re coming to React Native from a web background, dealing with sessions will not require much brain compute power. If you’re in any way familiar with the concept of LocalStorage, you simply need to replace it with AsyncStorage: an abstraction layer that will let you persist key-value pairs across sessions. In other words perfect for storing an authentication token generated from your server when a user logs in.</p>
  <p>Lists</p>
  <p>Overall, my impression is that lists is a fairly well-solved problem in React Native. Basically, you have three options at hand: <p>If you’re dealing with a static list whose data doesn’t change, ScrollView will likely suffice. If you’re dealing with a list that’s bigger and dynamic, FlatList is what you want. And if you want a bigger and dynamic list that’s also divided into different sections, SectionList is your answer.</p>
  <p>I exclusively used FlatList for my dynamic lists. And while I intuitively like it and its massive set of configuration options, I experienced a few quite painful situations. Below I’ll go through them one by one.</p>
  <p>Pull to refresh</p>
  <p>FlatList has a prop called refreshControl, to which you can pass a component you want to use for refreshing the list content, triggered when the user pulls downward from the top of the list. Lucky for us, React Native has a component just for that purpose — RefreshControl . All very intuitive and easy to set up.</p>

  <p>RefreshControl in action</p>
  <p>However, I ran into a weird situation, where the refreshControl prop and/or the RefreshControl component seemed to be the ones to blame. Some background:</p>
  <p>So in my lists I want users to be able to a) scroll up at the top to refresh the list, triggering a function I named handleRefresh() and b) scroll down to load more items into the list, aka. “infinite scrolling” (more on that further down). Pretty standard stuff.</p>
  <p>However, after a while I started getting these situations where the refresh spinner would just freeze and keep spinning forever, not displaying the new items fetched from the server. After quite some time of researching, I found the reason for my problem in this GitHub issue response.</p>
  <p>The problem was that both the refreshControl and onEndReached (for infinite scrolling) props were making use of the same boolean prop: “fetching”. And for some weird reason, when this fetching prop would change from false to true and then back to true again, within a time interval of less than 250ms, RefreshControl would break and the loading spinner freeze.</p>
  <p>So to try this theory out, I tried adding a setTimeout(), setting a minimum time interval of 350ms between changing the value of the fetching boolean. And it fixed the problem. But since using setTimeout felt a bit too hacky for my taste, I ultimately landed on the solution of simply using two different props for the handleRefresh() and handleLoadMore() functions: “refreshing” and “loadingMore”. Not sure how common this problem is, but hopefully my workaround can save someone some time and frustration.
  <p>Note that the official documentation recommends using onRefresh and refreshing instead of the refreshControl prop. The reason I went with refreshControl was that I didn’t see any other way to be able to customize the style of the spinner.</p>
  <p>Infinity scrolling</p>
  <p>As mentioned above, I also wanted to give my users the feeling as if the list was completely seamless. Meaning not having to press any “Load more” button at the bottom to load more items, and not having to get some blocking loading spinner or loading placeholders covering also the already loaded list item’s while fetching more items.

  <p>Infinity scrolling with FlatList (notice how the threshold value of 2 triggers onEndReached when we’re 2 screen height’s worth of list items from the bottom)</p>
  <p>For this purpose, onEndReached had basically everything I needed. I had two problems while implementing it though.
  The first was wrapping my head around the onEndReachedThreshold prop, which will tell your FlatList when to trigger the function passed to onEndReached. After some trial and error, my explanation would be this:</p>
  <p>If you have 100 items loaded into your list and the screen fits 10 items at a time, a onEndReachedThreshold value of 1 would mean that the onEndReached function will be called when you scroll past the 90th item in your list. If the value is 2, the function will be called already when you’re within 2 screen heights from the end, i.e. at the 80th item, and so on.</p>
  <p>The second problem I ran into with infinite scrolling was what I can only assume is a FlatList bug. Namely, that every single time I scrolled down passed the threshold, my handleLoadMore() function passed to the onEndReached prop would be called repeatedly, often more than 10 times in a row.</p>
  <p>Coincidentally, once again the solution could be found in making use of the loadingMore prop, adding an if statement in the handleLoadMore() function making sure the fetch action was only dispatched if !loadingMore. Naturally, you’d also want to check in that same if statement that you’re not on the last page in your server pagination.</p>
  <p>Loading placeholders</p>
  <p>Something that wouldn’t necessarily have any effect on the user experience, but most definitely would have made me happier as a developer, would be the presence of a ListLoadingComponent prop in FlatList, just like there’s a ListHeaderComponent, a ListEmptyComponent and a ListFooterComponent.</p>
  <p>Since there is not, I was forced to rely on clumsy if statements to handle the placeholder rendering in plenty of render() functions.</p>
  <p>Scroll to top</p>
  <p>The final list topic I’d like to touch upon is scrolling to the top of the list with the press of a button. In my app, I currently have these buttons in the headers, but another common location for them is in the bottom tab buttons.</p>
  <p>To achieve this I used the FlatList scrollToOffset method, which is simple enough to understand from the docs. However, a crucial detail which I could not find in the docs was that you also need to make use of the ref prop in the FlatList component, like so:
  <p><FlatList<br>
    ref={(ref) => { this.newsListRef = ref; }}<br>
    ...<br>
  /></p>
  <p> What this does is basically giving your FlatList an identifier, so that it can be called from a function elsewhere. So in my case it allowed me to call the ScrollToOffset function from my handleScrollToTop() function, and for instance pass it as a parameter to my react-navigation navigation object, allowing it to be called from any route the param is passed to.</p>
    <p>componentDidMount() { <br>
    this.props.navigation.setParams({<br>
      scrollToTop: this.handleScrollToTop, <br>
    }); <br>
  } <br>
  handleScrollToTop = () => { <br>
    this.newsListRef.ScrollToOffset({ <br>
      x: 0, y: 0, animated: true, <br>
    }); <br>
  }; </p>
  <p> Note that after upgrading to react-navigation 3, the ref thingy was no longer needed since the createBottomTabNavigator buttons will now handle scroll to top by default.</p>
  <p>Images</p>
  <p>Images, I’ve come to learn, runs the biggest risk of becoming the one thing that makes your mobile app suck. Naturally, efficient image handling is important also on the web, but since phones will run on 4G (or 3G, god forbid) to a much larger extent, a lower average download speed must be assumed, which in turn could make your app seem slow.</p>
  <p>Images will also likely take up a bigger share of the phone screen compared to the computer screen, why they should also be given a higher priority from a cosmetic perspective. So although it might not be the most fun part of it all, investing some time into it will probably be worth it.</p>
  <p>My app turned out to be quite heavy on image content. It totals 7 lists with list items with image props that are not only displayed in the actual list items, but also on each item’s own “details” (the screen a user get’s redirected to when pressing a list item).</p>
  <p>Uploading images</p>
  <p>On the user account edit screen, the app would also allow users to upload an avatar image. For this I used the react-native-image-picker library, along with Cloudinary and Carrierwave on my Rails backend.</p>
  <p>At first I put all the uploading logic on the client side, using Cloudinary’s Node API and the react-native-fetch-blob module. But after a while, since I wanted a bit more flexibility in my uploading logic and didn’t want to put too much complex logic on the <p>React Native side, I moved it all to the Rails backend.</p>
  <p>However, I ran into some troubles while trying to post the images to my server using react-native-fetch-blob. Hence, the additional complexity and the at the time very uncertain maintenance status of the repo made me choose the built-in JS FormData API instead. Note however that the no longer maintained react-native-fetch-blob repo has since been moved to rn-fetch-blob, where it is being actively maintained.</p>
  <p>Displaying images</p>
  <p>Truth is, the standard React Native Image tag, with its style, source and resizeMode props will take you a long way. If you don’t care about caching, displaying multiple images or some other fancy special case you probably won’t need to bring in other dependencies.</p>
    <p>However, I found two cases where I actually found it worth the effort of adding to my list of dependencies. The first was the circular avatar-formatted images shown in some of the list cards and the user profile screens. For that, the react-native-elements Avatar came in handy.</p>

  <p>Forked react-native-slideshow in action</p>
  <p>However, this component does nothing that you can’t achieve yourself with some extra styling to the default Image component. So unless you’ve already brought in the library for some other purposes, I wouldn’t recommend adding this dependency for the single purpose of avatar-formatting.</p>
  <p>The other case where I decided to outsource was when displaying multiple images in a slideshow (see gif). For this I used the react-native-slideshow library, which did exactly what I wanted.</p>
  <p> But beware, since it’s poorly maintained I’d strongly recommend forking it and trimming the code a bit rather than use as is from your node_modules.</p>
  <p>Loading placeholders</p>
  <p>So with 7 infinite scroll lists displaying images, the user is bound to do some waiting while all this data is being fetched from the server. As we all know, waiting is probably the single most frustrating experience in modern technology. So naturally we want to make it as endurable as possible.</p>
  <p>Enter placeholders.</p>
  <p>I’m not really sure why, but any time I wait for some content to load, I get a billion times more frustrated if all I get is a loading spinner (or even worse — nothing at all), than if I see some shiny, dynamic placeholders á Facebook news feed style. So that’s what I was going for.</p>
  <p>Thankfully, I wasn’t the first one to have that idea in React Native. It didn’t take much research before I could confidently settle on two libraries: react-native-loading-placeholder (for the actual placeholders) and react-native-linear-gradient (for the shiny animations). I was really happy with the result, even if I may have taken it a bit too far with the one to the right…</p>

  <p>Loading placeholders with react-native-loading-placeholder and react-native-linear-gradient</p>
  <p>Caching</p>
  <p>Yes, caching is a thing also in the native world. Strangely enough though, there’s still no built-in support for it in the default RN Image tag. Instead, you’ll have use the CachedImage tag from this great lib: react-native-cached-image.</p>
  <p>Basically, all you need to do is install the npm package and exchange all the default Image tags you want to cache with CachedImage. You can then check your Reactotron timeline to confirm that the images are actually being stored.</p>
    <p>Compared to the minimal effort required to set up image caching, the payoff is huge. Seeing my Cloudinary bandwidth drop from a hefty 95% of the free monthly quota to about 4% was sooo satisfying.</p>
  <p> Pro tip: add the prop activityIndicatorProps={{ animating: false }} and roll your own loading placeholder rather than the standard loading spinner while loading images.</p>
  <p>Time</p>
  <p>Time picker</p>
  <p>React Native actually has a cross-platform Picker component. However, due to it’s very configurable nature (and my impatience), I looked around for a JS library that had already done some of the work for me. Luckily, I found react-native-picker-select, which emulates the native <select> interfaces for iOS and Android for my almost exactly my purposes.</p>
  <p>Since it’s basically just a single Javascript file using built-in React Native components (and some lodash, which was already a dependency of mine), I decided to simply steal the code — with some small adjustments— and put it in my own picker component. From then on, I use it not only for my time pickers for all input lists except for the date picker.</p>
  <p>Date picker</p>
  <p>I decided to go with Wix’s react-native-calendars library for a few reasons:</p>
  <p> I don’t like the native iOS date picker, since it gives a poor overview of month and year. Maybe I’ve just been broken by web development, but that’s my opinion.</p>
  <p>React Native currently requires two separate implementations for the two platforms; DatePickerIOS and DatePickerAndroid, which would have required plenty of code duplication doing the same thing.</p>
  <p>I wanted the picker to have more personality and reflect the client company’s brand rather than Apple’s and Google’s.
  Hate it or love it, this was the result:</p>

  <p>react-native-calendars and react-native-picker-select in action</p>
  <p>Time zones</p>
  <p>Time zones. So simple in theory, yet so hard in reality.</p>
  <p>Towards the end of the project, I was integrating the app’s backend with a third-party SaaS that the client use for their room bookings. I’d just had the pleasure of getting intimate with the good old SOAP protocol to set up the necessary API requests for the Conference section of the app. And when I finally had all the pieces in place, I started noticing some strange time behaviors on the React Native side.</p>
  <p>The client company had made it explicit that they didn’t want users to be able to make new bookings on today’s date after 5pm that day, for reasons. But due to the Javascript Date object’s strict UTC time zone default, generating this max value for the time picker proved to be pretty tricky. In fact, so tricky that the logic bloated my component with too much complexity for my taste. <p>Please let there be a library for this, I thought to myself.</p>
  <p>My prayers were answered by moment-js, which not only was totally compatible with React Native, but also had a specific time zone module that generated the perfect boolean for me in a single line:</p>
  <p>const timeSthlmAfterFive = moment().isAfter(moment.tz('17:00:00', 'HH:mm:ss', 'Europe/Stockholm'), 'second');
  <p>Custom fonts and icons</p>
  <p>Custom fonts and icons — two tiny details with huge impact on the UI and branding of your app. Coming from a web background, I expected this to be a headache in proportion with the file conversion and font-face css file assembly dance I was used to.</p>
  <p>But the work of other people before me made this a lot more painless than I’d expected. Following this tutorial, it took me about 10 minutes to import the client company’s custom fonts. And the vast icon library of react-native-vector-icons, together with some custom imports, has so far provided me with all I need in terms of icons.</p>
  <p>Continuous integration, deployment and monitoring</p>
  <p>Moving on to CI/CD — the livelihood of devops people, and the #1 configuration nightmare of all lone-ranging developers looking to make a quick buck.</p>
  <p>Since I was (and still am) the only one working on this app, it might seem a bit overkill for some. Since there’s no code collaboration, all new deployments will come from the same computer, and I could just as easily build and test the app locally before pushing to the GitHub repo and submitting a new release to the app stores. However, for a few simple reasons I still considered a CI solution necessary:</p>
  <p>The client company is about to establish an in-house team of developers. And when they do, they’ll want the infrastructure to make it as easy as possible to add new people to the team.</p>
    <p>Although running your tests locally only takes a single line on the command line, it’s always desirable to automate everything that can be automated.</p>
  <p>So I was determined to implement a CI solution. But up until this point, I had assumed that this would be isolated to building and testing, and that I would have to find separate solutions for e.g. error reporting, analytics and push notifications. Not to mention continuous deployments, which didn’t even seem to exists in the world of native.</p>
  <p>And then I found Visual Studio App Center. This Chain React 2017 talk by Parashuram N (again) completely blew my mind. What he presented seemed to include all the different devops services I’d considered adding one by one, in one single solution: building, testing, diagnostics (error reporting), analytics, push notifications AND continuous deployment with Codepush. Not to mention distribution to the app stores and beta testers. And best of all, it would enable managing all these things for both my iOS and Android app in the same place. And the best of the best of all, it would likely be free until the app grew bigger, about a year or so later.</p>

  <p>VSAC preview borrowed from: https://blogs.msdn.microsoft.com/vsappcenter/introducing-visual-studio-app-center/
  “This is too good to be true”, I thought to myself with teary eyes, panting from excitement. It was just so beautiful. So seamless. So developer-friendly (API-first). And yet with such a user-friendly UI, to the extent that also non-technical employees at my client could make sense of it (some of it).</p>
  <p>How could all this be possible, you ask? Well, turns out Microsoft has been on a shopping spree lately. To assemble the goodie bag that VSAC is, they acquired a bunch of existing independent solutions like Codepush (continuous RN deployments) and HockeyApp (test distribution and crash reporting), as well as built and extended existing Microsoft products. The famous “developers, developers, developers, developers” ethos signed Steve Balmer really seems to run truer than ever in the company’s bloodstream.</p>

  <p>Steve Ballmer ❤️</p>
  <p>So, had I heard enough to make an informed bet on this fairly new technology, discarding competing services like Fastlane, BuddyBuild and Firebase? Well, if it was truly as good as Parashuram claimed, it would save me weeks of installations and configurations, and probably countless hours of future maintenance of all the scattered services required to put together a similar result. Either way, it was definitely worth a shot.</p>
  <p>And about a week later the app was all set up with all of the VSAC features. Except for a few child diseases, the docs together with the support chat supplied me with all the answers I needed.</p>
  <p>One such problem was the fact that they did not yet support integrating with Apple Developer accounts using two-factor authentication (which Apple started enforcing just in time for me to get my account set up…). This was incredibly frustrating to me at the time, but just a few weeks after I’d reported it, they added official support for it.</p>
  <p>If you find my praise of VSAC a bit one-sided, and would like to hear the opinion of someone with a big app perspective, I’d recommend this more skeptical CI/CD review.</p>
  <p>Adding support for Android</p>
  <p>With all the iOS groundwork in place, I found adding support for Android very painless. After setting up the Android Studio dev environment and getting the app running on an Android emulator, most of the issues could be solved with the React Native Platform module. For platform-specific styling, it offers the Platform.select() method. And for all other platform-specific code Platform.OS will do the trick.</p>
  <p>Also, getting the app submitted and approved on the Google Play Store was SO much easier than for App Store. Why?</p>
  <p>Because Apple</p>
  <p>Evidently, approaching React Native as a web developer is bound to cause a few headaches. But for me, the worst headache by far was the development process imposed by Apple. I honestly can’t recall ever having experienced that many bottlenecks and schedule postponements caused by one single source. Technical project or otherwise.</p>

  <p>TL;DR</p>
  <p> Mainly, I’d say the inexplicably high degree of bureaucracy is to blame. If there’s one thing you can count on when developing your first iOS app, it’s that you’ll make a ton of new friends along the way.</p>
  <p>The guys and gals at the Apple Support, for instance. You might have to convince them that the company behind your app actually exists. You might also make a few friends at Dun & Bradstreet, their company identification partner. And while you’re at it, you might even make some friends over at your local governmental company registry, in order to update your company address to a format that Apple supports (they don’t support companies registered on a post office box, which is a very common practice at least here in Scandinavia).</p>
  <p>And then you might get to spend even more time with the Apple Support people, since they still won’t be able to approve your Apple <p>Developer registration seeing as you’re just a consultant, and not an actual employee of your client company. The whole process might take more than a month. But who cares when you’re making new friends, right?</p>
  <p>And the fun doesn’t end there.</p>
  <p> You’ve got your Apple Developer company account all set up. You’ve finished the 1.0 version of your app. Now you’re dying to get it out into the wild.</p>
  <p>Well, you can’t just yet. First, you‘re up for some digital paperwork. You’ll have to generate a provisioning profile, an iOS certificate, an identifier, a .p12 Apple push notification certificate and the good old dSym file. And once you’ve generated, configured and uploaded all those files to the right places, you can start the actual app review process.</p>
  <p> According to themselves, 50% of all apps are approved/rejected within 24 hours, and 90% within 48 hours. But prepare for the worst, since rejection is apparently just a normal part of life as an Apple Developer.</p>
  <p> Luckily, my app only got rejected one time. It was due to “Metadata Rejected” reasons. And I would totally have been okay with that if I’d simply forgotten to fill in some required information. But seeing as the missing meta data apparently was 5 very specific questions (non of them included in the App Store Review Guidelines), it honestly just made me sad.</p>
  <p>Sad to live in a world where just two companies are gatekeeping the entire native mobile app distribution pipeline. Sad that at least one of them cares so little about the customer that they allow themselves to arbitrarily take up other people’s time, causing months of expensive app launch delays. And so so happy that the same does not apply for the web (yet).</p>
  <p>Evidently, developing my first React Native app for iOS included layers upon layers of bureaucratic screening processes. If there’s an equivalent of a dementor in the world of mobile development, this is most definitely it. It will literally suck the soul along with any eventual developer happiness right out of your body.</p>
  <p>There. Rant over. That felt good.</p>
  <p>Summary</p>
  <p>As noted earlier, this project was started in the early summer. As such, the slower summer work pace at my job made it possible to juggle the two for a few months. But eventually the Oct/Nov deadline would just be coming at me way too fast, and I would realize I’d have to make a choice whether to stay in the job or finish the app on time. After a few weeks of contemplation, I chose the latter.</p>
  <p>Although it was a really tough decision, in hindsight I think it was the right one. The freedom, challenge and self-development I was looking for were most definitely found, and then some.</p>
  <p>Regarding the freedom, the loose leash of the client has basically allowed me to work from anywhere I want, anytime I want. Which has had a positive impact on many aspects of my life. It’s enabled me to get my 8 hours of sleep more or less every night. It’s enabled me to find a more consistent workout routine. It’s enabled me to find more time for the people I care about. And working while traveling.</p>
  <p>On the negative side though, this freedom has also often made the process quite lonely. Even when working among people in cafés and coworking spaces, the absence of actual teammates to share the ups and downs with has been crystal clear.</p>
  <p> In terms of challenge and self-development, I find the project taught me in just 6–7 months what probably would have taken me at least a few years in any normal job. It’s basically made me a better developer in every area, including:</p>
  <p>That it’s opened up a door to not only one, but two new digital platforms (iOS and Android), translating to a 3x increase in the platforms of my developer tool belt.</p>
  <p>A deepened Javascript knowledge. Many concepts I took for granted in the convention-driven confines of Ember.js needed to be retaught.</p>
  <p>With little experience in plain React.js prior to this, I now feel that I have most of the puzzle pieces in place for building bigger React apps targeting the DOM. Which would mean a 2x increase in the JS frameworks/libraries of my developer tool belt.</p>
  <p>An introduction to functional programming and the immutability philosophy associated to state management with Redux.</p>
  <p>Massive devops and project management insights.</p>
  <p>Better repo investigation skills when trying to work out technologies with poor documentation.</p>
  <p>Better UI/UX design skills.</p>
  <p>Best of all, a stronger confidence that I can independently teach myself any technology I want, and find ways around any obstacles that may appear in that pursuit.</p>
  <p>Since I don’t have any experience neither from any other mobile native JS tools like Flutter or NativeScript, nor from Objective-C, Swift, Java or Kotlin, I will not attempt to make any claim whether React Native is better or worse than the competition.</p>
  <p>But what I can say is that as a web developer, React Native made the transition to mobile a very stimulating, developing and an overall smooth experience. Admittedly, the technology is young and far from perfect. But I for one would not hesitate to use it again.</p>",
  postable: skill,
  user: user
)

post.save!
puts "#{post.title} created"

user = User.new(
  first_name: "Amarachi",
  last_name: "Amaechi",
  email: "amarachi@mail.com",
  username: "amarachiamaechi",
  password: "123456"
)
user.save!
puts "#{user.first_name} created"

profile = Profile.new(
  avatar_url: "https://miro.medium.com/fit/c/176/176/2*vnK7caKA4fdmG-V31YO4Gg.jpeg",
  user: user,
  website_url: "https://medium.com/@amaechiamarachi",
  description: "From accountant to front-end developer",
  credentials: "Trust me i'm a doctor",
  years_of_experience: 6,
  city: "Awka",
  current_role: "Senior Front End Developer"
)

profile.save!
puts "#{profile.user.first_name} created"

post = Post.new(
  title: "How I Transitioned From an Accounting Student to a Front-End Developer",
  blurb: "How I landed my first Web developer job, resources, tips",
  rich_content: "<h2>My background</h2>
  <p>I am a recent graduate of Nnamdi Azikwe University, Awka, Anambra state. I studied Accounting & Finance as my major in university.</p>
  <h2>The journey</h2>
  <p>I wrote my first HTML code in September 2018 and it was super exciting to see my first “Hello World” display on the browser screen. It was my first exposure to what the web was all about. Growing up as a kid I wasn’t exposed to computers to play around with.</p>
  <h2>Let’s get down to business</h2>
  <p>My university usually has a break/holiday of about three(3) months after every session. My first 3 years were focused on learning accounting concepts and how it applies to real-life businesses.</p>
  <p>The holiday after my third year in school, I began looking for internship slots where I could intern as an accountant and get real-life experience. I applied to the Big 4 accounting firms for an internship slot. I even applied to some small audit and accounting firms, but I couldn’t secure an internship.</p>
  <p>So I got up one morning in September after a month of job hunting for an internship. I went to a firm in victoria island, Lagos where I submitted my application, this was not an accounting firm but a company that I wanted to work in their accounting section. I asked the HR “ why is it so difficult for me to secure a slot for internship” and this was her reply,</p>
  <p>“since you have been searching for a slot and you can’t find, why not pick up a skill in the tech field. The tech field can accommodate anyone willing to learn, build and grow”.</p>
  <p><strong>And that was how it began</strong></p>
  <p>I went home confused, thinking about what the tech field is all about, I thought if I knew about Microsoft office, I was in the tech field already.</p>
  <p>I picked up my laptop which was an HP Stream 11 Notebook , which I use for browsing, typing assignments and watching Korean movies lol. I made some research about the tech field and the one I felt I would be interested in.</p>
  <p>Everything was not making any sense to me. Then I remembered that I have a programmer friend of mine. I quickly reached out and booked an appointment with him.</p>
  <p>The next day, he agreed to meet and I told him that I am looking into going into the tech field but I am a bit confused because the field is wide. So he asked me some questions like: do you have an eye for design?, do you write good articles and so many more, but I didn’t fit into any question at that moment, but one thing I knew was that I wanted to bring concepts to life. I asked him how difficult it was to learn programming, He then asked also if there was someone in the tech field I admire. At that time I only knew about Ire Aderinokun because I read about her on blogs and newspapers.</p>
    <p>Then he told me to let him show me something, he went to Ire Aderinokun website, went to google console which at that time I didn’t know what it was, he clicked the element section and edited the part that ire aderinokun showed and asked me to write my name LoL. I wrote my name Amaechi Amarachi and it showed on the screen. Then Stephen said that is how simple programming is. That was how I developed an interest that eventually led to a passion for front end development and the journey began.</p>
    <p>I went home super excited about my new adventure. I started researching for resources to help me out, then I saw Github Education and many more. Every learning I did was online so I can call myself self-taught.</p>
    <p>Resources</p>
    <p>Here are some of the resources I have used in my journey.</p>
    <ol>
<li> Freecodecamp </li>
<li> JavaScript: Understanding the Weird Parts</li>
<li> The Web development Bootcamp by coltsteele</li>
<p><strong>Udemy</strong></p>
<li> CS50’s Introduction to Computer Science</li>
<p><strong>edX Team</strong></p>
<li> React @Scrimba</li>
<li> Become a professional React developer @ Scrimba</li>
<li> Data structure and algorithm</li>
<p><strong>HackerEarth</strong></p>
<li> Hackerank</li>
<p><strong>YouTube</strong></p>
<li> Traversy media</li>
<li> Freecodecamp</li>
<li> Coding Phase</li>
</ol>
<h2>How was my learning process like</h2>

<p>Ever since I made the tweet, I have gotten tons of DMs about how I transitioned and what my learning process was like.</p>
<p>As earlier stated, I wrote my first HTML code in September 2018 which was my holiday period. I started learning with youtube videos and freecodecamp.</p>
<p>Due to the Academic Staff Union of Universities (ASUU) strike that started on Monday, November 5, 2018, and ended February 8, 2019. I was supposed to resume back to school in November but couldn’t because of the strike. So this was a perfect opportunity to study more.</p>
<p>I resumed as a final year student in February 2019. The time I had during the holiday to code was no longer there because I had to focus on what was on ground, which was my forthcoming degree exams, final year projects, and defense. With that, I decided I was going to dedicate 3hours daily to learn how to code, which I did.</p>

<p>Fast Forward to November, I have taken my degree exams already and I have also defended my project which was titled: Corporate governance characteristics and cash value added: Evidence from listed deposit money bank.</p>
<p>Next phase began: <strong>JOB HUNT</strong></p>
<p>In December, I relocated back to Lagos, Nigeria from Awka, Anambra after my degree exams. Friends and relatives started asking the usual question “after school, what’s next?” Initially, my response to this was that I wanted to use the first 3 months of 2020 to study and brush up my skills so I can be prepared to apply for a front-end developer role. I spoke with my best friend about it, and he said WHY wait till 3 months, why don’t you start applying now and learn on the job. Then I summoned the courage to start applying to different vacancies I see on job boards, LinkedIn, Twitter, etc knowing fully well I didn’t have solid experience in this field.</p>
<p>Guess who couldn’t secure even an interview? Me.</p>
<p>When I noticed how things were going I went back and devised a plan B, and what was this Plan B?</p>
<p>It was looking for jobs within my network.</p>
<p>So I started reaching out to some friends and mentors telling them that I need to get some experience in the tech field.</p>
<p>After doing this for a week, I started getting various responses on available job openings.</p>
<p>Based on this I secured two interviews and got two offers.</p>

<p>Yaay I got the job<p>
<p>But before I put an end to this article I would love to say a few more words to people trying to transition into tech:</p>
<ul>
<li>Be consistent: Put in quality hours</li>
<li>Learn in public</li>
<li>Attend meetups</li>
<li>Go for events</li>
<li>Network with people when you attend events and meetups</li>
<li>Seek good mentorship, it pays off</li>
<li>Share your knowledge in any way you feel works best for you</li>
<li>Never look down on yourself</li>
<li>Don’t overtask yourself so it won’t lead to burnout.</li>
<li>Never compare yourself with someone or look down on your progress</li>
</ul>
<p>I want to say a big Thank You to some awesome people who had a great impact on my tech journey</p>",
  postable: Role.first,
  user: user
)

post.save!
puts "#{post.title} created"


user = User.new(
  first_name: "Szilard",
  last_name: "Magyar",
  email: "szilard@mail.com",
  username: "szilardmagyar",
  password: "123456"
)
user.save!
puts "#{user.first_name} created"

profile = Profile.new(
  avatar_url: "https://miro.medium.com/fit/c/176/176/0*Fh8Urw6f86MJxW8E.jpeg",
  user: user,
  website_url: "https://medium.com/@szmagyar",
  description: "I like to build",
  credentials: "Builder of buildings and other buildy stuff",
  years_of_experience: 6,
  city: "Rio de Janeiro",
  current_role: "Senior Front End Developer"
)

profile.save!
puts "#{profile.user.first_name} created"

skill = Skill.find_by(name: "Ruby")

post = Post.new(
  title: "Learning Ruby on Rails in 2016 from the best resources",
  blurb: "How I landed my first Web developer job, resources, tips",
  rich_content: "<p>First things first. <strong>The why</strong>. I’ve got started with coding in March 2015 and Rails in September <p>2015 to be able to code this app: faskyn. Prior to that I didn’t really know what coding is about. I’ve got a strong math background and used some ANSYS, Mathcad and Excel though, none of those has anything to do with web development. So I had to pick up not only the Rails but the front-end, browser, http, server, rack, command line, git, etc. things and also figure out how the business logic fits in. More than half a year passed and now the app is in a pretty good shape. At the moment with my friend we are trying to get some users, but that’s another story.</p>
  <h2>Stack</h2>
  <p>Why Rails? Based on the type of the app it was clear it would be a web app, so I needed a web framework with which I could quickly implement it. As of 2015 there were basically two reasonable choices: RoR and Node.js. I decided to go with Rails since it’s faster to get shit done, easier to pick up for newbies and there are a ton of resources available. There was/is a huge hype around Node.js but fortunately I have not fallen prey to it.</p>
  Full stack: RoR (Ruby 2.2.3, Rails 4.2.4), Heroku + addons, PostgreSQL, Puma, AWS(S3 and CloudFront), SASS, jQuery, Bootstrap, AJAX, RSpec+Capybara, Middleman. There is nothing fancy about the stack. Since I decided to stick with Heroku (works great, awesome documentation and deals with DevOps stuff almost with no config) Postgres and Puma were default choices. As I was a total beginner I preferred the convention and the well documented solutions.</p>
  <p>Gotchas along the way</p>
  <p>Most of the resources online are for total beginners. You can also find plenty for seasoned coders, but there are only a few of them that sit in the middle of the spectrum. Thanks to this it’s crucial to find the right order of reading or watching them.
  As I was learning I realized that most of the concepts are easy to pick up when are isolated, but can be pretty hard to understand them in complex context. When you have to mix 4–5 things together it’s hard to connect all the dots. That’s one of the problem with almost all the resources. They try to explain all the features and answer the questions as if they were isolated. If you are experienced this is not a problem you can quickly figure it out. But for a beginner this is not ideal at all. That’s why I like to watch end-to-end feature implementation videos in practice. Even better if I can find more resources that differ a bit, so I can compare them to each other and see why and how changing the small parts affect the whole structure. This is how people learn after all. Trying different approaches and after failing a few times, finding the way that’s working. So, awesome Ruby and amazing Rails teachers out there, please make videos/articles a bit longer and show us the implementations from 2–3 different angles.</p>
  <p>Thanks to various reasons (mainly to the quality of the resources) I found some parts easier and other ones harder to learn:
  easier to pick up: HTML, relational database, SQL queries, controllers +routing, background + cron jobs, basic Ruby, server-side rendering, bootstrap, jQuery, git</p>
  <p>harder to pick up: HTTP, client-side rendering, CSS, naming things, advanced Ruby, googling at advanced level (most important skill btw.), configuration of different tools, design principles/patterns in practice</p>
  <h2>Resources (what you are reading this for)</h2>
  <p>Hard to choose best resources. As I mentioned it’s way more important to find the right order. The list below contains the videos/books/courses I consider high quality stuff. I wish I had this list back when I got started and I hope it will serve you well. (I have tried other resources as well, but as I didn’t like them I don’t include them in this list.)</p>
  <p>Codecademy, Learn To Program, Javascirpt & jQuery, Stackoverflow, Google. These are awesome resources if you know nothing about coding and you can go through them pretty quickly. On Codecademy I recommend doing everything that is connected to HTML, CSS, JS, <p>Ruby, RoR and SQL. From day 1 when you are stuck you should go to Google and Stackoverflow. Utilizing these tools properly will make you way faster.</p>
  <p>Ruby on Rails Tutorial , Agile Web Development with Rails 4 , Rails 4 in Action , The Rails 4 Way , GoRails first 20 episodes , Become a Heroku Rails Ninja, The Odin Project, *Other Udemy Courses. The first 3 are some awesome books that go through creating a basic web app in rails. The best is if you follow with code all the 3 to carve the basic patterns, but skip the tests for now. Tests are super important and we will get back to them later, but you have a bunch of other things to learn and you should focus on those. The Rails 4 Way covers some best practices which can give you insight about of what rails capable of. Before you take the next step I’d check out the first 20 episodes of GoRails, where you can get a better understanding of a few concepts (routing, params, view and controller connection) that can seem magic in the beginning. I also bought a few Rails courses on Udemy. Unfortunately most of them suck but the Become a Heroku Rails Ninja is the best course I’ve ever purchased. For around $20 you can save countless painful hours and it introduces everything what you can use Heroku for. The Odin Project is a curated collection of resources and projects to learn web development in RoR from zero. You can find a bunch of helpful stuff there when you get stuck, so I definitely recommend it to try to search for some answers there, but I wouldn’t recommend go through the whole course as they also teach things that are not really necessary. At this stage you also should read about HTTP and the types of requests/responses (html/javascript/JSON) as well as RESTful design. By the time you are finished with this batch you coded 3 web apps with guidance. So now you should create your web app/apps (if you haven’t yet). Come up with some features you wanna implement and hit up your editor. I assure you will hit rock bottom in no time.</p>
  <p>Rails Guides, RailsCasts, GoRails, The Well Grounded Rubyist (for improving you ruby skills). So when you get stuck (gonna happen a few times) it’s sure there is an answer on the web somewhere. But this doesn’t mean you will find it. At least I didn’t. So in retrospect the most crucial skill is to find the name of your problem or at least be able to describe it. In the first point I mentioned Stackoverflow and Google. Those are still your best friends but on the top of those here are some extra ones which are only useful if you are familiar with the basic stuff. RailsGuides is somehow underrated by newbies. I remember I’ve been looking for some answers for days and it was clearly explained in the RailsGuides just I somehow couldn’t find it. RailsCasts is a bit out of date, but if you check the videos you will get a basic idea about how to do something and then can easily find further resources on the topic. Since there are over 400 RailsCasts episodes so you are sure gonna find some screencasts on your desired feature. I already mentioned GoRails in the previous point for picking up the basics, and now you can search for certain feature implementations in the later episodes. It’s like RailsCasts but with the newest stacks/trends and it only costs $9/month. It’s also time to dive deep into Ruby. By this time you are already familiar with Rails and wrote a good amount of code. If you read The Well Grounded Rubyist you will start seeing how the building parts of Rails come together and also will realize that there have been way too many times when with a bit more advanced Ruby skills you could easily have tackled your obstacles.</p>
  <p>Rails Antipatterns, Growing Rails Applications, Everyday Rails Testing with RSpec, Rails 4 Test Prescriptions, Rest of the Railscasts (~420 overall) and GoRails episodes you haven’t watched yet (~120 overall), RailsConf videos, Refactoring articles and videos, Upcase: Weekly Iteration episodes (also ~120 overall), Upcase: Intermediate Ruby on Rails, Upcase: Test-Driven Rails. Keep up with reading and watching coding videos. The books/videos I mention in this point are not for newbies. Unless you have some real experience with web development or Rails, you should only go for them when you are through (or almost through) the ones in the previous points. With these resources you can learn how to write clean and maintainable code in Rails. You will also be able to pick up some OOP principles/patterns and architecture design. Rails Antipatterns is a super useful book about the mistakes almost all the people make when they jump on the Rails train. I assure you you will also find many of these in your existing codebase. I come back from time to time to this book to check out if I follow the conventions properly. Growing Rails offers solutions for organizing code down the road to keep it modular and maintainable from controllers to CSS. At this stage you also should get started with tests. There is an endless debate in the Rails community about what testing frameworks should be used. If you know nothing about testing and there is nobody around you who can help you out if you get stuck, then I definitely recommend RSpec over Minitest. There are a ton of great resources to learn it like the 2 books above which saved my life a few times. Testing is basically picking up a whole new framework and concept, so I wouldn’t do it right from the beginning otherwise you quickly will get overwhelmed. But keep in mind it’s inevitable for your production apps and your Rails career, so you got to pick up somewhere along the way. With watching the rest of the RailsCasts and GoRails videos you will have a broader understanding what Rails is capable of. RailsConf is held once a year where all the experts come together and talk about the best practices, the future of Rails and connected topics. All the videos are uploaded to youtube and there are some gems among them. Upcase is created by thoughtbot and they target guys who wanna make the quality of their code better. In the Weekly Iteration series you can find a bunch of independent videos about design principles and refactoring. The videos usually start with an existing codebase which will be refactored by the end of the episode to a more maintainable and modular code. With the Intermediate Ruby on Rails and Test Driven Rails paths you can get your hands dirty and make some small apps which are rather about implementing some features in the proper way than refactoring existing ones.</p>
    <p>Metaprogramming Ruby 2, Practical Object Oriented Design in Ruby, Ruby Science, The Complete Guide to Rails Performance, Objects on Rails, Rubytapas, Destroy All Software, Refactoring (ruby version), Design Patterns in Ruby, Eloquent Ruby, Rebuilding Rails. In the previous points I only mentioned resources I had already finished/been deep into them. In this point I’m listing some resources I’m pretty excited about, but haven’t started yet except the Practical Object Oriented Design in Ruby. The POODR book is one of the best books I’ve ever read. It clearly explains why you have to care about well designed code and what are the most basic steps to follow the rules in ruby apps. As you can see the rest of the books are also mostly Ruby related. At the end of the day Rails is just nicely organized Rack app written in Ruby and I hope with these I will be able to really deepen my Ruby and OOP knowledge and get to the next level.</p>
  <p>DHH, Yukihiro Matsumoto, Aaron Patterson, Yehuda Katz, Tobias Lutke, Jose Valim, Obie Fernandez, Avdi Grimm, Ryan Bates, Sandi Metz, Mike Perham, Gary Bernhardt, Nate Berkopec, Chris Oliver, Richard Schneeman, Jonas Nicklas, Joe Ferris. The bonus point. These guys are considered experts in Ruby or RoR and also have meaningful contents over the web you can learn from. The list is by no means exhaustive as I’m sure I accidentally left some great minds off the list. I would suggest searching for their contents. Some of their best stuff is already listed in this post, but there are a bunch of articles/blogs/youtube videos out there that will make you a better coder.</p>
  <p><strong>What should I have done differently?</strong></p>
  <p>There is only one particular thing that bugs me. I might should have found a coding mentor. I talked to a bunch of guys and showed my code to a few of them still I feel if there had been an experienced mentor, whom I could have talked to twice a week for an hour, my learning curve would have been way shorter.</p>
  <h2>Next steps</h2>
  <p>This heavily depends on what you have to or want to do. For me it’s the following:</p>
    <p>If you are a Rails developer it’s not rare that you have to do some front-end stuff. For a new project jQuery is perfectly enough, but once the codebase gets bigger it can easily get out of control therefore I started picking up react.js and it seems to be promising. I am not sure if I really need it in the near future, but I enjoy using it.</p>
    <p>There are a few super important features that all the web apps share but I know less about like implementing analytics with Segment + Mixpanel + GA or payment processing with Stripe/Braintree. If you just need a basic setup then you will be able to integrate them quickly into your app, but these topics can get pretty tough if you need a more complex implementation.</p>
  <p>Closing thoughts</p>
  <p>With reading this you already have most of the best resources at your disposal. I highly recommend sticking with this or a similar order. If you don’t, you are gonna hit the wall way too often and you may give up. If you keep the order you still are gonna hit the wall quite often. If so, try to spend some time on figuring out the root cause. If you can’t, go back and check out all the resources on that topic one more time. If it’s still not enough, go back to the basics and start again.</p>
  <p>That’s all for now, if you have any questions just shoot it.</p>
  <p><strong>*Update March 2017:</strong></p>
  <p>Thanks to the proliferation of Rails courses on Udemy, it keeps getting more accessible to get started. I don’t know any of the beginner courses, but in general it is super easy to find some quality material on the site.</p>
  <p>I’ve also finished the resources under point 5 and they are awesome. Metaprogramming Ruby2 and Rebuilding Rails will deepen you Ruby knowledge and uncover most of the Rails magic. I wish I had read them earlier. POODR, Ruby Science, Refactoring and Design Patterns will immediately enhance your coding and design skills that can be applied in any languages.</p>
  ",
  postable: skill,
  user: user
)

post.save!
puts "#{post.title} created"

puts "---------------------"
puts "Now we create extra users and profiles"
puts "---------------------"

10.times do
  first_name = Faker::Name.unique.first_name
  last_name = Faker::Name.last_name
  user = User.new(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name}@mail.com",
    username: "#{first_name}#{last_name}",
    password: "123456"
  )
  user.save!
  puts "created user for #{first_name}"

  profile = Profile.new(
    avatar_url: Faker::Avatar.image,
    user: user,
    years_of_experience: rand(1..15),
    city: Faker::Address.city,
    current_role: Faker::Job.title,
    description: "ipsum lorem",
    credentials: "developer"
  )
  profile.save!
  puts "created profile for #{first_name}"
end

puts "---------------------"
puts "Now we create filler posts"
puts "---------------------"

puts "---------------------"
puts "...starting with frontend"
puts "---------------------"

post = Post.new(
  title: "It’s time backend developers got the ‘visual treatment’ too.",
  blurb: "Get everything you need to get going & to do things correctly.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Frontend"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Strategic Frontend II: Technology choice matters a lot.",
  blurb: "If you put two similar techs in the same basket, you are committing a big mistake.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Frontend"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "How to Become a Web3 Frontend Developer.",
  blurb: "Web3 is a decentralized web where users are not held down by governance.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Frontend"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Make a Rich Text Editor with JavaScript in 5 Minutes.",
  blurb: "I always thought that doing rich text editors was something from rocket science.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Frontend"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

puts "---------------------"
puts "...now backend"
puts "---------------------"

post = Post.new(
  title: "Is JAVA Still Relevant in 2022.",
  blurb: "With Python ever more popular, why use Java?.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Backend"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "How Long Does It Take to Build a Robust Mobile App?",
  blurb: "Mobile app development is ruling the industry worldwide, so jump in!",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Backend"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Freelancing for Backend Developers: Beginners Guide.",
  blurb: "Have you thought of Freelancing as a Backend Developer?",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Backend"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "How to Monetize Your Skills and Make Money as a Junior Backend Developer.",
  blurb: "Four ways to grow and make money as a junior backend developer.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Backend"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

puts "---------------------"
puts "Onto freelancing"
puts "---------------------"

post = Post.new(
  title: "The Shift from Office Work to Remote Work.",
  blurb: "The old normal is gone.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Freelance"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "10 Good Side Hustles for Retirees.",
  blurb: "Supplement your retirement income with these lucrative side gigs.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Freelance"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Five Things I Wish I Did Before I Started Freelance Writing.",
  blurb: "Consider these tips for an organized start to freelancing.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Freelance"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "How I Boosted Productivity by Procrastinating Even More.",
  blurb: "I was a huge procrastinator in high school. Now I have mastered the skill.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Freelance"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

puts "---------------------"
puts "...last role is fullstack"
puts "---------------------"

post = Post.new(
  title: "What is a Full-stack Developer?",
  blurb: "A Full-stack developer is a technical person who has the potential to work on both front end and back end.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Full-Stack"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "What You Actually Need To Become A Real Full Stack Developer.",
  blurb: "Fullstack DevOps is one of those titles that many recruiters and job post listings throw around.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Full-Stack"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Beginner's Guide To Full Stack Web Development.",
  blurb: "The only guide you need to get you there.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Full-Stack"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "The 2020 Roadmap To Fullstack Web Development.",
  blurb: "This post will give you an overview of technologies you may consider to learn for being a fullstack developer in 2020 and beyond.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Role.find_by(name: "Full-Stack"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

puts "---------------------"
puts "Now onto to skills, starting with Javascript"
puts "---------------------"

post = Post.new(
  title: "20 JavaScript snippets that will make you a better developer.",
  blurb: "Almost all problems we developers face every day can be solved by solving a set of lesser problems.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "Javascript"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Working With Texture In Three.js.",
  blurb: "We have written about three.js fundamentals, 3D modeling, and it is time to check out textures.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "Javascript"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Javascript string helper that I use every day.",
  blurb: "To speed up my work, I always convert common use cases to a helper function.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "Javascript"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Javascript: Basics 101 — Introduction & Sample Code.",
  blurb: "The title says it all. Learn all the basics here.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "Javascript"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Javascript: Basics 101 — Introduction & Sample Code.",
  blurb: "The title says it all. Learn all the basics here.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "Javascript"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

puts "---------------------"
puts "Next we are creating posts for Ruby"
puts "---------------------"

post = Post.new(
  title: "Deploy Backend And Frontend Apps On The Same Heroku Dyno.",
  blurb: "A tutorial on deploying a ReactJS frontend and Rails API backend on the same dyno.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "Ruby"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Params Wrapper in Ruby on Rails Explained.",
  blurb: "Auto wrap parameters in a nested hash to simplify requests.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "Ruby"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "A Beginner ETL Tutorial In Ruby With Kiba.",
  blurb: "Migrate data between databases while parsing JSON into multiple fields.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "Ruby"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "A Devise-JWT Tutorial For Authenticating Users in Ruby on Rails.",
  blurb: "Keep your users safe!.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "Ruby"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

puts "---------------------"
puts "Here comes the dreaded CSS"
puts "---------------------"

post = Post.new(
  title: "The Ultimate Guide to CSS + Cheat Sheets.",
  blurb: "Learn how to use CSS to create beautiful web pages.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "CSS"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "dotBang's CSS is actually pretty f***ing good.",
  blurb: "Learn how dotBang did what they did!",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "CSS"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Guide to Styling & CSS.",
  blurb: "Plain speaking guide to help you understand how to style.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "CSS"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Basic Introduction to CSS.",
  blurb: "All the other intros to CSS suck! Check this one out.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "CSS"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

puts "---------------------"
puts "Last but not least... React"
puts "---------------------"

post = Post.new(
  title: "The Missing Introduction to React.",
  blurb: "React is the world's most popular JavaScript framework, but it's not cool because it's popular. It's popular because it's cool.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "React"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "How I increased my React development productivity by “8%?”",
  blurb: "I am a full-stack/React dev, and I like to explore and build various dev tooling to improve my productivity.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "React"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "Creating Reusable Components in React: Render Props.",
  blurb: "Render Props Render Prop is a pattern that emerged from using regular features.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "React"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "React.js file structures.",
  blurb: "When creating a react.js app, having a solid file structure that works with your websites purpose can make your life easier.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "React"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

post = Post.new(
  title: "All the fundamental React.js concepts.",
  blurb: "All jammed within this single article.",
  rich_content: Faker::Lorem.paragraph(sentence_count: 10),
  postable: Skill.find_by(name: "React"),
  user: User.all.sample
)

post.save!
puts "created post - #{post.title}"

puts "---------------------"
puts "Adding some users to win the elections"
puts "---------------------"

100.times do |i|
  user = User.new(
    email: "#{i}@mail.com",
    password: "123456",
    first_name: "#{i}firstname",
    last_name: "#{i}lastname",
    username: "#{i}username"
  )
  user.save!
end

puts "---------------------"
puts "The users are voting now ..."
puts "---------------------"

puts "---------------------"
puts "Adding some votes"
puts "---------------------"

posts = Post.all.to_a
react_post = posts.delete(Post.find_by_title("How I built my first React Native app for my first freelance client"))

posts.each do |post|
  users = User.all.to_a
  users.delete(post.user)
  users.sample(rand(30..70)).each do |user|
    vote = Vote.new(
      post: post,
      user: user
    )
    vote.save!
  end
end

User.first(83).each do |user|
  vote = Vote.new(
    post: react_post,
    user: user
  )
  vote.save
end

puts "---------------------"
puts "We won the elections!!!"
puts "---------------------"

# User.all.each do |user|
#   if user == User.first
#     puts "Charlie cannot vote on his post"
#   else
#     vote = Vote.new(
#       user: user,
#       post: Post.find_by(title: "How I landed a full stack developer job without a tech degree or work experience")
#     )
#     vote.save!
#     puts "#{user.first_name} has just voted"

#     vote = Vote.new(
#       user: user,
#       post: Post.find_by(title: "How I built my first React Native app for my first freelance client")
#     )
#     vote.save!
#     puts "#{user.first_name} has just voted"
#   end
# end

# User.all.first(9).each do |user|
#   title = "All the fundamental React.js concepts."
#   post = Post.find_by(title: title)
#   if user == post.user
#     puts "#{user.first_name} cannot vote on their post"
#   else
#     vote = Vote.new(
#       user: user,
#       post: post
#     )
#     vote.save!
#     puts "#{user.first_name} has just voted"
#   end
# end

# User.all.first(5).each do |user|
#   title = "React.js file structures."
#   post = Post.find_by(title: title)
#   if user == post.user
#     puts "#{user.first_name} cannot vote on their post"
#   else
#     vote = Vote.new(
#       user: user,
#       post: post
#     )
#     vote.save!
#     puts "#{user.first_name} has just voted"
#   end
# end

# User.all.first(3).each do |user|
#   title = "Creating Reusable Components in React: Render Props."
#   post = Post.find_by(title: title)
#   if user == post.user
#     puts "#{user.first_name} cannot vote on their post"
#   else
#     vote = Vote.new(
#       user: user,
#       post: post
#     )
#     vote.save!
#     puts "#{user.first_name} has just voted"
#   end
# end

# User.all.first(6).each do |user|
#   title = "Make a Rich Text Editor with JavaScript in 5 Minutes."
#   post = Post.find_by(title: title)
#   if user == post.user
#     puts "#{user.first_name} cannot vote on their post"
#   else
#     vote = Vote.new(
#       user: user,
#       post: post
#     )
#     vote.save!
#     puts "#{user.first_name} has just voted"
#   end
# end

# User.all.first(4).each do |user|
#   title = "How to Become a Web3 Frontend Developer."
#   post = Post.find_by(title: title)
#   if user == post.user
#     puts "#{user.first_name} cannot vote on their post"
#   else
#     vote = Vote.new(
#       user: user,
#       post: post
#     )
#     vote.save!
#     puts "#{user.first_name} has just voted"
#   end
# end

# User.all.first(3).each do |user|
#   title = "Strategic Frontend II: Technology choice matters a lot."
#   post = Post.find_by(title: title)
#   if user == post.user
#     puts "#{user.first_name} cannot vote on their post"
#   else
#     vote = Vote.new(
#       user: user,
#       post: post
#     )
#     vote.save!
#     puts "#{user.first_name} has just voted"
#   end
# end

puts "---------------------"
puts "Adding more skills due to popular demand"
puts "---------------------"

skill = Skill.new(name: "HTML")
skill.save!
puts "#{skill.name} created"

skill = Skill.new(name: "C++")
skill.save!
puts "#{skill.name} created"

skill = Skill.new(name: "Python")
skill.save!
puts "#{skill.name} created"

skill = Skill.new(name: "Node")
skill.save!
puts "#{skill.name} created"

puts "---------------------"
puts "Adding Olwyn Hogan"
puts "---------------------"

user = User.new(
  first_name: "Olwyn",
  last_name: "Hogan",
  email: "olwyn@mail.com",
  username: "olwynhogan",
  password: "123456"
)
user.save!
puts "#{user.first_name} created"

profile = Profile.new(
  avatar_url: "https://avatars.githubusercontent.com/u/101358936?v=4",
  user: user,
  GitHub_url: "https://github.com/OlwynH",
  LinkedIn_url: "https://www.linkedin.com/in/olwynhogan/",
  description: "Career changer to become BEST DEVELOPER EVER",
  credentials: "Le Wagon alumni",
  years_of_experience: 0,
  city: "Remote",
  current_role: "Student"
)

profile.save!
puts "Profile created for #{profile.user.first_name}"

puts "---------------------"
puts ""
puts "--- fin ---"
puts ""
puts "---------------------"
