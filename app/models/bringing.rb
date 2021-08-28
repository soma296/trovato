class Bringing < ApplicationRecord
    belongs_to :user

    validates :day, :title, :bringing, presence: true
    validate :date_before_start

    def date_before_start
        if day != nil
            errors.add(:day, "は今日以降のものを選択してください") if day < Date.today
        end
    end
end
