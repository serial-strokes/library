require 'serverspec'

describe 'Library Dockerfile' do

  before(:all) do
    set :os, family: :debian
    set :backend, :docker
    set :docker_container, $lib_container.id
  end

  it 'should have valid copies of the host\'s mp3 tracks' do
    Dir['./tracks/*.mp3'].select{ |f| File.file? f }.map do |f|
      found_file = mp3_track File.basename f
      expect(found_file).to be_file
      expect(found_file).to be_readable
      expect(found_file).not_to be_writable
      expect(found_file).not_to be_executable
      expect(found_file.size).to be > 0
    end
  end

  it 'should specify library data directory as volume' do
    expect($lib_image.json['Config']['Volumes']).to eq({'/opt/library' => {}})
  end

  def mp3_track(filename)
    file("/opt/library/tracks/#{filename}")
  end

 end
