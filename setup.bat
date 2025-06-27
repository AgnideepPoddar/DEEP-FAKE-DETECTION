@echo off

:: Download the dataset
kaggle datasets download ameencaslam/ddp-v4-models

:: Unzip the models
powershell -Command "Expand-Archive -Path ddp-v4-models.zip -DestinationPath ddp-v4-models"

:: Rename the folder
rename ddp-v4-models converted_models

:: Cleanup
del ddp-v4-models.zip

echo Setup completed successfully.