A workflow to execute and document text based simulations configurations and results using shell scripts and Git.

Here's an example using this [template](https://github.com/randomwangran/lengthEffect/tree/master/workingFolder).

# Requirments

Put the follwoing functions in your `~/.bashrc`:

```sh
function Allrun()
{   
    echo "You will execute the following command?" &&
    
    catAllrun &&

    while true; do
    read -p "Are you sure to run those command?" yn
    case $yn in
        [Yy]* ) sh ./Allrun.sh | while IFS= read -r line; do echo "$(date) $line"; done >> log.Allrun; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
    done &&
    
    echo "At time: $(date), following is what you just submit: " &&

    catTodayAllrunLog
    
}

function catAllrun()
{
    grep -v "^[[:space:]]*$" Allrun.sh | grep -v '^ *#' |cat
}

function catTodayAllrunLog()
{
    grep -w "$(date "+%a %b %d")" log.Allrun
}
```

# Usage

Put all the commends in the `Allrun.sh` script and then executed `Allrun.sh` by typing:

```
sh ./Allrun.sh
```
