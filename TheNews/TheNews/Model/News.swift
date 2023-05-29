//
//  News.swift
//  TheNews
//
//  Created by Augusto Simionato on 28/05/23.
//

import SwiftUI

struct News: Identifiable {
    var id = UUID()
    let imageName: String
    let title: String
    let description: String
    let content: String
}

struct NewsList {
    static let posts = [
        News(imageName: "news-image-1",
              title: "The planet needs our attention",
              description: "The climate change has never been so...",
              content: "The planet needs our attention now more than ever. With the increasing global population and the rise in industrialization, our environment is facing significant challenges. From air pollution to deforestation and climate change, it's clear that our actions have consequences. It's important that we take responsibility and make changes to protect our planet. This can be as simple as reducing our use of single-use plastics or carpooling to work. We can also support organizations that focus on conservation and sustainability. The good news is that there are already many people and initiatives working towards a better future for our planet. By joining these efforts and taking action in our daily lives, we can all make a positive impact. Let's prioritize the health of our planet and work together towards a sustainable future for generations to come."),
        
        News(imageName: "news-image-2",
              title: "Elementor, changing the way you create a website",
              description: "Elementor is a game changing tool to...",
              content: "Elementor is a powerful tool that's changing the way people create websites. With its drag-and-drop interface and user-friendly design, Elementor allows anyone to build a professional-looking site without any coding skills. Gone are the days of hiring expensive web developers or struggling to learn complex coding languages. Elementor makes website creation accessible to everyone, regardless of their technical background. Whether you're building a personal blog, an e-commerce site, or a corporate website, Elementor has everything you need to make it a success. So why not give it a try and see how it can revolutionize the way you create your next website?"),
        
        News(imageName: "news-image-3",
              title: "Nhoah is brilliant",
              description: "Nhoah is an AI who created a...",
              content: "Nhoah is an AI who created a revolution in the field of natural language processing. With his advanced algorithms and machine learning capabilities, Noah can understand and interpret human language like never before. Thanks to Noah, businesses and individuals alike can communicate with machines in a more natural and intuitive way. This opens up new possibilities for chatbots, virtual assistants, and other AI applications that rely on language processing. As Noah continues to evolve and improve, it's clear that his contributions to the field of AI will only continue to grow. The future of natural language processing and beyond is looking brighter than ever, thanks to Noah and his revolutionary technology."),
        
        News(imageName: "news-image-4",
              title: "England starts to change",
              description: "England is starting to...",
              content: "England, like many countries around the world, is undergoing significant changes in response to the pressing issues of our time. From environmental concerns to social justice movements, the country is beginning to take action in meaningful ways. There are also positive developments happening in terms of diversity and inclusion. The country is celebrating its multicultural heritage and working towards greater equality and representation for marginalized communities. This includes initiatives such as Black History Month and Pride Month, as well as efforts to address discrimination and promote diversity in the workplace. Overall, these changes represent a hopeful and promising direction for England. By prioritizing sustainability, inclusivity, and progress, the country is taking important steps towards a better future for all its citizens."),
        
        News(imageName: "news-image-5",
              title: "iPhone 16 annoucement",
              description: "Apple is preparing to launch...",
              content: "Apple, one of the biggest technology companies in the world, has announced the launch of its newest product, the iPhone 16. With a series of innovations and improvements, the new smartphone promises to revolutionize the smartphone industry. Another novelty of the iPhone 16 is the charging via solar energy. Apple has developed a technology that allows the device to be charged through sunlight, without the need for cables or chargers. This technology is a great advantage for those who live in regions with a lot of sunlight and want to save energy. The iPhone 16 is now available for pre-order and will be arriving in stores soon."),
        
        News(imageName: "news-image-6",
              title: "Macbooks Pro M3 is here",
              description: "Apple launch today...",
              content: "Apple, one of the biggest technology companies in the world, has announced the launch of its newest product, the Macbook Pro M3. With a series of innovations and improvements, the new smartphone promises to revolutionize the smartphone industry. Another novelty of the Macbook Pro M3 delivery faster performance. Apple has developed a technology that allows the device launch apps more quickly, without the need for cables or chargers. This technology is a great advantage for those who live in regions with a lot of sunlight and want to save energy. The Macbook Pro M3 is now available for pre-order and will be arriving in stores soon."),
        
        News(imageName: "news-image-7",
              title: "Tesla and the new CEO",
              description: "In a surprising turn of events...",
              content: "In a surprising turn of events, Tesla, the renowned electric vehicle (EV) manufacturer, has announced the appointment of a new CEO who promises to steer the company toward new horizons. With a proven track record of visionary leadership and a deep understanding of the automotive industry, this appointment has sent shockwaves through the business world. Effective immediately, John Peterson, a seasoned industry veteran, will take the helm as Tesla's new CEO. Peterson brings a wealth of experience in electric mobility and renewable energy, having successfully led several prominent companies in the sector. His strategic vision and ability to drive innovation align perfectly with Tesla's mission to accelerate the world's transition to sustainable transportation."),
        
        News(imageName: "news-image-8",
              title: "Record-Breaking Investments",
              description: "In a bold display of confidence...",
              content: "In a bold display of confidence, international investors are injecting unprecedented funds into various sectors, driving global markets to soaring heights. As economic conditions stabilize and promising opportunities emerge, the investment landscape is witnessing an exceptional surge. Investors from around the world are seizing the moment, capitalizing on robust market conditions to fuel economic growth and innovation. With increased access to capital and a renewed appetite for risk, both established companies and promising startups are benefiting from this investment boom. The technology sector, in particular, has emerged as a focal point for these inflows. Startups pioneering groundbreaking technologies, such as artificial intelligence, blockchain, and clean energy solutions, are attracting substantial investments. Venture capital firms are eagerly backing these trailblazers, recognizing the potential for exponential growth and disruptive advancements."),
        
        News(imageName: "news-image-9",
              title: "Team X's Epic Comeback Secures Unforgettable Victory",
              description: "In a heart-stopping match...",
              content: "In a heart-stopping match In a heart-stopping match that had fans on the edge of their seats, Team X staged an extraordinary comeback to secure a stunning victory against their formidable rivals. This riveting display of skill, determination, and teamwork showcased the true spirit of sportsmanship and left spectators in awe. From the very beginning, it was evident that both teams had brought their A-game to the arena. The intensity on the field was palpable as players demonstrated their agility, precision, and strategic prowess. The crowd erupted with cheers as each team exchanged brilliant moves, showcasing their mastery of the sport. The astonishing comeback by Team X will undoubtedly inspire future generations of athletes, reminding them that with dedication, passion, and unwavering belief, they can overcome even the most daunting challenges. This remarkable display of sportsmanship will forever be etched in the annals of sporting history, serving as a beacon of inspiration for athletes and fans alike.")
    ]
}
