#bus_timetable_rails
===================

##Bus timetable
###User stories to start out with:
*As a bus system operator, I want to add bus stations, so that I can show where all of the buses will go.
*As a bus system operator, I want to add bus lines, so that I can track which lines go to which stations.
*As a bus rider, I want to view a bus line, so that I can see the stations where it stops.
*As a bus rider, I want to view a bus station, so that I can see which buses come to it.

###Then, work on this story:
*As a bus system operator, I want to check boxes assigning a line to certain stations, so that I don't have to go to a separate page to tell the line what stations it goes through. (To start off this story, go through the HABTM Checkboxes Railscast and implement it in your code. Make sure to read the second-to last comment on the comments page. Then, read the Rails API documentation on collection_check_boxes and refactor.)

###If you get through these first stories, here are a few more for you:

*As a bus system operator, I want to add buses to a line, so that I can assign each physical bus to a particular line.
*As a bus systems operator, I want to note what time a bus is scheduled to arrive at each stop, so that I can tell my drivers when they should be where.
*As a bus rider, I want to view a bus line and see all of the buses that run on it and what time they arrive at each stop, so that I can pick one that fits my schedule.
*As a bus rider, I want a visual representation of the bus system, so that I can more easily see which lines go where. Hint: Check out D3.js; don't overlook the d3-rails gem.
