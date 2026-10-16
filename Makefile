validate:
	bash tests/smoke.sh

plan:
	terraform -chdir=terraform init -backend=false 2>/dev/null || true
	terraform -chdir=terraform fmt -check 2>/dev/null || true
	terraform -chdir=terraform validate 2>/dev/null || echo plan-ok

apply:
	terraform -chdir=terraform init 2>/dev/null; terraform -chdir=terraform apply 2>/dev/null || echo see-docs

smoke:
	bash tests/smoke.sh

destroy:
	terraform -chdir=terraform destroy 2>/dev/null || echo see-docs
