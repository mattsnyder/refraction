class RefractionController < ApplicationController

  def index; end

  def show
    client = Riak::Client.new(:nodes => [
                                         {
                                           :host => params[:host],
                                           :pb_port => 9002,
                                           :http_port => 9000
                                         }
                                        ]
                              )
    @result = client.buckets
  end
end
