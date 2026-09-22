require 'open3'

RSpec.describe 'Ruby 3 and OpenSSL compatibility' do
  it 'parses an RSA public key without the OpenSSL 3 immutable-key error' do
    key = OpenSSL::PKey::RSA.new(2048)
    parsed = Net::SSH::Buffer.new(key.to_blob).read_key
    expect(parsed.n).to eq(key.n)
    expect(parsed.e).to eq(key.e)
  end

  it 'loads in a fresh process without the io-wait deprecation warning' do
    stdout, stderr, status = Open3.capture3(
      RbConfig.ruby, '-Ilib', '-e', "require 'photocopier'; puts 'loaded'"
    )
    expect(status.success?).to be(true), stderr
    expect(stdout).to include('loaded')
    expect(stderr).not_to include('io-wait gem is deprecated')
  end
end
