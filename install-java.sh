# Arguments
JAVA_DIR=$1
MAVEN_DIR=$2

# Extract and move Java
tar -xvzf "$JAVA_DIR"/jdk*.tar.gz -C "$JAVA_DIR"
JDK_FOLDER=$(find "$JAVA_DIR" -maxdepth 1 -type d -name "jdk*" | head -n 1)

sudo mv "$JDK_FOLDER" /usr/lib/jvm/
JDK_PATH=$(find /usr/lib/jvm/ -maxdepth 1 -type d -name "jdk*" | head -n 1)

# Set Java alternatives
sudo update-alternatives --install "/usr/bin/java" "java" "$JDK_PATH/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "$JDK_PATH/bin/javac" 1
sudo update-alternatives --set java "$JDK_PATH/bin/java"
sudo update-alternatives --set javac "$JDK_PATH/bin/javac"

# Check versions
java -version
javac -version

# Extract and move Maven
tar -xvzf "$MAVEN_DIR"/apache-maven*.tar.gz -C "$MAVEN_DIR"
MAVEN_FOLDER=$(find "$MAVEN_DIR" -maxdepth 1 -type d -name "apache-maven*" | head -n 1)

sudo mv "$MAVEN_FOLDER" /opt/
