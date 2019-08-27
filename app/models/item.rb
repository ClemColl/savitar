class Item < ApplicationRecord
    has_many :questions

    def two_line_name
        text = self.name
        if text.include? "&"
            text.split(' & ', 2).each(&:capitalize!)
        else
            text
        end
    end
end
