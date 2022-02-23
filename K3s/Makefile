install:
	curl -sfL https://get.k3s.io | sh -s - server --disable-helm-controller --disable traefik
	#wget -nc https://github.com/k3s-io/k3s/releases/download/v1.23.1%2Bk3s1/k3s
	#chmod +x k3s
	#sudo mv k3s /usr/local/bin/k3s

link-config:
	mkdir -p /etc/rancher/k3s
	ln -n config.yaml /etc/rancher/k3s/config.yaml

start:
	#k3s server &
	systemctl start k3s

status:
	systemctl status k3s

uninstall:
	/usr/local/bin/k3s-uninstall.sh

install-flux:
	curl -s https://fluxcd.io/install.sh | sudo bash
	echo "source <(flux completion zsh)" >> ~/.zshrc

bootstrap-flux:
	flux bootstrap github \
	--owner=krzwiatrzyk \
	--repository=blog \
	--path=K3s/flux \
	--branch=master \
	--personal
