# AWS SimpleDB PuppetTypes #

This provider allows you to manage AWS SimpleDB Domains through Puppet.

    # Create a SimpleDB Domain
    aws_simpledb_domain { 'dwilson_test':
      ensure => 'present',
      aws_access_key_id     => 'HIDD3NK3Y',
      aws_secret_access_key => 'H1DD3NS3CR53TH1DD3NS3CR53T',
    }

## Centralised keys and Secrets

Rather than duplicate the aws_access_key_id and aws_secret_access_key
properties you can specify them once in a central location - `site.pp`
for example.

    Aws_simpledb_domain {
      aws_access_key_id     => 'HIDD3NK3Y',
      aws_secret_access_key => 'H1DD3NS3CR53TH1DD3NS3CR53T',
    }

## Notes

These providers are implemented using the [Ruby Fog library](http://fog.io/).

## License

This code is licensed under the GPLv2
