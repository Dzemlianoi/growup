ActiveAdmin.register Question do
  menu priority: 5

  permit_params %i[text variant order test_id]

  filter :text
  filter :test_id, as: :select2, collection: Test.all

  form do |f|
    f.inputs 'General' do
      %i[text order].each { |input_name| f.input input_name }
      f.input :variant, as: :select, collection: Question.variants.keys
      f.input :test, as: :select, collection: Test.all
    end
    f.actions
  end
end
