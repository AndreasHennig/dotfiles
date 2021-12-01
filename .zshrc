export JAVA_HOME=$(/usr/libexec/java_home)

export ANDROID_HOME=~/Library/Android/sdk
export XAMARIN_ANDROID_HOME=~/Library/Developer/Xamarin/android-sdk-macosx/

export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

alias ls='ls -lisaG'

PS1='%1~: '

echo "custom .zshrc loaded"
