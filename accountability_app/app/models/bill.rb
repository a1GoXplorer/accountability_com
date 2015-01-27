class Bill < ActiveRecord::Base
  def self.showbills
    response = Typhoeus.get(ENV['NYT_bills_url'])
    bill_data = JSON.parse(response.body)

    bills = bill_data["results"][0]["bills"]

    bills.map do |bills|
      {
        title: bills["title"],
        number: bills["number"],
        introduced_date: bills["introduced_date"],
        committees:bills["committees"],
        latest_action_date:bills["latest_action_date"],
        latest_major_action:bills["latest_major_action"]
      }
    end
  end   

end
