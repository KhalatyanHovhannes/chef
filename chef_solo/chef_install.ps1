# https://docs.chef.io/windows/

# For more info https://docs.microsoft.com/en-us/windows/win32/msi/command-line-options 
msiexec /qn /i C:\Users\Administrator\Downloads\chef-client-14.15.6-1-x64.msi
ADDLOCAL="ChefClientFeature,ChefSchTaskFeature,ChefPSModuleFeature"


# for more info https://docs.microsoft.com/en-us/windows/win32/taskschd/schtasks
SCHTASKS.EXE /CREATE /TN ChefClientSchTask /SC MINUTE /MO 30 /F /RU "System" /RP /RL HIGHEST /TR "cmd /c \"C:\opscode\chef\embedded\bin\ruby.exe C:\opscode\chef\bin\chef-client -L C:\chef\chef-client.log -c C:\chef\client.rb\""

cd C:\chef\cookbooks

chef-solo -c ./solo.rb -j ./node.json