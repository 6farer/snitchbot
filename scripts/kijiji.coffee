# # Description:
# #   Messing around with the YouTube API.
# #
# # Commands:
# #   hubot kjiji <query> - Searches YouTube for the query and returns the video embed link.
# module.exports = (robot) ->

#   robot.respond /(kijiji|kjj)( me)? (.*)/i, (msg) ->
#     # allow for flags
#     query = msg.match[3]
#     options = msg.match[4]

#     # push these to files and allow ability to add and remove with unique keys
#     searchQueries =
#       "6k":
#         6950:
#           queries: ["amd 6950", "hd 6950", "sapphire 6950"]
#           threshold: "200"
#       "7k":
#         7950:
#           queries: ["amd 7950", "hd 7950", "sapphire 7950"]
#           threshold: "300"

#     if this.checkQuery(query, searchQueries)
#       robot.http("http://toronto.kijiji.ca/f-SearchAdRss")
#         .query({
#           "CarId": "0"
#           "Keyword": 15
#           "Location": "1700272"
#           q: query
#         })
#         .get() (err, res, body) ->
#           videos = JSON.parse(body)
#           videos = videos.feed.entry

#           unless videos?
#             msg.send "No video results for \"#{query}\""
#             return

#           video  = msg.random videos
#           video.link.forEach (link) ->
#             if link.rel is "alternate" and link.type is "text/html"
#               msg.send link.href
#     checkQuery = (theQuery, queries) ->
#       nested = () ->
#         for of queries

#       return nested or theQuery of queries
