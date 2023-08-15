export:
    #!/usr/bin/env bash
    for f in `find -name '*.svg'`
    do
        inkscape --export-width=512 --export-type=png $f
    done
    mkdir export
    for f in `find -name '*.png'`
    do
        n=`basename $f`
        mv $f 'export/'$n 
    done

clean:
    rm -r 'export'