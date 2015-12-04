#!/bin/sh
for sjis_name in `find .`
do
  utf8_name=`echo "${sjis_name}" | iconv -f SJIS -t UTF-8`
  if [ "${sjis_name}" != "${utf8_name}" ]; then
    mv "${sjis_name}" "${utf8_name}"
  fi
done
