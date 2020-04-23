apt_update

package 'ntp'

service 'ntp' do
  action [:enable, :start]
end
