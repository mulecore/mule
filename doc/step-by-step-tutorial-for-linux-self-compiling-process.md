  # SELF-COMPILING MULE CORE WALLET FOR UBUNTU 18.04

  These are detailed step-by-step instructions for beginners on how to self-compile MULE Core Wallet on Ubuntu Linux 18.04 directly from Master branch. Even if you are using Windows or any other operating system, you can run Ubuntu 18.04 on Virtual Machine. This tutorial will not cover Virtal Machine setup, but you can follow this detailed tutorial on how to setup Ubuntu 18.04 using VirtualBox:
  [YouTube step by step tutorial](https://www.youtube.com/watch?v=QbmRXJJKsvs)

  This tutorial is intended for anyone who is willing to help with testing of latest features on **testnet** that MULE Core Developers are planning to implement on MULE mainnet. If you find any bugs, please report them directly on MULE Github:

  https://github.com/MULE-Project/MULE/issues

  **NOTE:** I wouldn't recommend doing this on the same machine where you are running your main MULE wallet, not to break something and lose/damage your wallet.dat file. If you are doing it, please make sure that you have backup of your wallet.dat file safely stored somewhere before starting this. It's safer to run it on a different machine or Virtual Machine.

  ---------------------------------------------------------

  ## Let's start...

  ## COMPILING THE WALLET FOR THE FIRST TIME:

  Open the terminal (command line) on Ubuntu 18.04. Type in the commands line by line as following:

  ```
  sudo apt-get update && sudo apt-get upgrade -y
  sudo apt-get install build-essential libtool bsdmainutils autotools-dev autoconf pkg-config automake python3 -y
  sudo apt-get install libssl-dev libgmp-dev libevent-dev libboost-all-dev software-properties-common -y
  sudo add-apt-repository ppa:bitcoin/bitcoin
  sudo apt-get update && sudo apt-get upgrade -y
  sudo apt-get install libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libzmq3-dev libsodium-dev cargo -y
  sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 libqt5svg5-dev libqt5charts5-dev qttools5-dev -y
  sudo apt-get install qttools5-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev git -y
  git clone https://github.com/mule-project/mule.git MULE
  cd MULE
  ./autogen.sh && ./configure
  make -j$(nproc)
  ./src/qt/mule-qt --testnet &
  ```
  --------------------------------------------

  **Congratulations, you have successfully compiled and started MULE Qt Core Wallet!**

  **That's it, play around with the latest version of MULE Core Wallet directly compiled from master branch!**

  **NOTE:** If you are testing the wallet through terminal (command line) only, to start the wallet use the `./src/qt/pivxd --testnet` command instead of the last line (`./src/qt/mule-qt --testnet &`).

  ---------------------------------------------

  ## COMPILING WHEN YOU HAVE ALREADY COMPILED THE WALLET THIS WAY:

  Go inside MULE directory:
  ```
  cd MULE
  git pull origin master
  make -j$(nproc)
  ./src/qt/mule-qt --testnet &
  ```
  ---------------------------------------------

  #### **Congratulations, you have successfully compiled and started FRESH MULE Qt Core Wallet!**

  This tutorial was made and summarized following the official MULE build guide for Unix. If you are interested in details and broader understanding of what you're doing in each step, [visit the official MULE full build guide for Unix by clicking HERE](https://github.com/MULE-Project/MULE/blob/master/doc/build-unix.md).
