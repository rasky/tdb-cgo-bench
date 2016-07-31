all: docker bench

docker:
	docker build -t tdb_bench .

bench:
	@echo "******** BENCH C CODE ***********"
	@docker run -t tdb_bench sh -c "time capp wikipedia-history-small.tdb"
	@docker run -t tdb_bench sh -c "time capp wikipedia-history-small.tdb"
	@docker run -t tdb_bench sh -c "time capp wikipedia-history-small.tdb"
	@docker run -t tdb_bench sh -c "time capp wikipedia-history-small.tdb"
	@docker run -t tdb_bench sh -c "time capp wikipedia-history-small.tdb"

	@echo "******** BENCH GO CODE ***********"
	@docker run -t tdb_bench sh -c "time app wikipedia-history-small.tdb"
	@docker run -t tdb_bench sh -c "time app wikipedia-history-small.tdb"
	@docker run -t tdb_bench sh -c "time app wikipedia-history-small.tdb"
	@docker run -t tdb_bench sh -c "time app wikipedia-history-small.tdb"
	@docker run -t tdb_bench sh -c "time app wikipedia-history-small.tdb"
