PAGES = README.md ex1.md ex2.md ex3.md ex4.md ex5.md ex6.md ex7.md ex8.md ex9.md
BASE_NAME = ll50-meter-plugins
SOURCE_DOC = $(BASE_NAME).md
TARGET_DOC = $(BASE_NAME).docx
doc:
	cat $(PAGES) > $(SOURCE_DOC)
	pandoc -f markdown -t docx $(SOURCE_DOC) -o $(TARGET_DOC)

clean:
	$(RM) $(SOURCE_DOC) $(TARGET_DOC)
