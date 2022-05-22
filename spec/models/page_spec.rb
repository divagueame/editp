require 'rails_helper'

RSpec.describe Page, type: :model do

  it 'has a valid factory' do
    page = create(:page)
    expect(page.title.presence).to be_truthy
  end

  it 'creates a slug' do
    page = create(:page, title: "New title chi")
    expect(page.slug).to eq('new-title-chi')
    page.update(title: 'anotherChiki title')
    expect(page.slug).to eq('anotherchiki-title')
  end
  
  it 'is a tree of ordered pages' do
    page1 = create(:page, title: "Page 1")
    expect(page1.position).to eq(1)
    page2 = create(:page, title: "Page 2")
    expect(page2.position).to eq(2)
    page3 = create(:page, title: "Page 3")
    expect(page3.position).to eq(3)
    
    pp page1
    pp page2
    pp page3
    # page1_1 = page1.children.create(title: "page 1.1")
    # expect(page1_1.position).to eq(1)
    # page1_2 = page1.children.create(title: "page 1.2")
    # expect(page1_2.position).to eq(2)
    # page1_3 = page1.children.create(title: "page 1.3")
    # expect(page1_3.position).to eq(3)
    
    # page2_1 = page2.children.create(title: "page 2.1")
    # expect(page2_1.position).to eq(1)

    # page2_2 = page2.children.create(title: "page 2.2")
    # expect(page2_2.position).to eq(2)
  end
end
