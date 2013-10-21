# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
     . ~/.bashrc
fi

#java
alias javac='javac -J-Dfile.encoding=UTF-8 Mandelbrot.java'
alias java='java -Dfile.encoding=UTF-8'