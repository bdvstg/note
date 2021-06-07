# fetch images from html

## use tools

- create list file
    - grep, awk, sed
- download
    - wget, aria2

## step1. create list file

1. download the html
    - save as a html
    - or some page use js to download the image list, you may save nothing
        - in this case, after browser load complete, press F12 to enter develop mode
        - right click to <body>, copy element, paste to txt file
        - (I'm using Chrome)
2. split to per line for each image
    - test by `sed -re 's/(<img)/\n\1/g' <html file>`
    - if ok, use '>' to save it, `sed -re 's/(<img)/\n\1/g' <html file> > s1.txt`
3. grep url part
    - `grep s1.txt -e "\/\/.*\.jpg" -o`, depend on your format, and write it to s2.txt
4. add what you need
    - in my case, I'm lost 'http:'
        - `awk '{print "http:" $1}'` s2.txt
    - or also need rename by order for aria2c
        - `awk '{print "http:" $1 "\n\tout=" NR ".jpg"}'` s2.txt
    - if all done, save to s3.txt

## step2. download it

- aria2 able download multiple file at same time
    - `aria2c -i s3.txt -x <num of thread>`
- or use wget download one file for each time
    - `wget -i s3.txt`
