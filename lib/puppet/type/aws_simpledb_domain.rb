Puppet::Type.newtype(:aws_simpledb_domain) do

  desc "Manages AWS SimpleDB Domains

    aws_simpledb_domain { 'dwilson_test':
      ensure                => 'present',
      aws_access_key_id     => 'HIDD3NK3Y',
      aws_secret_access_key => 'H1DD3NS3CR53TH1DD3NS3CR53T',
    }

  "

  ensurable

  newparam(:name, :namevar => true) do
    desc "The SimpleDB domain name to manage."
  end

  newparam(:aws_access_key_id) do
    desc "The AWS Access Key ID to use for this request"
  end

  newparam(:aws_secret_access_key) do
    desc "The AWS Secret to use for this request"
  end

end
