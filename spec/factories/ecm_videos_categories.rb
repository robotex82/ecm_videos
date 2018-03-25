FactoryGirl.define do
  factory :ecm_videos_category, class: Ecm::Videos::Category do
    sequence(:name) { |i| "Video category #{i}"}
    locale I18n.locale
  end
end
