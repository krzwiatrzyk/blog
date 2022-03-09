.ONESHELL:

install-krew-plugins:
	kubectl krew install resource-capacity
	kubectl krew install df-pv
	kubectl krew install doctor
	kubectl krew install konfig

show-anomalies:
	kubectl doctor

show-pods-capacity:
	kubectl resource-capacity --pods

show-nodes-capacity:
	kubectl resource-capacity

install-helm-secrets:
	helm plugin install https://github.com/jkroepke/helm-secrets --version v3.12.0

install-helmsman:
	curl -L https://github.com/Praqma/helmsman/releases/download/v3.8.1/helmsman_3.8.1_linux_amd64.tar.gz | tar zx
	sudo mv helmsman /usr/local/bin/helmsman

install-sops:
	export VERSION=3.7.1
	export URL=https://github.com/mozilla/sops/releases/download/v$${VERSION}/sops-v$${VERSION}.linux

	if command -v sops >> /dev/null; then exit 0; fi
	wget -nc -q $${URL}
	chmod +x sops-v$${VERSION}.linux
	sudo mv sops-v$${VERSION}.linux /usr/local/bin/sops

install-age:
	export AGE_VERSION=1.0.0

	if command -v age >> /dev/null; then exit 0; fi
	wget -nc -q https://github.com/FiloSottile/age/releases/download/v$${AGE_VERSION}/age-v$${AGE_VERSION}-linux-amd64.tar.gz
	tar zxvf age-v$${AGE_VERSION}-linux-amd64.tar.gz
	sudo mv age/age /usr/local/bin/age
	sudo mv age/age-keygen /usr/local/bin/age-keygen
	rm -rf age
	rm age-v$${AGE_VERSION}-linux-amd64.tar.gz


sops-commands:
	#age-keygen -o key.txt
	#sops --encrypt --age $$(cat recipients.txt) text.txt > text.txt.enc
	#export SOPS_AGE_KEY_FILE=$$(pwd)/key.age
	#sops text.txt.enc
