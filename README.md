This is how I issue the instruction to computers. The main reason why
I do this is because I want to track every single command to the
process.

History makes man wise. More histories make man wiser.


# How

- create a repository named `myProject` on GitHub
- execute clone script:

    `ranCloneTemplate myProject`

- open Emacs on a linux platform
- stage all the files and commit
- push 1st commit using (within magit)

    'P u'

- clear this template according to your needs

# Requirments

- [GNU/Emacs](https://www.gnu.org/software/emacs/download.html) v26.1

    Operating system;

- [Magit](https://github.com/magit/magit)

    All the git commands;

- [Projectilie](https://github.com/bbatsov/projectile)

    Finding files; Jumping between the shell scripts;

- Git >2.12

## auxiliary scripts

`ranCloneTemplate`:

```ranCloneTemplate
git clone git@github.com:randomwangran/projectTemplate.git
git clone git@github.com:randomwangran/$1.git
cd ./projectTemplate &&
rm -rf .git
cd ..
mv projectTemplate $1.bak
cp -rf $1.bak/* $1
cp $1.bak/.gitignore $1
rm -rf $1.bak
```

## a typical `.bashrc` file:

```sh
alias check='squeue -u superran'

function Allrun()
{
    echo "Are you sure to execute the following commands?" &&

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
    grep -v "^[[:space:]]*$" Allrun.sh | grep -v '^ *#' | cat
}

function catTodayAllrunLog()
{
    grep -w "$(date "+%a %b %d")" log.Allrun
}

```

# Usage

## executing jobs
write all the commends in the `Allrun.sh` script ( `workingFolder/Allrun.sh` ) and then executed `Allrun.sh` by typing:

```
sh ./Allrun.sh
```

## monitoring jobs

### check running jobs info

```
squeue -o "%.18i %.30j %.2t %.10M %.9m %.9C %.6D" -u USERNAME
```

### check finished jobs info

```
 sacct -S 2018-10-01 -u USERNAME  --format=JobID,Jobname,state,time,start,end,elapsed,nnodes,ncpus | grep -vE '(.exte+|batch|orted)'

```

## Branch
### structure of 'Master'

    On 'master', all the preparing scripts are on this branch. Only update document ( Progress.org ) on master.

    The productive jobs are only running on the 'branch'.

### structure of 'branch'

    For example, when the productive jobs are running on 'Branch-xx',
    only leave the folder working structures:

    ```sh
    git clone --single-branch --branch <branchname> git@github.com:randomwangran/projectTemplate.git
    ```

    For another example, do this to do the typing:

    ```sh
    git clone --single-branch --branch DOC git@github.com:randomwangran/projectTemplate.git

    ```

    ```sh
    .
    ├── preparingFolder
    │   ├── postProcessingScript
    │   ├── prepareScript
    │   ├── preparingCases
    │   └── runningScript
    └── workingFolder
        ├── Allrun.sh
        ├── log.Allrun
        ├── XX-A
        └── XX-B
    ```
