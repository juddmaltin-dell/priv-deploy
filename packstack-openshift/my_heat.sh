heat stack-create openshift \
   --poll \
   -e openshift_parameters.yaml \
   -P master_count=3 \
   -f ~/openshift-on-openstack/openshift.yaml
