PYTHON3:=$(shell which python3)
-:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?##/ {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
help:## 	print verbose help
	@echo
	@echo "make venv && . .venv/bin/activate && make all"
	@echo "make venv && . .venv/bin/activate && make default"
	@echo "note that the ONE of the revealed words is the password: 12 + password"
	@sed -n 's/^# //p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/# /'
	@sed -n 's/^## //p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/## /'
	@sed -n 's/^### //p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/### /'

all:## 	make A-Z & make default
	$(MAKE) A B C D E F G H I J K &
	$(MAKE) default &

default:additional## 	default case
	@echo default
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list tokens_seed.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &

A:
	@echo A
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 a.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &
B:
	@echo B
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 b.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &
C:
	@echo C
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 c.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &
D:
	@echo D
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 d.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &
E:
	@echo E
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 e.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &
F:
	@echo F
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 f.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &
G:
	@echo G
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 g.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &
H:
	@echo H
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 h.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &
I:
	@echo I
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 i.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &
J:
	@echo J
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 j.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &
K:
	@echo K
	@$(PYTHON3) seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list                 k.txt --multi-file-seedlist --listseeds --tokenlist additional.txt &




additional:## 	create additional.txt from tokens_seed.txt and random bip39 words
	@cat $(PWD)/tokens_seed.txt > $(PWD)/additional.txt
	@$(PWD)/additional.sh lib/bitcoinlib/wordlist/english.txt >> $(PWD)/additional.txt
	@cat $(PWD)/additional.txt

.PHONY: venv
venv:## 	create python3 virtualenv .venv
	test -d .venv || $(PYTHON3) -m virtualenv .venv
	( \
	   source .venv/bin/activate; pip install -r requirements.txt; \
	);
	@echo "To activate (venv)"
	@echo "try:"
	@echo ". .venv/bin/activate"
	@echo "or:"
	@echo "make test-venv"
##:	test-venv            source .venv/bin/activate; pip install -r requirements.txt;
test-venv:## 	test virutalenv .venv
	# insert test commands here
	test -d .venv || $(PYTHON3) -m virtualenv .venv
	( \
	   source .venv/bin/activate; pip install -r requirements.txt; \
	);
