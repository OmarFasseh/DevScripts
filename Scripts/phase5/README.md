# Spotify CUFE installation and setting up Azure
> This requires a new azure instance with no other prerequisites 

## Table of contents
* [Connecting to the VM](#Connecting-to-the-vm)
* [Initialization](#Initialization)
* [Running spotify](#Running-spotify)



## Connecting to the vm
1. Open an ssh client of your choice (you can use windows powershell or linux terminal)
2. Provide a path to your SSH private key file or simply put any path if you don't have one
3. And use the example command below to connect to your VM.
    ```bash
    ssh -i <private key path> YOUR_USER_NAME@YOUR_VM_IP
    ```


## Initialization
* Run the Azure.sh file from the terminal using 
    ```bash
    $ chmod +x Azure.sh
    $ sudo ./Azure.sh
    ```
* You can also manually run the scripts individually from the Azure.txt file 
* You can copy the file to your VM using secure copy command
    - `scp LOCAL_LOCATION/Azure.sh YOUR_USER_NAME@YOUR_VM_IP:LOCATION_ON_VM/` 

## Running spotify

 1. **start byobu**:  `$byobu`
    * you can press shift+f1 for help
    * `ctrl +shift +f2` to create new sessions and `alt + up/down` to switch between them
2. **Clone the app:** 
    ```bash
    $ git clone
    $ git clone 
    ```
3. set up the needed files
    `$ cd Spotify_System424`
    `$ sudo cp Dev/default /etc/nginx/sites-available/default` to copy the nginx configurations 
    **make sure to set the root in the "default" file as shown `root /home/USERNAME/Spotify_System424/React/build;`**
    `$ sudo nginx -t` to test the config files
    `$ sudo nginx -s reload` to reload the changes
    `$ cp Dev/seed.sh Back\ End/ ` to copy the seeding script into the backend directory

4. `cd React` and run the following commands to build the front-end and `cd ..` after running them to return to the previous directory
    ```bash
    $ npx npm-force-resolutions
    $ npm install
    $ yarn build
    $ sudo nginx -s reload
    ```
5. `$ cd Back\ End ` and run the following commands to start the back-end
    `$ npm install` to install the node modules 
    `$ sudo mongod` to start mongodb 
    `ctrl+shift +f2` to create a new session in byobu to continue running the commands
    `$ ./seed.sh` to seed the database 
    `$ npm start` to start the program
 
 6. After finishing press `F6` to detached from the byobu session and `$ exit` to logout from the ssh 


