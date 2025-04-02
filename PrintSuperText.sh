#!/bin/zsh

# _______________________________________________________________________________VARIABLES

declare -A alphabet

alphabet['A']=\
"████████╗
██╔═══██║
██║   ██║
████████║
██╔═══██║
╚═╝   ╚═╝
"
alphabet['B']=\
"████████╗
██╔═══██║
██████╔═╝
██╔═══██╗
████████║
╚═══════╝
"
alphabet['C']=\
"████████╗
██╔═════╝
██║      
██║      
████████╗
╚═══════╝
"
alphabet['D']=\
"██████╗  
██╔═══██╗
██║   ██║
██║   ██║
██████╔═╝
╚═════╝  
"
alphabet['E']=\
"████████╗
██╔═════╝
████████╗
██╔═════╝
████████╗
╚═══════╝
"
alphabet['F']=\
"████████╗
██╔═════╝
████████╗
██╔═════╝
██║      
╚═╝      
"
alphabet['G']=\
"████████╗
██╔═════╝
██║ ████╗
██║ ╚═██║
████████║
╚═══════╝
"
alphabet['H']=\
"██╗   ██╗
██║   ██║
████████║
██╔═══██║
██║   ██║
╚═╝   ╚═╝
"
alphabet['I']=\
"██╗
██║
██║
██║
██║
╚═╝
"
alphabet['J']=\
"██████╗
╚═══██║
    ██║
██╗ ██║
██████║
╚═════╝
"
alphabet['K']=\
"██╗   ██╗
██║ ██╔═╝
████╔═╝  
██╔═██╗  
██║ ╚═██╗
╚═╝   ╚═╝
"
alphabet['L']=\
"██╗      
██║      
██║      
██║      
████████╗
╚═══════╝
"
alphabet['M']=\
"██╗     ██╗
████╗ ████║
██╔═██╔═██║
██║ ╚═╝ ██║
██║     ██║
╚═╝     ╚═╝
"
alphabet['N']=\
"██╗     ██╗
████╗   ██║
██╔═██╗ ██║
██║ ╚═████║
██║   ╚═██║
╚═╝     ╚═╝
"
alphabet['O']=\
"████████╗
██╔═══██║
██║   ██║
██║   ██║
████████║
╚═══════╝
"
alphabet['P']=\
"████████╗
██╔═══██║
████████║
██╔═════╝
██║      
╚═╝      
"
alphabet['Q']=\
"  ████╗  
██╔═══██╗
██║   ██║
██║   ██║
╚═██████║
  ╚═════╝
"
alphabet['R']=\
"██████╗  
██╔═══██╗
████████║
██╔═██╔═╝
██║ ╚═██╗
╚═╝   ╚═╝
"
alphabet['S']=\
"  ██████╗
██╔═════╝
████████╗
╚═════██║
██████╔═╝
╚═════╝  
"
alphabet['T']=\
"████████╗
╚══██╔══╝
   ██║   
   ██║   
   ██║   
   ╚═╝   
"
alphabet['U']=\
"██╗   ██╗
██║   ██║
██║   ██║
██║   ██║
████████║
╚═══════╝
"
alphabet['V']=\
"██╗   ██╗
██║   ██║
██║   ██║
██║ ██╔═╝
████╔═╝  
╚═══╝    
"
alphabet['W']=\
"██╗     ██╗
██║     ██║
██║     ██║
██║ ██╗ ██║
██████████║
╚═════════╝
"
alphabet['X']=\
"██╗     ██╗
╚═██╗ ██╔═╝
  ╚═██╔═╝  
  ██╔═██╗  
██╔═╝ ╚═██╗
╚═╝     ╚═╝
"
alphabet['Y']=\
"██╗     ██╗
╚═██╗ ██╔═╝
  ╚═██╔═╝  
    ██║    
    ██║    
    ╚═╝    
"
alphabet['Z']=\
"████████╗
╚═════██║
  ████╔═╝
██╔═══╝  
████████╗
╚═══════╝
"
alphabet['0']=\
"████╗  
██╔═██╗
██║ ██║
██║ ██║
╚═████║
  ╚═══╝
"
alphabet['1']=\
"████╗
╚═██║
  ██║
  ██║
  ██║
  ╚═╝
"
alphabet['2']=\
"██████╗
╚═══██║
██████║
██════╝
██████╗
╚═════╝
"
alphabet['3']=\
"██████╗
╚═══██║
  ████║
  ╚═██║
