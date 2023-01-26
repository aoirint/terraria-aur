.PHONY: backup-worlds
backup-worlds:
	mkdir -p backups
	zip "backups/First_World2_$(shell date '+%Y-%m-%d_%H%M%S').wld.zip" "./data/Worlds/First_World2.wld"

.PHONY: dump-logs
dump-logs:
	docker compose logs -t > logs/$(shell date '+%Y-%m-%d_%H-%M-%S').log
