OPEN=open

help:
	@echo make postgres_up
	@echo make postgres_down

	@echo make neo4j_up
	@echo make neo4j_down
	@echo make neo4j_ui

	@echo make tg_up
	@echo make tg_down
	@echo make tg_ui

postgres_up:

postgres_down:

neo4j_up:
	docker-compose -f neo4j/neo4j.yml up

neo4j_down:
	docker-compose -f neo4j/neo4j.yml down

neo4j_ui:
	$(OPEN) http://localhost:7474

tg_up:
	docker-compose -f tg/tigergraph.yml up

tg_down:
	docker-compose -f tg/tigergraph.yml down

tg_ui:
	$(OPEN)  http://localhost:14240
