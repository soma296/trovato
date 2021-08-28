class Task < ApplicationRecord
    belongs_to :user

    validates :deadline, :title, :content, :details, :done, presence: true
    validate :date_before_start
    

    def date_before_start
        if deadline != nil
            errors.add(:deadline, "は今日以降のものを選択してください") if deadline < Date.today-1
        end
    end
end
