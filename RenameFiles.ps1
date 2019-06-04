#Get every item in a folder
gci |%{
  #Grep for some text in every document in a folder
  $headers = select-string -Pattern '\<h2\>.*\<\/h2\>' $_.Name

  #Make sure there is a match to work with
  if($headers.length -gt 0){

    #Grab the value itself - this is important to keep from matching too much
    $section = $headers.matches[0].value

    #Chop off the <h2> and </h2> tags so we only get text
    $section = $section.substring(4,$section.length-3-6)

    #Finally, rename each file to the header text, and add .html
    rename-item -path $_.name -newname "$section.html"
  }
}
