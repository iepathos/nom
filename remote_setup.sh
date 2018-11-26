#!/bin/bash
# depends on ssh, scp, rsync, and tar

hostname="${1}"
service="${2}"

pushd () {
    command pushd "$@" > /dev/null
}

popd () {
    command popd "$@" > /dev/null
}

# if the remote directory /tmp/nom already exists
# then we are going to rsync to it instead of tarball scp
pushd ..
	tar -czf /tmp/nom.tar.gz nom
	ssh $hostname stat /tmp/nom > /dev/null 2>&1
	if [[ $? != 0 ]]; then
		scp /tmp/nom.tar.gz $hostname:/tmp/nom.tar.gz
		ssh $hostname tar -xzf /tmp/nom.tar.gz -C /tmp
	else
		echo "found /tmp/nom remote directory, rsyncing nom to it"
		rsync -azr nom/ $hostname:/tmp/nom
	fi
	if [[ ! -z "$service" ]]; then
		ssh $hostname /tmp/nom/$service/install.sh
	else 
		echo "no service specified, deploying dev setup"
		ssh $hostname /tmp/nom/$service/dev_setup.sh
	fi
popd

