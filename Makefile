.POSIX:
.PHONY:

CRYSTAL = crystal
OPTS =

-include local.mk

test: .PHONY
	$(CRYSTAL) run spec/tokenizer/*_spec.cr -- $(OPTS)
