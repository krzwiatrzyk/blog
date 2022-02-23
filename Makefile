install-krew-plugins:
	kubectl krew install resource-capacity

show-pods-capacity:
	kubectl resource-capacity --pods

show-nodes-capacity:
	kubectl resource-capacity
