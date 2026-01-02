#!/usr/bin/env bash
if `setxkbmap 2>&1 |grep -q wayland`; then
        echo "It's WayLand. Using qdbus6";

        var_kl=$(qdbus6 --literal org.kde.keyboard /Layouts getLayoutsList|perl -nle '
                chomp;
                my $cnt = 0;
                while(/\[[^"]+"([^"]+)"/g){
                        my $m = $1;
                        print $cnt if($m =~ /us/i);
                        ++$cnt;
                }')
        echo $var_kl
        qdbus6 org.kde.keyboard /Layouts setLayout $var_kl
else
        echo "It's X.org. Using setxkbmap";

        var_kl=`setxkbmap -query |grep layout|awk '{print $2}'`;
        setxkbmap us;
        setxkbmap $var_kl
fi
