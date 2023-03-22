# Annual Folders

Creates this year's annual folders across an existing File Structure, by replicating the folders from last year.
* Looks across a File Structure and identifies any folders with a title that corresponds to last calendar year. 
* Checks whether a corresponding folder exists for this current year, and if not, it creates one.

## Usage

Clone the repository.

To create new folders across your File Structure under 'C:\Users\Username\Documents', run the script as follows:

```bash
.\annual-folders.ps1
```

Otherwise, specify the desired target File Structure as a command line argument:

```bash
.\annual-folders.ps1 'C:\Users\Username\Example\File\Path'
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)