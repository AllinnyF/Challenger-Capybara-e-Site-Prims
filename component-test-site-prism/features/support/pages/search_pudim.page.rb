class SearchPudimPage < SitePrism::Page
    set_url "/"
    element :search_input, 'input[name="q"]'
    element :search_button, 'input[name="btnK"]'
    element :search_list, 'div[id=result-stats]'
    element :search_more, 'div[class=SPZz6b]'
    element :click_first, 'img[id=rimg_1]'
    element :pudim_recipe, 'div[class=recipe-title]'

    def open_page?
        wait_until_search_input_visible(wait: 15)
        wait_until_search_button_visible(wait: 15)
    end
end