
SRC_FOLDER=src
STY_FOLDER=sty
BUILD_FOLDER=build

LOG_FILE=gen.log
SOURCE_FILE=cv.tex
OUTPUT_FILE=cv.pdf

COMPILATION_FLAGS=-file-line-error -interaction=nonstopmode

all: clean
	@cp -r $(SRC_FOLDER) $(BUILD_FOLDER)
	@cd $(BUILD_FOLDER) 										\
		&& export TEXINPUTS=.:./$(STY_FOLDER):					\
		&& echo TEXINPUTS=$$TEXINPUTS							\
		&& pdflatex $(COMPILATION_FLAGS) $(SOURCE_FILE) || true	\
		&& cp $(OUTPUT_FILE) ..

clean:
	@test -d $(BUILD_FOLDER) && rm -rf $(BUILD_FOLDER) || true
