# PowerShell script to continuously execute pip commands and handle errors

# Welcome message
Write-Host "Welcome To The PIP Commands Runner"
Write-Host "To Start Type Help To Learn The Commands"
Write-Host "If You Already Know The Commands Type One"

# Start an infinite loop
while ($true) {
    # Prompt the user to enter a pip command
    $userCommand = Read-Host "Please enter the pip command you want to execute (or type 'exit' to quit)"

    # Check if the user wants to exit the loop
    if ($userCommand -eq 'exit') {
        Write-Host "Exiting the pip command executor."
        break
    }

    # Try to execute the pip command and catch any errors
    try {
        Invoke-Expression "pip $userCommand"
    } catch {
        Write-Host "There was an error executing the pip command: $_"
    }
}

# End of script
Write-Host "Thank you for using the pip command executor!"