██████║
╚═════╝
"
alphabet['4']=\
"██╗ ██╗
██║ ██║
██████║
╚═══██║
    ██║
    ╚═╝
"
alphabet['5']=\
"██████╗
██╔═══╝
██████╗
╚═══██║
██████║
╚═════╝
"
alphabet['6']=\
"  ████╗
██╔═══╝
██████╗
██╔═██║
██████║
╚═════╝
"
alphabet['7']=\
"██████╗
╚═══██║
  ██╔═╝
██╔═╝  
██║    
╚═╝    
"
alphabet['8']=\
"██████╗
██╔═██║
██████║
██╔═██║
██████║
╚═════╝
"
alphabet['9']=\
"██████╗
██╔═██║
██████║
╚═══██║
████╔═╝
╚═══╝  
"
alphabet[' ']=\
"        
        
        
        
        
        
"
alphabet['fl']=\
"████████
████████
████████
████████
████████
████████
"

name="01edu"
color="0;99;249"

printDelay=0.055
deleteDelay=0.02
blinkDelay=0.3

_char_height=6
_sign_offset=1
_first_char_row=$((1+$_sign_offset))
_last_char_row=$(($_first_char_row+$_char_height-1))
_char_size=$(($_last_char_row+1))

rows[1]="\033[1;38;2;255;0;128;48;2;0;0;0mCreated by lignigno\033[0m"

# _________________________________________________________________________________SUBCODE

_add_char() {
	char=${alphabet['$1']}

	for i in {$_first_char_row..$_last_char_row}; do
		rows[$i]+="$(echo "$char" | head -n $(($i-$_sign_offset)) | tail -n 1)"
	done

	block="$(echo "$char" | head -n 1 | tail -n 1)"
	num=${#block}
	num=$(printf "%02d\n" "$num")
	block=$(printf '%*s' $((${#block}-2)) | tr ' ' '_')
	block+=$num
	rows[$_char_size]+=$block

	stty cols ${#rows[$_char_size]}
}

_cut_last_char() {
	num="${rows[$_char_size]: -2}"

	for i in {$_first_char_row..$_char_size}; do
		rows[$i]="${rows[$i]:0:${#rows[$i]}-num}"
	done
}

_print_all() {
	printf "${rows[1]}\n"
	# printf "\033[1;38;2;0;99;249m"
	for i in {$_first_char_row..$_last_char_row}; do
		printf "${rows[$i]}\n"
	done
}

_clr_input() {
	clear
}

print_char() {
	_cut_last_char
	_add_char "$1"
	_add_char fl
	printf "\033[u"
	_print_all
}

delete_char() {
	_cut_last_char
	_cut_last_char
	_add_char fl
	printf "\033[u"
	_clr_input
	printf "\033[u"
	_print_all
}

show_cursor() {
	_add_char fl
	printf "\033[u"
	_print_all
}

hide_cursor() {
	_cut_last_char
	printf "\033[u"
	_clr_input
	printf "\033[u"
	_print_all
}

# _______________________________________________________________________________MAIN CODE

_clr_input
printf "\033[s"
# printf "\033[?25l"

if [ -n "$1" ]; then
	name="$1"
fi

if	[ "$#" -eq 4 ] &&
	[ -n "$2" ] && [[ "$2" =~ ^[0-9]+$ ]] && [ "$2" -ge 0 ] && [ "$2" -le 255 ] &&
	[ -n "$3" ] && [[ "$3" =~ ^[0-9]+$ ]] && [ "$3" -ge 0 ] && [ "$3" -le 255 ] && 
	[ -n "$4" ] && [[ "$4" =~ ^[0-9]+$ ]] && [ "$4" -ge 0 ] && [ "$4" -le 255 ]; then
	color="$2;"
	color+="$3;"
	color+="$4"
fi


# first print

text=$(printf "hello" | tr 'a-z' 'A-Z')

show_cursor

for ((j=0; j<${#text}; j++)); do
	print_char "${text:$j:1}"

	sleep $printDelay
done

# blink

sleep $blinkDelay
for i in {1..2}; do
	hide_cursor
	sleep $blinkDelay
	show_cursor
	sleep $blinkDelay
done

# deleting

for i in {1..6}; do
	delete_char
	sleep $deleteDelay
done

# last print

# sleep 0.1

# text=$(printf "$name" | tr 'a-z' 'A-Z')

# for ((j=0; j<${#text}; j++)); do
# 	print_char "${text:$j:1}"
# 	sleep $printDelay
# done

hide_cursor

printf "\033[0m"
# printf "\033[?25h"
