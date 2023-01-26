PYTHON3:=$(shell which python3)
default:additional
	@echo default
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list tokens_passphrase.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
	#@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list tokens_passphrase.txt --multi-file-seedlist                  --tokenlist additional.txt
	$(MAKE) A B C D E F G H I J K
A:
	@echo A
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list a.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
B:
	@echo B
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list b.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
C:
	@echo C
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list c.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
D:
	@echo D
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list d.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
E:
	@echo E
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list e.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
F:
	@echo F
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list f.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
G:
	@echo G
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list g.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
H:
	@echo H
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list h.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
I:
	@echo I
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list i.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
J:
	@echo J
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list j.txt --multi-file-seedlist --listseeds --tokenlist additional.txt
K:
	@echo K
	@python3 seedrecover.py --no-dupchecks --mnemonic-length 12 --language EN --dsw --wallet-type bip39 --addrs bc1q7kw2uepv6hfffhhxx2vplkkpcwsslcw9hsupc6 --addr-limit 1 --passphrase-list k.txt --multi-file-seedlist --listseeds --tokenlist additional.txt




additional:
	@echo additional
	@cat $(PWD)/tokens_seed.txt > $(PWD)/additional.txt
	@$(PWD)/additional.sh lib/bitcoinlib/wordlist/english.txt >> $(PWD)/additional.txt
	@$(PWD)/additional.sh lib/bitcoinlib/wordlist/english.txt >> $(PWD)/additional.txt
	@$(PWD)/additional.sh lib/bitcoinlib/wordlist/english.txt >> $(PWD)/additional.txt
	@$(PWD)/additional.sh lib/bitcoinlib/wordlist/english.txt >> $(PWD)/additional.txt
	@$(PWD)/additional.sh lib/bitcoinlib/wordlist/english.txt >> $(PWD)/additional.txt
	@$(PWD)/additional.sh lib/bitcoinlib/wordlist/english.txt >> $(PWD)/additional.txt
	@$(PWD)/additional.sh lib/bitcoinlib/wordlist/english.txt >> $(PWD)/additional.txt
	@$(PWD)/additional.sh lib/bitcoinlib/wordlist/english.txt >> $(PWD)/additional.txt
	@$(PWD)/additional.sh lib/bitcoinlib/wordlist/english.txt >> $(PWD)/additional.txt

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
