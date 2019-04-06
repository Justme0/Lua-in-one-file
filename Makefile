all:
	gcc lua.c -o lua

test: lua
	./lua testes/coroutine.lua
	./lua testes/for.lua
	./lua testes/io.lua

clean:
	rm -f lua
