describe Game do
  specify '#play' do
    expect(subject).to respond_to(:play).with(0).arguments
  end


end
