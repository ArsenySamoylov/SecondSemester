CFLAGS  := -g   -D _DEBUG  -std=c++20 		-Wall  -Wc++14-compat  				-Wextra  				-Wcast-qual    				-Wcast-align   					   \
				-Weffc++   -Wfloat-equal 	-Wchar-subscripts  					-Wconversion   			-Woverloaded-virtual   		-Wstack-protector				   \
				-Wformat-nonliteral    		-Wempty-body     					-Wformat-security       -Wformat=2	   				-Wformat-signedness	   			   \
			    -Wlogical-op           		-Wopenmp-simd    					-Wnon-virtual-dtor 	    -Winline	   				-Wconditionally-supported          \
				-Wpacked   -Wpointer-arith  -Winit-self       	 				-Wredundant-decls       -Wshadow 					-Wmissing-declarations 			   \
				-Wsign-conversion      		-Wsign-promo     					-Wstrict-null-sentinel  -Wstrict-overflow=2			-Wsuggest-attribute=noreturn  	   \
				-Wsuggest-final-methods     -Wsuggest-final-types 				-Wundef 				-Wctor-dtor-privacy 		-Waggressive-loop-optimizations    \
				-Wsuggest-override     		-Wswitch-default 					-Wswitch-enum           -Wsync-nand    				-flto-odr-type-merging 			   \
				-Wunreachable-code     		-Wunused         					-Wuseless-cast 		    -Wvariadic-macros 			-fstrict-overflow 				   \
				-Wno-literal-suffix    		-Wno-missing-field-initializers		-Wno-narrowing 			-Wno-old-style-cast 		-fstack-protector				   \
				-Wno-varargs           		-fcheck-new     					-fsized-deallocation    -fno-omit-frame-pointer 									   \
				-Wlarger-than=8192     		-Wstack-usage=8192 					-pie -fPIE 				-fext-numeric-literals


optimization: separator clear
	@clear
	@g++ -O2 -mavx2 -I./include ./src/main.cpp ./src/gui.cpp ./src/Mandelbrot2.cpp ./src/Mandelbrot3.cpp ./src/Mandelbrot.cpp ./src/Measure_time.cpp -o simd.out -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio $(CFLAGS)

no_optimization: separator clear
	@clear
	@g++  -mavx2 -I./include ./src/main.cpp ./src/gui.cpp ./src/Mandelbrot2.cpp ./src/Mandelbrot3.cpp ./src/Mandelbrot.cpp ./src/Measure_time.cpp -o simd.out -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio $(CFLAGS)

run:
	./simd.out

clear:
	rm -rf simd.out

clear_screen:
	@clear

separator:
	@echo -------------------------------------------------------------------
