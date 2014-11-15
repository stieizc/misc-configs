all: update

update: home-update etc-update

home-update:
	@for file in $$(cd home; find -name '.[^.]*'); \
		do \
		if [ ~/$$file -nt home/$$file ]; then \
			echo "Update ~/$$file"; \
			cp -r ~/$$file home; \
		fi; \
	done

etc-update:
	@for file in $$(cd etc; find -name '[^.]*'); \
		do \
		if [ etc/$$file -ot /etc/$$file ]; then \
			echo "Update /etc/$$file"; \
			cp -r /etc/$$file etc; \
		fi; \
	done
