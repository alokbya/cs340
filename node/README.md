# Databases

Check out the current deployment (requires VPN).
http://classwork.engr.oregonstate.edu:49204/

### Connecting to Flipper (OSU Servers)
1. Connect to the VPN.
    - Launch Cisco AnyConnect Secure Mobility Client (MacOS)
    - Enter credentials and hit submit (u: alokbya@oregonstate.edu p: ONIDPWD)
2. SSH into Flipper
    - `>> ssh alokbya@classwork.engr.oregonstate.edu`


### Connect to MySQL Server MariaDB on `classmysql.engr.oregonstate.edu`
1. From Flipper
```
>> mysql -u cs340_alokbya -h classmysql.engr.oregonstate.edu -p
>> <enter password (last 4 of ONID)>
```

2. Use correct "class database"
```
>> use cs340_alokbya
```

## Starting the app
Make sure that we are using 'forever' in order to allow this app to run when the SSH connection drops.
```
alias forever='./node_modules/forever/bin/forever'
```

Start the app.
```
forever start app.js
```

## Stopping the app
Ensure alias is still valid, and run the following.
```
forever stop app.js
```

If there are issues with that, and the web server is stil running, list the processes and terminate the correct one.
```
forever list
```

For example, stop process 0.
```
forever stop 0
```