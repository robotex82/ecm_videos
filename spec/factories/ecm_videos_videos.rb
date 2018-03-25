FactoryGirl.define do
  factory :ecm_videos_video, class: Ecm::Videos::Video do
    association(:category, factory: :ecm_videos_category)
    sequence(:name) { |i| "Video #{i}" }
    clip { File.open(Ecm::Videos::Engine.root.join(*%w(spec files ecm_videos videos clip.mp4))) }
  end
end
