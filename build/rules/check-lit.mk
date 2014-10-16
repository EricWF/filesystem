.PHONY: check-lit
check-lit:
	$(CMD_VERB) $(MAKE) $(NOPRINTD) -C /home/eric/workspace/filesystem/build filesystem
	$(CMD_VERB) /usr/bin/python /home/eric/workspace/filesystem/packages/lit/lit.py $(LIT_DEFAULT_ARGS) $(LIT_INTERNAL_ARGS) $(LIT_ARGS) /home/eric/workspace/filesystem/test
