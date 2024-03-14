# Bash Time Tracker

Tracks sessions (e.g. work sessions) and allows printing of total time across 
sessions.

This is more or less an experiment in stringing together small bash scripts 
into a useful application.

The three component bash scripts this "app" uses:

[bash-stopwatch](https://github.com/npbreland/bash-stopwatch)
[sum-files](https://github.com/npbreland/sum-files)
[format-seconds](https://github.com/npbreland/format-seconds)

## Set up

Clone the above component repos and load their paths in your environment, e.g.:

```
# timetracker
export STOPWATCH_PATH="$HOME/repos/bash-stopwatch/bash-stopwatch.sh"
export SUM_FILES_PATH="$HOME/repos/sum-files/sum-files.sh"
export FORMAT_SECONDS_PATH="$HOME/repos/format-seconds/format-seconds.sh"
```

(Optional) alias the scripts in this repo for easier use, e.g.:
```
alias tt="/home/user/repos/bash-time-tracker/track-time.sh"
alias st="/home/user/repos/bash-time-tracker/show-time.sh" 
```

## Usage

Make a directory where your time files will be stored. Time files are just files
containing the number of seconds during a session. I start a new directory for 
each project I'm working on to track the amount of time I spend per project.

```
mkdir time/my-project
```

Now you can start tracking.

(Note below I am using the aliases defined above)
```
tt  time/my-project
```

This will start a stopwatch that will read out the elapsed time every five
seconds. When you are done, just send a SIGINT (Ctrl+C).

You'll see that time file is created in the specified directory. The name of the
file will be time at which the session started.

When you want to add up the time contained in the files of a particular 
directory, you can do the following:

```
st time/my-project
```
