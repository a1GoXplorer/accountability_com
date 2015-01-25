class Senator < ActiveRecord::Base
  belongs_to :watchlists

  def create_senators
    request = Request.new(
      'https://www.govtrack.us/api/v2/role?current=true',
      method: :get,
      params: {
        first_name: self.content,
        last_name: self.content,
        date_of_birth: self.content,
        gender: self.content,
        political_party: self.content,
        job_title: self.content,
        state: self.content,
        rank: self.content,
        phone: self.content,
        start_date: self.content,
        end_date: self.content,
        website: self.content,
        link_to_gov: self.content,
        twitter_handle: self.content,
        youtube_id: self.content,
        cspan_id: self.content,
        pvsid: self.content,
        osid: self.content,
        outputMode: 'json', }
        )
    request.run

    response = request.response
    senators = JSON.parse(response.body)
    puts senators
end
