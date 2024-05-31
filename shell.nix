{pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "java-spring-boot";

  buildInputs = with pkgs; [
    jdk17
    gradle
    maven
    nodejs
    # spring-boot-cli
  ];
  
  shellHook = ''
    export JAVA_HOME=${pkgs.jdk17}
    export PATH=$JAVA_HOME/bin:$PATH

    echo "JAVA_HOME: $JAVA_HOME"
    # echo "Maven version: $(mvn -v)"
    echo "Java version: $(java -version)"
    '';
}
