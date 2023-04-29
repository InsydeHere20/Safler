@echo off

for i in i {
    echo "Welcome to Niosem SAFLER's Special Mixed Integration Control (SMIC)"
    echo ""
    echo "==================================================================="
    echo "|              Integration Control version 0.0.1                  |"
    echo "==================================================================="
    choice "$choice"
    if $choice = 1 do {
        powershell
        iex "github.com/Niosem/Safler/IntContr-Opr/icaddscript.ps1"
    }
}