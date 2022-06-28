class GoogleSearchPage < SitePrism::Page
    set_url "/"
    element :search_input, 'input[name="q"]'
    element :search_button, 'input[name="btnK"]'

    def open_page?
        wait_until_search_input_visible(wait: 15)
        wait_until_search_button_visible(wait: 15)
    end
end