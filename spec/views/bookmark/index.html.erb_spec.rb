require 'spec_helper'

describe "bookmark/index.html.erb" do
  before do
    render
  end

  it 'Open Bookmark' do
    response.should have_css('p', text: 'Hello World!')
  end
end
