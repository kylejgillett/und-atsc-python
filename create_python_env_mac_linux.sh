# if the venv already exists, rm it and start fresh
if [ -d "und_atsc_env" ]; then
    rm -rf und_atsc_env
fi

# set up venv
python3.11 -m venv und_atsc_env
source und_atsc_env/bin/activate
python3.11 -m pip install  --force-reinstall -r requirements.txt
python3.11 -m ipykernel install --user --name und_atsc_env --display-name und_atsc_kernel


# if macOS, write certifi settings to .zprofile
if [[ "$OSTYPE" == "darwin"* ]]; then
    PROFILE="$HOME/.zprofile"
    touch "$PROFILE"

    # skip the write if this was already done
    if ! grep -q "# UND ATSC Python certificates" "$PROFILE"; then
        echo "" >> "$PROFILE"
        echo "# UND ATSC Python certificates" >> "$PROFILE"
        echo 'export SSL_CERT_FILE="$(python -m certifi)"' >> "$PROFILE"
        echo 'export REQUESTS_CA_BUNDLE="$SSL_CERT_FILE"' >> "$PROFILE"
    fi
fi


echo "ATSC Python environment setup complete!"
