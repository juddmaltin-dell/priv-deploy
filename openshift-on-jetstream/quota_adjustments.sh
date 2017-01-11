echo "###########Origial Nova Quota Defaults"
nova quota-defaults

nova quota-class-update --instances 200 default
nova quota-class-update --cores 500 default
nova quota-class-update --ram 1000000 default
nova quota-class-update --floating-ips 1000 default
nova quota-class-update --fixed-ips 500 default
nova quota-class-update --metadata-items 1280 default
nova quota-class-update --injected-files 5 default
nova quota-class-update --injected-file-content-bytes 10240 default
nova quota-class-update --injected-file-path-bytes 255 default
nova quota-class-update --key-pairs 100 default
nova quota-class-update --security-groups 1000 default
nova quota-class-update --security-group-rules 2000 default
nova quota-class-update --server-groups 100 default
nova quota-class-update --server-group-members 100 default

echo "###########New Nova Quota Defaults"
nova quota-defaults

echo "################ Original Nova Quota Tenant admin"

tenant=$(openstack project show -f value -c id admin)

nova quota-show --tenant $tenant

nova quota-update --instances 200 $tenant
nova quota-update --cores 500 $tenant
nova quota-update --ram 1000000 $tenant
nova quota-update --floating-ips 1000 $tenant
nova quota-update --fixed-ips 500 $tenant
nova quota-update --metadata-items 1280 $tenant
nova quota-update --injected-files 5 $tenant
nova quota-update --injected-file-content-bytes 1024 $tenant
nova quota-update --injected-file-path-bytes 255 $tenant
nova quota-update --key-pairs 100 $tenant
nova quota-update --security-groups 1000 $tenant
nova quota-update --security-group-rules 2000 $tenant
nova quota-update --server-groups 100 $tenant
nova quota-update --server-group-members 100 $tenant

echo "########### New Nova Quota Tenant admin"
nova quota-show --tenant $tenant


echo "########### Original Nova Quota User admin Tenant admin"

nova quota-show --user admin --tenant admin

nova quota-update --user $tenant --instances 200 $tenant
nova quota-update --user $tenant --cores 500 $tenant
nova quota-update --user $tenant --ram 1000000 $tenant
nova quota-update --user $tenant --floating-ips 1000 $tenant
nova quota-update --user $tenant --fixed-ips 500 $tenant
nova quota-update --user $tenant --metadata-items 1280 $tenant
nova quota-update --user $tenant --injected-files 5 $tenant
nova quota-update --user $tenant --injected-file-content-bytes 1024 $tenant
nova quota-update --user $tenant --injected-file-path-bytes 255 $tenant
nova quota-update --user $tenant --key-pairs 100  $tenant
nova quota-update --user $tenant --security-groups 1000 $tenant
nova quota-update --user $tenant --security-group-rules 2000 $tenant
nova quota-update --user $tenant --server-groups 100 $tenant
nova quota-update --user $tenant --server-group-members 100 $tenant


echo "########### Original Nova Quota User admin Tenant admin"
nova quota-show --user admin --tenant admin


echo  "######### Original Cinder Quotas #######"
cinder quota-show $tenant
cinder quota-update --volumes 100 --snapshots 100 --gigabytes 10000 --backup-gigabytes 10000  $tenant
echo  "######### New Cinder Quotas #######"
cinder quota-show $tenant

