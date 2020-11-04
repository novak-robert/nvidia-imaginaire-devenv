FILE=$HOME/Downloads/cudnn-11.1-linux-x64-v8.0.4.30.tgz
if [ -f "$FILE" ]; then
    # unpack cudnn file
    cd $HOME/Downloads
    tar xvf cudnn-11.1-linux-x64-v8.0.4.30.tgz

    # install CUDNN components
    sudo cp -P cuda/include/cudnn.h /usr/local/cuda/include
    sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64
    sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
else
    echo "Missing cuDNN installation package!!!"
    echo "  Download cudnn-11.1-linux-x64-v8.0.4.30.tgz file from - https://developer.nvidia.com/cudnn-download-survey"
    echo "  Target folder - $FILE"
fi