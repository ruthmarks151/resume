#!/bin/bash
all: resume_2019-09-18.html resume_2020-01-05.html resume.html index.html

index.html: resume.html
	cp resume.html index.html

resume.html: resume.hbs resume_full.json
	$(HBC) --data resume_full.json resume.hbs

resume_2019-09-18.html: resume.hbs resume_2019-09-18.json
	$(HBC) --data resume_2019-09-18.json --output resume_2019-09-18 resume.hbs

resume_2020-01-05.html: resume.hbs resume_2019-09-18.json
	$(HBC) --data resume_2020-01-05.json --output resume_2020-01-05 resume.hbs

resume_2021-07-13.html: resume.hbs resume_2021-07-13.json
	$(HBC) --data resume_2021-07-13.json --output resume_2021-07-13 resume.hbs

HBC = hbs --helper ./helpers/ifEquals.js --helper ./helpers/breaklines.js --helper ./helpers/monthFormat.js
