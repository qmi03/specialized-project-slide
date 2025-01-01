all: ref
	typst c main.typ

ref:
	typst c references.typ
watch:
	typst w main.typ
