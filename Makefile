#!/bin/bash
all: resume_2019-09-18.html resume.html index.html

index.html: resume.html
	cp resume.html index.html

resume.html:
	$(HBC) --data resume_full.json resume.hbs

resume_2019-09-18.html:
	$(HBC) --data resume_2019-09-18.json --output resume_2019-09-18 resume.hbs

HBC = hbs --helper ./helpers/ifEquals.js --helper ./helpers/breaklines.js --helper ./helpers/monthFormat.js
