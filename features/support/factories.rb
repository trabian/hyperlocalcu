Factory.define :member do |factory|
  factory.sequence(:name) { |n| "Test Member #{n}" }
end
