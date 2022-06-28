class GoogleSearchPage 
    include Capybara::DSL

    def open_page?
        find('input[name=q]', visible: true)
        find('input[name=btnK]', visible: true)
    end
end