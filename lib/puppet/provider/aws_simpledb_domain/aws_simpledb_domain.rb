require 'fog'

Puppet::Type.type(:aws_simpledb_domain).provide(:aws_simpledb_domain, :parent => Puppet::Provider) do
  desc "Manages AWS SimpleDB Domains

    aws_simpledb_domain { 'dwilson_test':
      ensure                => 'present',
      aws_access_key_id     => 'HIDD3NK3Y',
      aws_secret_access_key => 'H1DD3NS3CR53TH1DD3NS3CR53T',
    }

  "

  def create
    Puppet.debug("Creating #{resource[:name]}")

    _aws.create_domain(resource[:name])
  end

  def destroy
    Puppet.debug("Destroying #{resource[:name]}")

    _aws.delete_domain(resource[:name])
  end

  def exists?
    _aws.list_domains().body['Domains'].include? resource[:name]
  end

  ################################

  def _aws
    Fog::AWS::SimpleDB.new(
      :aws_access_key_id => resource[:aws_access_key_id],
      :aws_secret_access_key => resource[:aws_secret_access_key]
    )
  end

end
