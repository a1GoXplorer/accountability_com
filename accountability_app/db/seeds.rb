# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
response = Typhoeus.get(
      'https://www.govtrack.us/api/v2/role?current=true&limit=600')
    # get a response
    # parse the data and name it
    sen_data = JSON.parse(response.body)
    # create a new array of Senators that are ONLY Senators
    sens = sen_data["objects"].select{ |x| x["title_long"] =~ /[sS]enator/}
    # run a create method to push to the database
    sens.each do |senator|
        Senator.create({
            first_name: senator["person"]["firstname"], 
            last_name: senator["person"]["lastname"], 
            date_of_birth: senator["person"]["birthday"], 
            gender: senator["person"]["gender_label"],
            political_party: senator["party"],
            job_title: senator["description"],
            state: senator["state"],
            rank: senator["senator_rank_label"],
            phone: senator["phone"],
            start_date: senator["startdate"],
            end_date: senator["enddate"],
            website: senator["website"],
            link_to_gov: senator["person"]["link"],
            twitter_handle: senator["person"]["twitterid"],
            youtube_id: senator["person"]["youtubeid"],
            cspan_id: senator["person"]["cspanid"],
            pvsid: senator["person"]["pvsid"],
            osid: senator["person"]["osid"]})
    end