module BrainChild
  class App < Padrino::Application
    register SassInitializer
    use ActiveRecord::ConnectionAdapters::ConnectionManagement
    register Padrino::Helpers

    enable :sessions

    ##
    # Caching support.
    #
    register Padrino::Cache
    enable :caching
    set :cache, Padrino::Cache.new(:LRUHash) # Keeps cached values in memory

    error 404 do
      render 'errors/404'
    end

    error 500 do
      render 'errors/500'
    end
  end
end
