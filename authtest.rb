require 'fog/oraclecloud'

config = {
    :provider               => "oraclecloud",
    :oracle_username        => "jzuilkowski@emergent360.com",
    :oracle_password        => "n$p12Jun",
    :oracle_domain          => "mythicscloud",
    :oracle_compute_api     => "https://api-z42.compute.us2.oraclecloud.com/"
}

compute = Fog::Compute.new(config)
images = compute.list_image_lists('public')

puts images.inspect
# puts images.to_yaml