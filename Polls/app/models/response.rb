class Response < ActiveRecord::Base
  validate :not_duplicate_response

  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :answer_id

  belongs_to :respondent,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id

  has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    # String insertion results in NOT (responses.id = NULL)
    # Therefore, because string insertion is so inflexible for .not,
    # we prefer the symbol syntax. Symbol syntax correctly creates
    # (responses.id IS NOT NULL) which will not fail on Null values

    # question.responses.where.not(["responses.id = ?", self.id])

    question.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    if sibling_responses.exists?(user_id = respondent.id)
        return true
    end

    false
  end

  def not_duplicate_response
    if respondent_already_answered?
      errors[:repeat_user] << "User already gave an answer"
    end
  end
end
