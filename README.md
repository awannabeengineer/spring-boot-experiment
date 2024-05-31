# spring boot build/deploy experiment

dev
nix-shell
mvn spring-boot:run

build:
mvn package

deploy:
docker build -t spring-boot-experiment .
docker run -p localport:8060 spring-boot-experiment
