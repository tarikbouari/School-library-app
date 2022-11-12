require_relative './app'

def main
  app = App.new
  loop { app }
end

main
