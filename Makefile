build:
	@rm -f canzoniere.pdf
	docker run -v ${PWD}:/data -w /data chordpro/chordpro:latest chordpro --filelist=canzoniere.txt --output=canzoniere.pdf --config=modern3 --transcode=latin --config=chordpro.json
