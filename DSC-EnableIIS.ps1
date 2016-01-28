#
# DSC_EnableIIS.ps1
#
Configuration EnableIIS
{
    Import-DscResource -Module xWebAdministration
    Node localhost
    {
        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

        # Install the ASP .NET 4.5 role
        WindowsFeature AspNet45
        {
            Ensure          = "Present"
            Name            = "Web-Asp-Net45"
        }

    }
}