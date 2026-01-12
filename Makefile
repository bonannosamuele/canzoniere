build:
	@rm -f canzoniere.pdf
	docker run -v ${PWD}:/data -w /data chordpro/chordpro:latest chordpro canzoni/**/*.cho --output=canzoniere.pdf --config=modern3 --transcode=latin --config=chordpro.json --front-matter=front.pdf --back-matter=back.pdf
