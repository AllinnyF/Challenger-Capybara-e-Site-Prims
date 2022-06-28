class SearchPudimPage
    include Capybara::DSL

    def open_page?
        find('input[name=q]', visible: true)
        find('input[name=btnK]', visible: true)
    end

    def search(searchText)
        find('input[name=q]').set(searchText)
    end

    def click
        find('input[name=btnK]').click()
    end

    def seeAllRecipes
        find('div[id=result-stats]', visible: true)
        find('div[class=SPZz6b]', visible: true)
    end

    def firstLink
        find('img[id=rimg_1]').click()
    end

    def recipesPudim(searchText)
        find('div[class=recipe-title]', visible: true)
    end
end