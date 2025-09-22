#/bin/bash
jq -r '.[] | .source_url | select(test("(?i)convocatoria") and test("(?i)capilla") and test("(?i)pdf"))' *.json | sort

