pr de zipsaveold
* Save as zipped dataset in Stata version 7 format
*! 0.1 HS, Nov 7, 2007
*! 0.3 HS, Sep 7, 2009 Allow filenames enclosed in quotes 
version 9.2
syntax [anything(name=file)] [, replace *]
qui {

  if `"`file'"' == "" {
    local file = "$S_FN"
    if `"`file'"' == "" {
      di in red "invalid file specification"
      exit
    }
  }

  _gfn, filename(`file') extension(.dta.zip)
  local file = r(fileout)

  _ok2save, filename(`file') `replace'
  
  tempfile tmpdat

  * Only difference to zipsave is using -saveold- here:
  saveold `tmpdat', `options'
  
  shell zip -j - `tmpdat' > "`file'"
  global S_FN = "`file'"

  noi di in green "data compressed with zip and saved in old format in file `file'"
  
}
end
* Create filename to use with compressed save/use (gzsave and zipsave)
*! 0.1 HS, Oct 1, 2009
pr de _gfn, rclass
version 9.2
syntax , filename(string asis) extension(string)

* Only check for punctuation in filename, not in path
_getfilename `filename'

* Remove opening and closing quotes, if any, from filename
if strpos(`"`filename'"', char(34)) ~= 0 {
  local filename = subinstr(`filename', char(34), "", .)
}

if index(r(filename), ".") == 0 {
  local filename "`filename'`extension'"
}
return local fileout `"`filename'"'


end

  
* OK to save filename with compressed save? (gzsave and zipsave)
*! 0.1 HS, Oct 1, 2009
pr de _ok2save
version 9.2
syntax , filename(string asis) [replace]

  if "`replace'" == "" {
    confirm new file "`filename'"
  }
  else {
    capture confirm file "`filename'"
    if _rc == 0 {
      erase "`filename'"
    }
    else {
      di in green `"(note: file `filename' not found)"'
    }
  }


end

  
