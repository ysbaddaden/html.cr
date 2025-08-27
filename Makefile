.POSIX:
.PHONY:

CRYSTAL = crystal
CRFLAGS =
OPTS =
TESTS = spec/tokenizer/*_spec.cr spec/tree-construction/*_spec.cr

-include local.mk

spec: .PHONY
	$(CRYSTAL) run $(CRFLAGS) $(TESTS) -- $(OPTS)
