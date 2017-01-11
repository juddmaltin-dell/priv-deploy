DT=`date '+%s'`
heat    \
   stack-create  judd3 \
   --poll \
   -t 180 \
   -e openshift_parameters.yaml \
   -f openshift-on-openstack/openshift.yaml \
#   -f openshift-on-openstack/openshift.yaml
#   -e openshift-on-openstack/env_flannel.yaml

