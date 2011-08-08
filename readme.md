This project adds [Arduino] support to the vim editor. It handles syntax, compiling and generating a MakeFile.
I used [kchmck]'s readme.md as a template for this readme.

The [Arduino Hacking] article from PragPub got me on this path of creating a vim module. A very interesting read on making a more robust arduino ide.

[Arduino]: http://pragprog.com/magazines/2011-04/create-your-own-arduino-ide
[Arduino Hacking]: http://pragprog.com/magazines/2011-04/advanced-arduino-hacking
[kchmck]: https://github.com/kchmck

### Simple Installation

Installing the typical way takes less time, but leaves plugin files scattered.

1. Download the latest zipball off this plugin's [vim.org page][zipball].

2. Extract the archive into `~/.vim/`:

        unzip -od ~/.vim vim-coffee-script-HASH.zip

These steps are also used to update the plugin.

[zipball]: http://www.vim.org/scripts/script.php?script_id=3590

### Pathogen Installation

Since this plugin uses "rolling releases" based on git commits, using pathogen
and git is the preferred way to install. It takes more steps, but ends up
cleaner and easier to keep up-to-date.

1. Install tpope's [pathogen] into `~/.vim/autoload/` and add this line to your
   `vimrc`:

        call pathogen#runtime_append_all_bundles()

    Be aware that it must be added before any `filetype plugin indent on`
    lines according to the install page:

    > Note that you need to invoke the pathogen functions before invoking
    > "filetype plugin indent on" if you want it to load ftdetect files. On
    > Debian (and probably other distros), the system vimrc does this early on,
    > so you actually need to "filetype off" before "filetype plugin indent on"
    > to force reloading.

    To get the all the features of this plugin, be sure you do have a `filetype
    plugin indent on` line.

[pathogen]: http://www.vim.org/scripts/script.php?script_id=2332

2. Create, and change into, the `~/.vim/bundle/` directory:

        $ mkdir -p ~/.vim/bundle
        $ cd ~/.vim/bundle

3. Make a clone of the `vim-arduino` repository:

        $ git clone https://github.com/kingbin/vim-arduino.git

#### Updating

1. Change into the `~/.vim/bundle/vim-arduino/` directory:

        $ cd ~/.vim/bundle/vim-arduino

2. Pull in the latest changes:

        $ git pull

### Working with an Arduino Project

Ditch the Arduino IDE and start writing your code in vim!

To generate the template makefile type the following.

        :ArduinoMakeFile

You will need to double check the makefile template and update to your settings.

Create your file with a pde extension. 

        $ vim HelloWorld.pde

The `<F9>` key compiles the current MakeFile and parses any errors.

Make all from a pde file.

        :ArduinoMake

        :make

other command switches.
 
        :ArduinoMake all
    
        :ArduinoMake clean
    
        :ArduinoMake upload

        :ArduinoMake monitor

Again many thanks to all the different parts of work at play here. What I've done is simple. I just wanted a bundle of all the greatness I've been reading in arduino forums.


chris blazek
