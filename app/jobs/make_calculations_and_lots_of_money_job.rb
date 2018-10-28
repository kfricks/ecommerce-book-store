class MakeCalculationsAndLotsOfMoneyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # code below is supposed to be an example of a job.
    5.times do
      "great!"
    end
  end
end
