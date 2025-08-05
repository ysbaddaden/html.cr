.POSIX:
.PHONY:

CRYSTAL = crystal
CRFLAGS =
OPTS =

-include local.mk

spec: .PHONY
	$(CRYSTAL) run $(CRFLAGS) spec/tokenizer/*_spec.cr -- $(OPTS)
