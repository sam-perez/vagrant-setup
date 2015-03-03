#
# Cookbook Name:: cocoon
# Recipe:: _postgres
#
# Copyright (C) 2014 FullStack
#

#
# Install Postgres.
#
package 'postgresql'
package 'postgresql-contrib'

#
# Create a Postgres user.
#
execute 'createuser' do
  guard = <<-EOH
    psql -U postgres -c "select * from pg_user where
    usename='django'" |
    grep -c django
  EOH

  user 'postgres'
  command 'psql -c "create role django with createdb login password \'password\'"'
  not_if guard, user: 'postgres'
end
