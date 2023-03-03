SHELL=/bin/bash

.PHONY: add_stub_stub1
add_stub_stub1:
	git submodule update --init -- stubs/test_stub1

.PHONY: remove_stub_1
remove_stub_1:
	rm -rf stubs/test_stub1/..?* stubs/test_stub1/.[!.]* stubs/test_stub1/*

.PHONY: add_stub_stub2
add_stub_stub2:
	git submodule update --init -- stubs/test_stub2

.PHONY: remove_stub_2
remove_stub_2:
	rm -rf stubs/test_stub2/..?* stubs/test_stub2/.[!.]* stubs/test_stub2/*


.PHONY: add_all_stubs
add_all_stubs: add_stub_1
add_all_stubs: add_stub_2

.PHONY: remove_all_stubs
remove_all_stubs: remove_stub_1
remove_all_stubs: remove_stub_2

