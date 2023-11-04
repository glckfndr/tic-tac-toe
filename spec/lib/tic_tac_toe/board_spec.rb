describe Board do
  specify '#display' do
    expect(subject).to respond_to(:display).with(0).arguments
  end

  specify '#full?' do
    expect(subject).to respond_to(:full?).with(0).arguments
  end

  specify '#free?' do
    expect(subject).to respond_to(:free?).with(1).arguments
  end
  describe '#free?' do
    it 'returns true when @board index 0' do
      expect(subject.free?(1)).to be_truthy
    end

    it 'returns true when @board index 8' do
      expect(subject.free?(8)).to be_truthy
    end

    it 'returns false when @board index 9' do
      expect(subject.free?(9)).to be_falsey
    end

    it 'raise exception when @board index -1' do
      expect { subject.free?(-1) }.to raise_error('Index must be positive!')
    end
  end
end
