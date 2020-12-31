if [ -n "I1RodSBEZWMgMzEgMjM6NDg6NTUgVVRDIDIwMjAKW2xvbF0KdHlwZSA9IGRyb3Bib3gKY2xpZW50X2lkID0gbDN0NGZzOGpoMTY4Nm56CmNsaWVudF9zZWNyZXQgPSBsZW1qcTN5dzg1bG05N20KdG9rZW4gPSB7ImFjY2Vzc190b2tlbiI6InNsLkFvY09GSUNWRDQ3REk3Ty1LVF9FblNSUHJVRlVKcktJdk42eDUwTExYTGFEOExIanIzNXZtSF82OFFaX3BiZThUMmtURzlRUFdlQWkzb1hYWW5WaUV3M3oxLVpXbGN4Qlp3MUxIaExwb3NpeUpta1FuVHVSRnNrdDY3ZlRCQjl5TUVvREFrMCIsInRva2VuX3R5cGUiOiJiZWFyZXIiLCJleHBpcnkiOiIyMDIxLTAxLTAxVDAzOjIzOjIwLjY1MTcxNTkyMVoifQo=" ] && [ -n "lol" ] ; then
    pgrep rclone
    if [ $? -eq 0 ]; then
        echo "already mounred skipping"
    else 
        echo $BASE_CONF | base64 -d > .rclone.conf
        rclone serve sftp  $CLOUD_NAME:$SUB_DIR --no-auth --vfs-cache-mode full&
    fi
        
else 
    echo "CLOUD NOT MOUNTED" > /home/coder/CLOUD_NOT_MOUNTED
fi

