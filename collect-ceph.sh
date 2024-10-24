#!/bin/bash
cephadm shell ceph orch ps >> /var/tmp/ceph-info
cephadm shell ceph orch host ls >> /var/tmp/ceph-info
cephadm shell ceph -s >> /var/tmp/ceph-info
cephadm shell radosgw-admin bucket limit check >> /var/tmp/ceph-info
cephadm shell radosgw-admin sync status >> /var/tmp/ceph-info
cephadm shell ceph-volume lvm list >> /var/tmp/ceph-info
cephadm shell ceph orch ls --export --service_name osd.default_drive_group >> /var/tmp/ceph-info
cephadm shell ceph osd df tree >> /var/tmp/ceph-info
lsblk >> /var/tmp/disk-info
ls -ltrh /dev/disk/by-path/  >> /var/tmp/disk-info
pvs  >> /var/tmp/disk-info
vgs >> /var/tmp/disk-info
lvs >> /var/tmp/disk-info
