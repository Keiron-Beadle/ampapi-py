#/bin/bash
(
    cd ./utils && python3 ampapi_gen.py
)

python3 -m pip install --upgrade pip
python3 -m pip install --upgrade build
python3 -m build
python3 -m pip install --upgrade twine
python3 -m twine upload --repository pypi dist/*
