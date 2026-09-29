if exist und_atsc_env (
    rmdir /s /q und_atsc_env)
py -3.11 -m venv und_atsc_env
call und_atsc_env\Scripts\activate
python -m pip install  --force-reinstall -r requirements.txt
python -m ipykernel install --user --name und_atsc_env --display-name und_atsc_kernel
echo "ATSC Python environment setup complete!"
