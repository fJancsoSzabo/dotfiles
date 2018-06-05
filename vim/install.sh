#!/usr/bin/env bash

source install/helpers

dst="${HOME}/.vim"
mkdir -p ${dst}

lnx "${FILEPATH}/groovy.vim" "${dst}/groovy.vim" "groovy.vim"
lnx "${FILEPATH}/filetype.vim" "${HOME}/.vim/filetype.vim" "filetype.vim"
lnx "${FILEPATH}/scripts.vim" "${HOME}/.vim/scripts.vim" "scripts.vim"

