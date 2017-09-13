
thesis: thesis_darachmiller.html

thesis_darachmiller.html: thesis_darachmiller.md
	pandoc -o $@ $<
