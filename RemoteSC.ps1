#ERASE ALL THIS AND PUT XAML BELOW between the @" "@ 
$inputXML = @"
<Window x:Class="SoftwareCenter.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:SoftwareCenter"
        mc:Ignorable="d"
        Title="MainWindow" Height="450" Width="800">
    <Grid>
        <Rectangle x:Name="Line" HorizontalAlignment="Center" Height="53" Stroke="Black" VerticalAlignment="Top" Width="800" Fill="#FF646CE4"/>
        <Button x:Name="Application_Button" Content="Applications" HorizontalAlignment="Left" Margin="0,52,0,0" VerticalAlignment="Top" Height="35" Width="166"/>
        <Button x:Name="Options_Button" Content="Options" HorizontalAlignment="Left" Margin="0,227,0,0" VerticalAlignment="Top" Height="35" Width="166"/>
        <Button x:Name="DeviceCompliance_Button" Content="Device Compliance" HorizontalAlignment="Left" Margin="0,192,0,0" VerticalAlignment="Top" Height="35" Width="166"/>
        <Button x:Name="InstallationStatus_Button" Content="Run Client Actions" HorizontalAlignment="Left" Margin="0,157,0,0" VerticalAlignment="Top" Height="35" Width="166"/>
        <Button x:Name="OperatingSystems_Button" Content="Task Sequences/OS" HorizontalAlignment="Left" Margin="0,122,0,0" VerticalAlignment="Top" Height="35" Width="166"/>
        <Button x:Name="Updates_Button" Content="Updates" HorizontalAlignment="Left" Margin="0,87,0,0" VerticalAlignment="Top" Height="35" Width="166"/>
        <Rectangle HorizontalAlignment="Left" Height="172" Margin="0,262,0,0" Stroke="#FFDDDDDD" VerticalAlignment="Top" Width="166" Fill="#FFDDDDDD"/>
        <RadioButton x:Name="All_RadioButton" Content="All" HorizontalAlignment="Left" Margin="187,72,0,0" VerticalAlignment="Top" IsChecked="True" Visibility="Hidden"/>
        <Label Content="Connect to:" HorizontalAlignment="Left" Margin="529,10,0,0" VerticalAlignment="Top" Width="76" Foreground="White"/>
        <TextBox x:Name="ConnectTo_Input" HorizontalAlignment="Left" Margin="603,10,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="126" Height="26" FontSize="16"/>
        <Button x:Name="Go_Button" Content="Go" HorizontalAlignment="Left" Margin="734,10,0,0" VerticalAlignment="Top" Height="26" Width="43">
            <UIElement.RenderTransform>
                <TransformGroup>
                    <ScaleTransform/>
                    <SkewTransform/>
                    <RotateTransform/>
                    <TranslateTransform/>
                </TransformGroup>
            </UIElement.RenderTransform>
        </Button>
        <ListBox x:Name="AllSoftwareListbox" Margin="187,92,120,86" Visibility="Hidden">

        </ListBox>
        <TextBlock x:Name="ConnectionStatus" HorizontalAlignment="Left" Margin="30,14,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Height="26" Width="258" Foreground="White" FontSize="16"/>
        <Button x:Name="DetailsButton" Content="Details" HorizontalAlignment="Left" Margin="689,92,0,0" VerticalAlignment="Top" Height="50" Width="88" Background="#FF646CE4" Foreground="White" Visibility="Hidden"/>
        <Label x:Name="AppDetailsLabel" Content="Applications &gt; Details" HorizontalAlignment="Left" Margin="203,69,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <TextBlock x:Name="ParticularApplicationTextblock" HorizontalAlignment="Left" Margin="255,119,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Height="53" Width="385" FontSize="24" Visibility="Hidden"/>
        <Button x:Name="InstallOrUninstallButton" Content="" HorizontalAlignment="Left" Margin="255,177,0,0" VerticalAlignment="Top" Width="92" Background="#FF646CE4" Foreground="White" Visibility="Hidden" Height="30" FontWeight="Bold"/>
        <Rectangle x:Name="Line1" HorizontalAlignment="Left" Height="1" Margin="255,244,0,0" Stroke="Black" VerticalAlignment="Top" Width="411" RenderTransformOrigin="0.5,0.5" Visibility="Hidden">
            <Rectangle.RenderTransform>
                <TransformGroup>
                    <ScaleTransform ScaleY="-1"/>
                    <SkewTransform/>
                    <RotateTransform/>
                    <TranslateTransform/>
                </TransformGroup>
            </Rectangle.RenderTransform>
        </Rectangle>
        <Label x:Name="StatusLabel" Content="Status:" HorizontalAlignment="Left" Margin="255,262,0,0" VerticalAlignment="Top" Visibility="Hidden" FontWeight="Bold" Foreground="#FF908484"/>
        <Label x:Name="DatePublishedLabel" Content="Date Published:" HorizontalAlignment="Left" Margin="255,283,0,0" VerticalAlignment="Top" Visibility="Hidden" FontWeight="Bold" Foreground="#FF908484" Width="100"/>
        <Label x:Name="VersionNumberLabel" Content="Version:" HorizontalAlignment="Left" Margin="255,304,0,0" VerticalAlignment="Top" Visibility="Hidden" FontWeight="Bold" Foreground="#FF908484"/>
        <TextBox x:Name="DatePublishedTextBoxResult" HorizontalAlignment="Left" Margin="350,288,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="220" BorderBrush="White" Visibility="Hidden" Height="15"/>
        <TextBox x:Name="VersionTextBoxResult" HorizontalAlignment="Left" Margin="310,308,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120" BorderBrush="White" Visibility="Hidden"/>
        <TextBox x:Name="StatusTextBoxResult_TaskSequence_Result" HorizontalAlignment="Left" Margin="301,267,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="220" BorderBrush="White" Height="15" Visibility="Hidden"/>
        <Label x:Name="DeadlineLabel" Content="Deadline" HorizontalAlignment="Left" Margin="255,330,0,0" VerticalAlignment="Top" Visibility="Hidden" FontWeight="Bold" Foreground="#FF908484"/>
        <TextBox x:Name="DeadlineResult" HorizontalAlignment="Left" Margin="315,334,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120" BorderBrush="White" Visibility="Hidden"/>
        <Button x:Name="BackButton" Content="Back" HorizontalAlignment="Left" Margin="637,353,0,0" VerticalAlignment="Top" Width="92" Background="#FF646CE4" Foreground="White" Visibility="Hidden" Height="30"/>
        <ListBox x:Name="OperatingSystemTaskSequenceListbox" Margin="187,92,120,86" Visibility="Hidden"/>
        <Button x:Name="TaskSequenceDetailsButton" Content="Details" HorizontalAlignment="Left" Margin="689,92,0,0" VerticalAlignment="Top" Height="50" Width="88" Background="#FF646CE4" Foreground="White" Visibility="Hidden"/>
        <Button x:Name="InstallOrUninstallButton_TaskSequence_Button" Content="" HorizontalAlignment="Left" Margin="255,177,0,0" VerticalAlignment="Top" Width="92" Background="#FF646CE4" Foreground="White" Visibility="Hidden" Height="30" FontWeight="Bold"/>
        <Rectangle x:Name="Line1_TaskSequence" HorizontalAlignment="Left" Height="1" Margin="255,244,0,0" Stroke="Black" VerticalAlignment="Top" Width="411" RenderTransformOrigin="0.5,0.5" Visibility="Hidden">
            <Rectangle.RenderTransform>
                <TransformGroup>
                    <ScaleTransform ScaleY="-1"/>
                    <SkewTransform/>
                    <RotateTransform/>
                    <TranslateTransform/>
                </TransformGroup>
            </Rectangle.RenderTransform>
        </Rectangle>
        <Label x:Name="StatusLabel_TaskSequence_Label" Content="Status:" HorizontalAlignment="Left" Margin="255,262,0,0" VerticalAlignment="Top" Visibility="Hidden" FontWeight="Bold" Foreground="#FF908484"/>
        <Button x:Name="BackButton_TaskSequence_Button" Content="Back" HorizontalAlignment="Left" Margin="637,353,0,0" VerticalAlignment="Top" Width="92" Background="#FF646CE4" Foreground="White" Visibility="Hidden" Height="30"/>
        <TextBlock x:Name="ParticularTaskSequenceTitle" HorizontalAlignment="Left" Margin="255,119,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Height="53" Width="385" FontSize="24" Visibility="Hidden"/>
        <ListBox x:Name="UpdatesListbox" Margin="187,92,120,86" Visibility="Hidden" FontStretch="Expanded"/>
        <Button x:Name="UpdateDetailsButton" Content="Details" HorizontalAlignment="Left" Margin="689,92,0,0" VerticalAlignment="Top" Height="50" Width="88" Background="#FF646CE4" Foreground="White" Visibility="Hidden"/>
        <TextBlock x:Name="ParticularUpdateTextblock" HorizontalAlignment="Left" Margin="255,119,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Height="53" Width="385" FontSize="20" Visibility="Hidden"/>
        <Rectangle x:Name="Line1Update" HorizontalAlignment="Left" Height="1" Margin="255,244,0,0" Stroke="Black" VerticalAlignment="Top" Width="411" RenderTransformOrigin="0.5,0.5" Visibility="Hidden">
            <Rectangle.RenderTransform>
                <TransformGroup>
                    <ScaleTransform ScaleY="-1"/>
                    <SkewTransform/>
                    <RotateTransform/>
                    <TranslateTransform/>
                </TransformGroup>
            </Rectangle.RenderTransform>
        </Rectangle>
        <Label x:Name="UpdateStatusLabel" Content="Status:" HorizontalAlignment="Left" Margin="255,262,0,0" VerticalAlignment="Top" Visibility="Hidden" FontWeight="Bold" Foreground="#FF908484"/>
        <TextBox x:Name="StatusTextBoxResult_Update_Result" HorizontalAlignment="Left" Margin="301,267,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="220" BorderBrush="White" Height="15" Visibility="Hidden"/>
        <Button x:Name="BackButton_Updates_Button" Content="Back" HorizontalAlignment="Left" Margin="637,353,0,0" VerticalAlignment="Top" Width="92" Background="#FF646CE4" Foreground="White" Visibility="Hidden" Height="30"/>
        <Label x:Name="DeadlineLabelUpdate" Content="Deadline" HorizontalAlignment="Left" Margin="255,330,0,0" VerticalAlignment="Top" Visibility="Hidden" FontWeight="Bold" Foreground="#FF908484"/>
        <TextBox x:Name="DeadlineResultUpdates" HorizontalAlignment="Left" Margin="315,334,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120" BorderBrush="White" Visibility="Hidden"/>
        <Button x:Name="InstallOrUninstallButtonUpdate" Content="" HorizontalAlignment="Left" Margin="255,177,0,0" VerticalAlignment="Top" Width="92" Background="#FF646CE4" Foreground="White" Visibility="Hidden" Height="30" FontWeight="Bold"/>
        <Label x:Name="OptionsLabel" Content="Specify the Software Center configuration settings " HorizontalAlignment="Left" Margin="187,69,0,0" VerticalAlignment="Top" Width="334" Visibility="Hidden"/>
        <Rectangle x:Name="OptionsLine" HorizontalAlignment="Left" Height="1" Margin="187,104,0,0" Stroke="Black" VerticalAlignment="Top" Width="502" Visibility="Hidden"/>
        <Label x:Name="OptionsWorkInfoLabel" Content="Work Information" HorizontalAlignment="Left" Margin="195,110,0,0" VerticalAlignment="Top" Width="168" Foreground="#FF646CE4" FontWeight="Bold" Visibility="Hidden"/>
        <TextBox x:Name="OptionsIndicateLabel" HorizontalAlignment="Left" Margin="220,146,0,0" TextWrapping="Wrap" Text="Indicate the hours that you typically work. Some software can be scheduled to install outside your business hours. Make sure that your settings allow at least four hours each day for system maintenance tasks." VerticalAlignment="Top" Width="446" Height="61" BorderBrush="White" Visibility="Hidden"/>
        <Label x:Name="OptionsBusinessHoursFromLabel" Content="Business hours: From" HorizontalAlignment="Left" Margin="240,213,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <ComboBox x:Name="OptionsStartTime" HorizontalAlignment="Center" Margin="0,215,0,0" VerticalAlignment="Top" Width="70" Height="24" Visibility="Hidden"/>
        <Label x:Name="OptionsThroughLabel" Content="through" HorizontalAlignment="Left" Margin="443,214,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <ComboBox x:Name="OptionsEndTime" HorizontalAlignment="Left" Margin="501,215,0,0" VerticalAlignment="Top" Width="70" Height="24" Visibility="Hidden"/>
        <Label x:Name="OptionDaysLabel" Content="Days" HorizontalAlignment="Left" Margin="201,245,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="SundayButton" Content="Sunday" HorizontalAlignment="Left" Margin="244,250,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="MondayButton" Content="Monday" HorizontalAlignment="Left" Margin="311,250,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="TuesdayButton" Content="Tueday" HorizontalAlignment="Left" Margin="380,250,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="WednesdayButton" Content="Wednesday" HorizontalAlignment="Left" Margin="443,250,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="ThursdayButton" Content="Thursday" HorizontalAlignment="Left" Margin="529,250,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="FridayButton" Content="Friday" HorizontalAlignment="Left" Margin="603,250,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="SaturdayButton" Content="Saturday" HorizontalAlignment="Left" Margin="663,250,0,0" VerticalAlignment="Top" Visibility="Hidden"/>
        <Button x:Name="SetHoursButton" Content="Set hours!" HorizontalAlignment="Left" Margin="663,289,0,0" VerticalAlignment="Top" Height="29" Width="66" Background="#FF646CE4" Visibility="Hidden"/>
        <TextBlock x:Name="SetHoursResultTextblock" HorizontalAlignment="Left" Margin="395,340,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Height="65" Width="177" Visibility="Hidden"/>
        <ListBox x:Name="ClientActionsListbox" Margin="187,92,120,150" Visibility="Hidden"/>
        <TextBlock x:Name="ClientActionResult" HorizontalAlignment="Left" Margin="232,321,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Height="43" Width="400" Text="" Visibility="Hidden" Background="#FF646CE4" Foreground="#FFFDFDFD"/>
        <Button x:Name="ClientActionRunButton" Content="Run" HorizontalAlignment="Left" Margin="689,92,0,0" VerticalAlignment="Top" Height="50" Width="88" Background="#FF646CE4" Foreground="White" Visibility="Hidden"/>
        <ListBox x:Name="ComplianceCheckListbox" Margin="187,92,120,86" Visibility="Hidden"/>
        <Button x:Name="ComplianceDetails" Content="Details" HorizontalAlignment="Left" Margin="689,92,0,0" VerticalAlignment="Top" Height="50" Width="88" Background="#FF646CE4" Foreground="White" Visibility="Hidden"/>
    </Grid>
</Window>



"@
 
$inputXML = $inputXML -replace 'mc:Ignorable="d"','' -replace "x:N",'N' -replace '^<Win.*', '<Window'
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML
#Read XAML
 
    $reader=(New-Object System.Xml.XmlNodeReader $xaml) 
  try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "We ran into a problem with the XAML code.  Check the syntax for this control..."
    ##write-host $error[0].Exception.Message -ForegroundColor Red
    if ($error[0].Exception.Message -like "*button*"){
        write-warning "Ensure your &lt;button in the `$inputXML does NOT have a Click=ButtonClick property.  PS can't handle this`n`n`n`n"}
}
catch{#if it broke some other way <img draggable="false" role="img" class="emoji" alt="😀" src="https://s0.wp.com/wp-content/mu-plugins/wpcom-smileys/twemoji/2/svg/1f600.svg">
    #write-host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."
        }
 
#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================
 
$xaml.SelectNodes("//*[@Name]") | %{Set-Variable -Name "WPF$($_.Name)" -Value $Form.FindName($_.Name)}
 
Function Get-FormVariables{
if ($global:ReadmeDisplay -ne $true){#write-host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow;$global:ReadmeDisplay=$true
}
#write-host "Found the following interactable elements from our form" -ForegroundColor Cyan
get-variable WPF*
}
 
Get-FormVariables
 

$WPFGo_Button.add_click({
 $WPFApplication_Button.Background = "#FFDDDDDD"
$WPFUpdates_Button.Background = "#FFDDDDDD"
$WPFOperatingSystems_Button.Background = "#FFDDDDDD"
$WPFInstallationStatus_Button.Background = "#FFDDDDDD"
$WPFDeviceCompliance_Button.Background = "#FFDDDDDD"
$WPFOptions_Button.Background = "#FFDDDDDD"
$comptoConnect = $WPFConnectTo_Input.Text
try {
$WPFConnectionStatus.text = "$comptoConnect :  Connected"
$WPFAll_RadioButton.Visibility = "Visible"
$WPFAllSoftwareListbox.Visibility = "Visible"
$WPFDetailsButton.Visibility = "Visible"
#write-host "Apps: $apps"
 $apps = 
 .fullname
 #write-host "Apps: $apps"
 $global:Globalapps = (Get-WmiObject -Namespace "root\ccm\ClientSDK" -ComputerName $comptoConnect -Class CCM_Application).fullname
  $global:GlobalWMI = (Get-WmiObject -Namespace "root\ccm\ClientSDK" -ComputerName $comptoConnect -Class CCM_Application).fullname

 foreach($app in $apps){
 $WPFAllSoftwareListbox.Items.add($app)
 }
 $WPFConnectedStatus_Textblock.text = "$comptoConnect:Connected"
 }
 
 catch{
 "Error"
 }
 })

 $WPFDetailsButton.add_Click({
 $compToConnect = $WPFConnectTo_Input.Text
 $AppName = $WPFAllSoftwareListbox.SelectedItem
 $WMI = (Get-WmiObject -Namespace "root\ccm\ClientSDK" -ComputerName $comptoConnect -Class CCM_Application | where Fullname -eq $AppName)
 $InstalledOrNot = $wmi.installState
 $StartTime = $WMI.starttime
 try{
 $StartTime = [System.Management.ManagementDateTimeConverter]::ToDateTime($StartTime)
 }
 catch{

 }
 $version = $WMI.softwareversion
 $Deadline = $wmi.deadline
  try{
 $Deadline = [System.Management.ManagementDateTimeConverter]::ToDateTime($Deadline)
 }
 catch{

 }
 #write-host "Giving details for $appname"
  #write-host "$WMIApp"
 $WPFAll_RadioButton.Visibility = "Hidden"
$WPFRequired_RadioButton.Visibility = "Hidden"
$WPFAvailable_RadioButton.Visibility = "Hidden"
$WPFAllSoftwareListbox.Visibility = "Hidden"
$WPFDetailsButton.Visibility = "Hidden"
$WPFBackButton.Visibility = "Visible"
$WPFAppDetailsLabel.Visibility = "Visible"
$WPFDeadlineLabel.Visibility = "Visible"
$WPFDeadlineResult.Visibility = "Visible"
$WPFVersionNumberLabel.Visibility = "Visible"
$WPFParticularApplicationTextblock.Visibility = "Visible"
$WPFInstallOrUninstallButton.Visibility = "Visible"
$WPFLine1.Visibility = "Visible"
$WPFStatusLabel.Visibility = "Visible"
$WPFDatePublishedLabel.Visibility = "Visible"
$WPFStatusTextBoxResult.Visibility = "Visible"
$WPFDatePublishedTextBoxResult.Visibility = "Visible"
$WPFVersionTextBoxResult.Visibility = "Visible"
$WPFParticularApplicationTextblock.text = $AppName
$WPFDatePublishedTextBoxResult.text = $StartTime
#write-host "$Installedornot - Installedornot"
if ($InstalledOrNot -eq "Installed"){
$WPFInstallOrUninstallButton.content = "Uninstall"
$WPFStatusTextBoxResult.text = "Installed"
}
else{
$WPFInstallOrUninstallButton.content = "Install"
    if ($wmi.deadline){
$WPFStatusTextBoxResult.text = "Required"
}
else{
$WPFStatusTextBoxResult.text = "Available"
}
}
if($Version){
$WPFVersionTextBoxResult.text = $version
}
else{
$WPFVersionTextBoxResult.text = "n/a"
}
if ($deadline){
$WPFDeadlineResult.text = $Deadline
}
else{
$WPFDeadlineResult.text = "n/a"
}
 })

$WPFBackButton.add_Click({
 $WPFAll_RadioButton.Visibility = "Visible"
$WPFRequired_RadioButton.Visibility = "Visible"
$WPFAvailable_RadioButton.Visibility = "Visible"
$WPFAllSoftwareListbox.Visibility = "Visible"
$WPFDetailsButton.Visibility = "Visible"

$WPFBackButton.Visibility = "Hidden"
$WPFAppDetailsLabel.Visibility = "Hidden"
$WPFDeadlineLabel.Visibility = "Hidden"
$WPFDeadlineResult.Visibility = "Hidden"
$WPFVersionNumberLabel.Visibility = "Hidden"
$WPFParticularApplicationTextblock.Visibility = "Hidden"
$WPFInstallOrUninstallButton.Visibility = "Hidden"
$WPFLine1.Visibility = "Hidden"
$WPFStatusLabel.Visibility = "Hidden"
$WPFDatePublishedLabel.Visibility = "Hidden"
$WPFStatusTextBoxResult.Visibility = "Hidden"
$WPFDatePublishedTextBoxResult.Visibility = "Hidden"
$WPFVersionTextBoxResult.Visibility = "Hidden"


})



$WPFAll_RadioButton.add_click({
$WPFAvailableSoftwareListbox.Visibility = "Hidden"
$WPFrequiredSoftwareListbox.Visibility = "Hidden"
$comptoConnect = $WPFConnectTo_Input.Text
try {
$WPFAllSoftwareListbox.items.Clear()
$WPFConnectionStatus.text = "$comptoConnect :  Connected"
$WPFAll_RadioButton.Visibility = "Visible"
$WPFRequired_RadioButton.Visibility = "Visible"
$WPFAvailable_RadioButton.Visibility = "Visible"
$WPFAllSoftwareListbox.Visibility = "Visible"
$WPFDetailsButton.Visibility = "Visible"
 foreach($app in $globalapps){
 $WPFAllSoftwareListbox.Items.add($app)
 }
 $WPFConnectedStatus_Textblock.text = "$comptoConnect:Connected"
 }
 
 catch{
 "Error"
 }
 })

$WPFInstallOrUninstallButton.add_Click({
$Software = $WPFParticularApplicationTextblock.text
$InstallOrUninstall = $WPFInstallOrUninstallButton.Content
$computer = $WPFConnectTo_Input.text
$WMI = Get-WmiObject -ComputerName $computer -Namespace "Root\ccm\ClientSDK" -Class CCM_Application | Where-Object Name -like "*$Software*"
$appID = $WMI.ID
$appRevision = $WMI.Revision
$appMachineTarget = $WMI.IsMachineTarget
try
{
    #Runs the install
    $output = invoke-command -ComputerName $computer {
    ([WmiClass]'Root\CCM\ClientSDK:CCM_Application').Install($using:appID, $using:appRevision, $using:appMachineTarget, 0, "Normal", $false) 
    
    
    }
    $WPFOutputTextbox.text = "Success: $AppToDeploy install started on $computer"
    }
catch [Exception]
{
     #Writes out error if applicable
    
    $output = "Failed to start the installation. Reason: $errorMessage"
    $WPFOutputTextbox.text = "$output"
    }

})

$WPFOperatingSystems_Button.add_Click({
$WPFAll_RadioButton.Visibility = "Visible"
$WPFClientActionResult.Visibility = "Hidden"
$WPFComplianceCheckListbox.visibility = "hidden"
$WPFComplianceDetails.visibility = "hidden"
 $WPFClientActionsListbox.Visibility = "Hidden"
$WPFClientActionRunButton.Visibility = "Hidden"
 $WPFOptionsLabel.visibility = "Hidden"
$WPFOptionsLine.visibility = "Hidden"
$WPFOptionsWorkInfoLabel.visibility = "Hidden"
$WPFOptionsIndicateLabel.visibility = "Hidden"
$WPFOptionsBusinessHoursFromLabel.visibility = "Hidden"
$WPFOptionsStartTime.visibility = "Hidden"
$WPFOptionsEndTime.visibility = "Hidden"
$WPFOptionDaysLabel.visibility = "Hidden"
$WPFSetHoursButton.visibility = "Hidden"
$WPFSetHoursResultTextblock.visibility = "Hidden"
$WPFOptionsThroughLabel.visibility = "Hidden"
$WPFMondayButton.visibility = "Hidden"
$WPFSundayButton.visibility = "Hidden"
$WPFTuesdayButton.visibility = "Hidden"
$WPFWednesdayButton.visibility = "Hidden"
$WPFThursdayButton.visibility = "Hidden"
$WPFFridayButton.visibility = "Hidden"
$WPFSaturdayButton.visibility = "Hidden"
$WPFUpdateDetailsButton.Visibility = "Hidden"
$WPFInstallOrUninstallButtonUpdate.Visibility = "Hidden"
$WPFParticularUpdateTextblock.visibility = "Hidden"
$WPFLine1Update.visibility = "Hidden"
$WPFUpdateStatusLabel.visibility = "Hidden"
$WPFStatusTextBoxResult_Update_Result.visibility = "Hidden"
$WPFBackButton_Updates_Button.visibility = "Hidden"
$WPFDeadlineLabelUpdate.visibility = "Hidden"
$WPFDeadlineResultUpdates.visibility = "Hidden"

$wpfUpdatesListbox.visibility = "Hidden"
 $WPFApplication_Button.Background = "#FFDDDDDD"
$WPFUpdates_Button.Background = "#FFDDDDDD"
$WPFOperatingSystems_Button.Background = "#FFADAAAA"
$WPFInstallationStatus_Button.Background = "#FFDDDDDD"
$WPFDeviceCompliance_Button.Background = "#FFDDDDDD"
$WPFOptions_Button.Background = "#FFDDDDDD"
$WPFAllSoftwareListbox.Visibility = "Hidden"
$WPFDetailsButton.Visibility = "Hidden"
$WPFBackButton.Visibility = "Hidden"
$WPFAppDetailsLabel.Visibility = "Hidden"
$WPFDeadlineLabel.Visibility = "Hidden"
$WPFDeadlineResult.Visibility = "Hidden"
$WPFVersionNumberLabel.Visibility = "Hidden"
$WPFParticularApplicationTextblock.Visibility = "Hidden"
$WPFInstallOrUninstallButton.Visibility = "Hidden"
$WPFLine1.Visibility = "Hidden"
$WPFStatusLabel.Visibility = "Hidden"
$WPFDatePublishedLabel.Visibility = "Hidden"
$WPFDatePublishedTextBoxResult.Visibility = "Hidden"
$WPFVersionTextBoxResult.Visibility = "Hidden"
 $WPFAll_RadioButton.Visibility = "Visible"
 $WPFTaskSequenceDetailsButton.Visibility = "Visible"
$WPFOperatingSystemTaskSequenceListbox.visibility = "Visible"
$comptoConnect = $WPFConnectTo_Input.Text
try {
$WPFOperatingSystemTaskSequenceListbox.items.clear()
$WPFAll_RadioButton.Visibility = "Visible"

 $OSTaskSequences = (Get-WmiObject -Namespace "root\ccm\policy\machine\actualconfig" -Class "CCM_SoftwareDistribution" -ComputerName $comptoConnect).PKG_Name 

 foreach($obj in $OSTaskSequences){
 $WPFOperatingSystemTaskSequenceListbox.Items.add($obj)
 }

 }
 
 catch{
 "Error"
 }


})

 $WPFTaskSequenceDetailsButton.add_Click({
 
 $compToConnect = $WPFConnectTo_Input.Text
 $SequenceName = $WPFOperatingSystemTaskSequenceListbox.SelectedItem
 $WMI = Get-WmiObject -ComputerName $compToConnect -Namespace "root\ccm\policy\machine\actualconfig" -Class "CCM_SoftwareDistribution" | Where-Object { $_.PKG_Name -like $SequenceName }  | Select-Object -Property PKG_PackageID | Select-Object -First 1
 $ScheduleID = Get-WmiObject -ComputerName $compToConnect -Namespace "root\ccm\scheduler" -Class "CCM_Scheduler_History" | Where-Object { $_.ScheduleID -like "*$($WMI.PKG_PackageID)*" } | Select-Object -ExpandProperty ScheduleID
 $installState = (Get-WmiObject -ComputerName $compToConnect -Namespace "root\ccm\clientsdk" -Class "CCM_Program" | Where-Object { $_.PackageID -eq $WMI.PKG.PackageID }).installState
 #write-host "IS: $installState"
 #write-host "ScheduleID: $ScheduleID"
 $WPFAll_RadioButton.Visibility = "Hidden"
$WPFOperatingSystemTaskSequenceListbox.Visibility = "Hidden"
$WPFTaskSequenceDetailsButton.Visibility = "Hidden"

$WPFLine1_TaskSequence.Visibility = "Visible"
$WPFInstallOrUninstallButton_TaskSequence_Button.Visibility = "Visible"
$WPFStatusLabel_TaskSequence_Label.Visibility = "Visible"
$WPFStatusTextBoxResult_TaskSequence_Result.Visibility = "Visible"
$WPFBackButton_TaskSequence_Button.Visibility = "Visible"
$WPFParticularTaskSequenceTitle.Visibility = "Visible"

$WPFParticularTaskSequenceTitle.text = $SequenceName
if ($installState -eq "Installed"){
$WPFInstallOrUninstallButton_TaskSequence_Button.content = "Reinstall"
$WPFStatusTextBoxResult_TaskSequence_Result.text = "Installed"
}
else{
$WPFInstallOrUninstallButton_TaskSequence_Button.content = "Install"
$WPFStatusTextBoxResult_TaskSequence_Result.text = "Not Installed"
}

 })

 $WPFBackButton_TaskSequence_Button.add_Click({
 $WPFClientActionResult.Visibility = "Hidden"
 $wpfUpdatesListbox.visibility = "Hidden"
 $WPFAll_RadioButton.Visibility = "Visible"
$WPFDetailsButton.Visibility = "Visible"
 $WPFAll_RadioButton.Visibility = "Visible"
 $WPFTaskSequenceDetailsButton.Visibility = "Visible"
$WPFOperatingSystemTaskSequenceListbox.visibility = "Visible"

$WPFLine1_TaskSequence.Visibility = "Hidden"
$WPFInstallOrUninstallButton_TaskSequence_Button.Visibility = "Hidden"
$WPFStatusLabel_TaskSequence_Label.Visibility = "Hidden"
$WPFStatusTextBoxResult_TaskSequence_Result.Visibility = "Hidden"
$WPFBackButton_TaskSequence_Button.Visibility = "Hidden"
$WPFParticularTaskSequenceTitle.Visibility = "Hidden"


})

$WPFInstallOrUninstallButton_TaskSequence_Button.add_Click({
$compToConnect = $WPFConnectTo_Input.Text
$TaskSequenceToInstall = $WPFOperatingSystemTaskSequenceListbox.SelectedItem

$SoftwareDistributionPolicy = Get-WmiObject -ComputerName $compToConnect -Namespace "root\ccm\policy\machine\actualconfig" -Class "CCM_SoftwareDistribution" | Where-Object { $_.PKG_Name -like $TaskSequenceToInstall } | Select-Object -Property PKG_PackageID, ADV_AdvertisementID

# Retrieve the ScheduleID used for triggering a new required assignment for task sequence
$ScheduleID = Get-WmiObject -ComputerName $compToConnect -Namespace "root\ccm\scheduler" -Class "CCM_Scheduler_History" | Where-Object { $_.ScheduleID -like "*$($SoftwareDistributionPolicy.PKG_PackageID)*" } | Select-Object -ExpandProperty ScheduleID
$TaskSequencePolicy = Get-WmiObject -ComputerName $compToConnect -Namespace "root\ccm\policy\machine\actualconfig" -Class "CCM_TaskSequence" | Where-Object { $_.ADV_AdvertisementID -like $SoftwareDistributionPolicy.ADV_AdvertisementID }
# Set the mandatory assignment property to true mimicing it contains assignments
$TaskSequencePolicy.Get()
$TaskSequencePolicy.ADV_MandatoryAssignments = $true
$TaskSequencePolicy.Put() | Out-Null

# Invoke the mandatory assignment
Invoke-WmiMethod -ComputerName $compToConnect -Namespace "root\ccm" -Class "SMS_Client" -Name "TriggerSchedule" -ArgumentList $ScheduleID


})

$WPFApplication_Button.add_Click({
$WPFClientActionResult.Visibility = "Hidden"
$WPFComplianceCheckListbox.visibility = "hidden"
$WPFComplianceDetails.visibility = "hidden"
 $WPFClientActionsListbox.Visibility = "Hidden"
$WPFClientActionRunButton.Visibility = "Hidden"
 $WPFOptionsLabel.visibility = "Hidden"
$WPFOptionsLine.visibility = "Hidden"
$WPFOptionsWorkInfoLabel.visibility = "Hidden"
$WPFOptionsIndicateLabel.visibility = "Hidden"
$WPFOptionsBusinessHoursFromLabel.visibility = "Hidden"
$WPFOptionsStartTime.visibility = "Hidden"
$WPFOptionsEndTime.visibility = "Hidden"
$WPFOptionDaysLabel.visibility = "Hidden"
$WPFSetHoursButton.visibility = "Hidden"
$WPFSetHoursResultTextblock.visibility = "Hidden"
$WPFOptionsThroughLabel.visibility = "Hidden"
$WPFMondayButton.visibility = "Hidden"
$WPFSundayButton.visibility = "Hidden"
$WPFTuesdayButton.visibility = "Hidden"
$WPFWednesdayButton.visibility = "Hidden"
$WPFThursdayButton.visibility = "Hidden"
$WPFFridayButton.visibility = "Hidden"
$WPFSaturdayButton.visibility = "Hidden"
$WPFUpdateDetailsButton.Visibility = "Hidden"
$WPFInstallOrUninstallButtonUpdate.Visibility = "Hidden"
$WPFParticularUpdateTextblock.visibility = "Hidden"
$WPFLine1Update.visibility = "Hidden"
$WPFUpdateStatusLabel.visibility = "Hidden"
$WPFStatusTextBoxResult_Update_Result.visibility = "Hidden"
$WPFBackButton_Updates_Button.visibility = "Hidden"
$WPFDeadlineLabelUpdate.visibility = "Hidden"
$WPFDeadlineResultUpdates.visibility = "Hidden"

$WPFParticularUpdateTextblock.visibility = "Hidden"
$WPFLine1Update.visibility = "Hidden"
$WPFUpdateStatusLabel.visibility = "Hidden"
$WPFStatusTextBoxResult_Update_Result.visibility = "Hidden"
$WPFBackButton_Updates_Button.visibility = "Hidden"
$WPFDeadlineLabelUpdate.visibility = "Hidden"
$WPFDeadlineResultUpdates.visibility = "Hidden"

$wpfUpdatesListbox.visibility = "Hidden"
$WPFApplication_Button.Background = "#FFADAAAA"
$WPFUpdates_Button.Background = "#FFDDDDDD"
$WPFOperatingSystems_Button.Background = "#FFDDDDDD"
$WPFInstallationStatus_Button.Background = "#FFDDDDDD"
$WPFDeviceCompliance_Button.Background = "#FFDDDDDD"
$WPFOptions_Button.Background = "#FFDDDDDD"

#write-host "Button Clicked"
$comptoConnect = $WPFConnectTo_Input.Text
try {
 $WPFTaskSequenceDetailsButton.Visibility = "Hidden"
$WPFOperatingSystemTaskSequenceListbox.visibility = "Hidden"
$WPFLine1_TaskSequence.Visibility = "Hidden"
$WPFInstallOrUninstallButton_TaskSequence_Button.Visibility = "Hidden"
$WPFStatusLabel_TaskSequence_Label.Visibility = "Hidden"
$WPFStatusTextBoxResult_TaskSequence_Result.Visibility = "Hidden"
$WPFBackButton_TaskSequence_Button.Visibility = "Hidden"
$WPFParticularTaskSequenceTitle.Visibility = "Hidden"
$WPFConnectionStatus.text = "$comptoConnect :  Connected"
$WPFAll_RadioButton.Visibility = "Visible"
$WPFAllSoftwareListbox.Visibility = "Visible"
$WPFDetailsButton.Visibility = "Visible"
#write-host "Apps: $apps"
 $apps = (Get-WmiObject -Namespace "root\ccm\ClientSDK" -ComputerName $comptoConnect -Class CCM_Application).fullname
 #write-host "Apps: $apps"
  $WPFAllSoftwareListbox.items.clear()
 foreach($app in $apps){
 $WPFAllSoftwareListbox.Items.add($app)
 }
 $WPFConnectedStatus_Textblock.text = "$comptoConnect:Connected"
 }
 
 catch{
 "Error"
 }
 

})

$WPFUpdates_Button.add_Click({
$WPFClientActionResult.Visibility = "Hidden"
$WPFComplianceCheckListbox.visibility = "hidden"
$WPFComplianceDetails.visibility = "hidden"
 $WPFClientActionsListbox.Visibility = "Hidden"
$WPFClientActionRunButton.Visibility = "Hidden"
 $WPFOptionsLabel.visibility = "Hidden"
$WPFOptionsLine.visibility = "Hidden"
$WPFOptionsWorkInfoLabel.visibility = "Hidden"
$WPFOptionsIndicateLabel.visibility = "Hidden"
$WPFOptionsBusinessHoursFromLabel.visibility = "Hidden"
$WPFOptionsStartTime.visibility = "Hidden"
$WPFOptionsEndTime.visibility = "Hidden"
$WPFOptionDaysLabel.visibility = "Hidden"
$WPFSetHoursButton.visibility = "Hidden"
$WPFSetHoursResultTextblock.visibility = "Hidden"
$WPFOptionsThroughLabel.visibility = "Hidden"
$WPFMondayButton.visibility = "Hidden"
$WPFSundayButton.visibility = "Hidden"
$WPFTuesdayButton.visibility = "Hidden"
$WPFWednesdayButton.visibility = "Hidden"
$WPFThursdayButton.visibility = "Hidden"
$WPFFridayButton.visibility = "Hidden"
$WPFSaturdayButton.visibility = "Hidden"
$comptoConnect =  $WPFConnectTo_Input.Text
$wpfUpdatesListbox.items.clear()
$WPFUpdateDetailsButton.Visibility = "Visible"
$wpfUpdatesListbox.visibility = "Visible"
$AllUpdates = (Get-WmiObject -Namespace "root\ccm\clientSDK" -Class CCM_SoftwareUpdate -ComputerName $comptoConnect)
$global:GlobalAllUpdates = $AllUpdates
foreach($update in $allupdates){
$UpdateName = $update.name
$updateCompliance = $update.complianceState
$UpdateDealine = $Update.deadline
$output = "$updateName"
#write-host "Adding $output to Listbox"
$wpfUpdatesListbox.items.add($output)
}
$WPFOperatingSystemTaskSequenceListbox.visibility = "Hidden"
$WPFLine1_TaskSequence.Visibility = "Hidden"
$WPFInstallOrUninstallButton_TaskSequence_Button.Visibility = "Hidden"
$WPFStatusLabel_TaskSequence_Label.Visibility = "Hidden"
$WPFStatusTextBoxResult_TaskSequence_Result.Visibility = "Hidden"
$WPFBackButton_TaskSequence_Button.Visibility = "Hidden"
$WPFParticularTaskSequenceTitle.Visibility = "Hidden"
$WPFAllSoftwareListbox.Visibility = "Hidden"
$WPFDetailsButton.Visibility = "Hidden"
$WPFAllSoftwareListbox.Visibility = "Hidden"
$WPFDetailsButton.Visibility = "Hidden"
$WPFBackButton.Visibility = "Hidden"
$WPFAppDetailsLabel.Visibility = "Hidden"
$WPFDeadlineLabel.Visibility = "Hidden"
$WPFDeadlineResult.Visibility = "Hidden"
$WPFVersionNumberLabel.Visibility = "Hidden"
$WPFParticularApplicationTextblock.Visibility = "Hidden"
$WPFInstallOrUninstallButton.Visibility = "Hidden"
$WPFLine1.Visibility = "Hidden"
$WPFStatusLabel.Visibility = "Hidden"
$WPFDatePublishedLabel.Visibility = "Hidden"
$WPFDatePublishedTextBoxResult.Visibility = "Hidden"
$WPFVersionTextBoxResult.Visibility = "Hidden"
 $WPFAll_RadioButton.Visibility = "visible"
 $WPFTaskSequenceDetailsButton.Visibility = "Hidden"
$WPFOperatingSystemTaskSequenceListbox.visibility = "Hidden"

 $WPFApplication_Button.Background = "#FFDDDDDD"
$WPFUpdates_Button.Background = "#FFADAAAA"
$WPFOperatingSystems_Button.Background = "#FFDDDDDD"
$WPFInstallationStatus_Button.Background = "#FFDDDDDD"
$WPFDeviceCompliance_Button.Background = "#FFDDDDDD"
$WPFOptions_Button.Background = "#FFDDDDDD"

})

$WPFUpdateDetailsButton.add_Click({
$WPFAll_RadioButton.Visibility = "Hidden"
$SelectedUpdate = $wpfUpdatesListbox.SelectedItem
$comptoConnect = $WPFConnectTo_Input.Text
$Update = Get-WmiObject -Namespace "root\ccm\clientSDK" -Class CCM_SoftwareUpdate -ComputerName $comptoConnect | where name -eq $SelectedUpdate
$updateCompliance = $update.complianceState
$UpdateDealine = $Update.deadline
if ($updateCompliance -eq 0){$status = "Not Installed"; $installorUninstall = "Install"}
else{$status = "Installed"; $installorUninstall = "Uninstall"}
$Deadline = [System.Management.ManagementDateTimeConverter]::ToDateTime($UpdateDealine)
$WPFParticularUpdateTextblock.visibility = "Visible"
$WPFLine1Update.visibility = "Visible"
$WPFUpdateStatusLabel.visibility = "Visible"
$WPFStatusTextBoxResult_Update_Result.visibility = "Visible"
$WPFBackButton_Updates_Button.visibility = "Visible"
$WPFDeadlineLabelUpdate.visibility = "Visible"
$WPFDeadlineResultUpdates.visibility = "Visible"
$WPFUpdateDetailsButton.Visibility = "Hidden"
$wpfUpdatesListbox.visibility = "Hidden"
$WPFParticularUpdateTextblock.text = $SelectedUpdate
$WPFDeadlineResultUpdates.text = $Deadline
$WPFInstallOrUninstallButtonUpdate.Content = $installorUninstall
$WPFStatusTextBoxResult_Update_Result.text = $status
$WPFInstallOrUninstallButtonUpdate.Visibility = "Visible"
})

$WPFBackButton_Updates_Button.add_Click({
$WPFUpdateDetailsButton.Visibility = "Visible"
$WPFParticularUpdateTextblock.visibility = "Hidden"
$WPFLine1Update.visibility = "Hidden"
$WPFUpdateStatusLabel.visibility = "Hidden"
$WPFStatusTextBoxResult_Update_Result.visibility = "Hidden"
$WPFBackButton_Updates_Button.visibility = "Hidden"
$WPFDeadlineLabelUpdate.visibility = "Hidden"
$WPFDeadlineResultUpdates.visibility = "Hidden"
$wpfUpdatesListbox.Visibility = "Visible"
$WPFInstallOrUninstallButtonUpdate.Visibility = "Hidden"
})

$WPFInstallationStatus_Button.add_Click({
$WPFClientActionResult.Visibility = "Hidden"
$WPFComplianceCheckListbox.visibility = "Hidden"
$WPFComplianceDetails.visibility = "Hidden"
 $WPFOptionsLabel.visibility = "Hidden"
$WPFOptionsLine.visibility = "Hidden"
$WPFOptionsWorkInfoLabel.visibility = "Hidden"
$WPFOptionsIndicateLabel.visibility = "Hidden"
$WPFOptionsBusinessHoursFromLabel.visibility = "Hidden"
$WPFOptionsStartTime.visibility = "Hidden"
$WPFOptionsEndTime.visibility = "Hidden"
$WPFOptionDaysLabel.visibility = "Hidden"
$WPFSetHoursButton.visibility = "Hidden"
$WPFSetHoursResultTextblock.visibility = "Hidden"
$WPFOptionsThroughLabel.visibility = "Hidden"
$WPFMondayButton.visibility = "Hidden"
$WPFSundayButton.visibility = "Hidden"
$WPFTuesdayButton.visibility = "Hidden"
$WPFWednesdayButton.visibility = "Hidden"
$WPFThursdayButton.visibility = "Hidden"
$WPFFridayButton.visibility = "Hidden"
$WPFSaturdayButton.visibility = "Hidden"
$WPFClientActionsListbox.items.clear()
$WPFClientActionsListbox.items.add("Machine Policy Retrieval & Evaluation Cycle");
$WPFClientActionsListbox.items.add("User Policy Retrieval & Evaluation Cycle");
$WPFClientActionsListbox.items.add("Application Deployment Evaluation Cycle");
$WPFClientActionsListbox.items.add("Software Updates Deployment Evaluation Cycle");
$WPFClientActionsListbox.items.add("Hardware Inventory Cycle");
$WPFClientActionsListbox.items.add("Software Inventory Cycle");
$WPFClientActionsListbox.items.add("Software Metering Usage Report Cycle");
$WPFClientActionsListbox.items.add("Heartbeat Discovery Cycle");
$WPFClientActionsListbox.items.add("Discovery Data Collection Cycle");
$WPFClientActionsListbox.items.add("File Collection Cycle");
$WPFClientActionsListbox.items.add("Software Update Scan Cycle");
$WPFClientActionsListbox.items.add("Software Update Deployment Cycle");
$WPFClientActionsListbox.Visibility = "Visible"
$WPFClientActionRunButton.Visibility = "Visible"
$WPFUpdateDetailsButton.Visibility = "Hidden"
$WPFInstallOrUninstallButtonUpdate.Visibility = "Hidden"
$WPFParticularUpdateTextblock.visibility = "Hidden"
$WPFLine1Update.visibility = "Hidden"
$WPFUpdateStatusLabel.visibility = "Hidden"
$WPFStatusTextBoxResult_Update_Result.visibility = "Hidden"
$WPFBackButton_Updates_Button.visibility = "Hidden"
$WPFDeadlineLabelUpdate.visibility = "Hidden"
$WPFDeadlineResultUpdates.visibility = "Hidden"
$WPFParticularUpdateTextblock.visibility = "Hidden"
$WPFLine1Update.visibility = "Hidden"
$WPFUpdateStatusLabel.visibility = "Hidden"
$WPFStatusTextBoxResult_Update_Result.visibility = "Hidden"
$WPFBackButton_Updates_Button.visibility = "Hidden"
$WPFDeadlineLabelUpdate.visibility = "Hidden"
$WPFDeadlineResultUpdates.visibility = "Hidden"
$wpfUpdatesListbox.visibility = "Hidden"
 $WPFTaskSequenceDetailsButton.Visibility = "Hidden"
$WPFOperatingSystemTaskSequenceListbox.visibility = "Hidden"
$WPFLine1_TaskSequence.Visibility = "Hidden"
$WPFInstallOrUninstallButton_TaskSequence_Button.Visibility = "Hidden"
$WPFStatusLabel_TaskSequence_Label.Visibility = "Hidden"
$WPFStatusTextBoxResult_TaskSequence_Result.Visibility = "Hidden"
$WPFBackButton_TaskSequence_Button.Visibility = "Hidden"
$WPFParticularTaskSequenceTitle.Visibility = "Hidden"
$WPFAll_RadioButton.Visibility = "Hidden"
$WPFAllSoftwareListbox.Visibility = "Hidden"
$WPFDetailsButton.Visibility = "Hidden"
$WPFAll_RadioButton.Visibility = "Visible"
 $WPFApplication_Button.Background = "#FFDDDDDD"
$WPFUpdates_Button.Background = "#FFDDDDDD"
$WPFOperatingSystems_Button.Background = "#FFDDDDDD"
$WPFInstallationStatus_Button.Background = "#FFADAAAA"
$WPFDeviceCompliance_Button.Background = "#FFDDDDDD"
$WPFOptions_Button.Background = "#FFDDDDDD"

})

$WPFClientActionRunButton.add_Click({
 $WPFOptionsLabel.visibility = "Hidden"
$WPFOptionsLine.visibility = "Hidden"
$WPFOptionsWorkInfoLabel.visibility = "Hidden"
$WPFOptionsIndicateLabel.visibility = "Hidden"
$WPFOptionsBusinessHoursFromLabel.visibility = "Hidden"
$WPFOptionsStartTime.visibility = "Hidden"
$WPFOptionsEndTime.visibility = "Hidden"
$WPFOptionDaysLabel.visibility = "Hidden"
$WPFSetHoursButton.visibility = "Hidden"
$WPFSetHoursResultTextblock.visibility = "Hidden"
$WPFOptionsThroughLabel.visibility = "Hidden"
$WPFMondayButton.visibility = "Hidden"
$WPFSundayButton.visibility = "Hidden"
$WPFTuesdayButton.visibility = "Hidden"
$WPFWednesdayButton.visibility = "Hidden"
$WPFThursdayButton.visibility = "Hidden"
$WPFFridayButton.visibility = "Hidden"
$WPFSaturdayButton.visibility = "Hidden"

$WPFClientActionResult.Visibility = "Visible"
$comptoConnect = $WPFConnectTo_Input.Text
$policytoRun = $WPFClientActionsListbox.selecteditem
switch($policytoRun){
"Machine Policy Retrieval & Evaluation Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000021}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"User Policy Retrieval & Evaluation Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000022}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"Application Deployment Evaluation Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000108}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"Software Updates Deployment Evaluation Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000113}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"Hardware Inventory Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000001}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"Software Inventory Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000002}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"Software Metering Usage Report Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000013}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"Heartbeat Discovery Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000027}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"Discovery Data Collection Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000108}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"File Collection Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000102}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"Software Update Scan Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000113}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}}
"Software Update Deployment Cycle"{
try{
Invoke-WmiMethod -ComputerName $comptoconnect -Namespace "root\ccm" -Class "SMS_CLIENT" -Name "TriggerSchedule" -ArgumentList "{00000000-0000-0000-0000-000000000117}" -ErrorAction Stop
$WPFClientActionResult.text = "Successfully ran $policytoRun on $comptoConnect"
}
catch{$WPFClientActionResult.text = "FAILURE: Failed to run $policytoRun on $comptoConnect"}
}
}
})

$WPFDeviceCompliance_Button.add_Click({
$WPFClientActionResult.Visibility = "Hidden"
$WPFOptionsLabel.visibility = "hidden"
$WPFOptionsLine.visibility = "hidden"
$WPFOptionsWorkInfoLabel.visibility = "hidden"
$WPFOptionsIndicateLabel.visibility = "hidden"
$WPFOptionsBusinessHoursFromLabel.visibility = "hidden"
$WPFOptionsStartTime.visibility = "hidden"
$WPFOptionsEndTime.visibility = "hidden"
$WPFOptionDaysLabel.visibility = "hidden"
$WPFSetHoursButton.visibility = "hidden"
$WPFSetHoursResultTextblock.visibility = "hidden"
$WPFOptionsThroughLabel.visibility = "hidden"
$WPFMondayButton.visibility = "hidden"
$WPFSundayButton.visibility = "hidden"
$WPFTuesdayButton.visibility = "hidden"
$WPFWednesdayButton.visibility = "hidden"
$WPFThursdayButton.visibility = "hidden"
$WPFFridayButton.visibility = "hidden"
$WPFSaturdayButton.visibility = "hidden"

$WPFUpdateDetailsButton.Visibility = "Hidden"
$WPFInstallOrUninstallButtonUpdate.Visibility = "Hidden"
$WPFParticularUpdateTextblock.visibility = "Hidden"
$WPFLine1Update.visibility = "Hidden"
$WPFUpdateStatusLabel.visibility = "Hidden"
$WPFStatusTextBoxResult_Update_Result.visibility = "Hidden"
$WPFBackButton_Updates_Button.visibility = "Hidden"
$WPFDeadlineLabelUpdate.visibility = "Hidden"
$WPFDeadlineResultUpdates.visibility = "Hidden"
$WPFParticularUpdateTextblock.visibility = "Hidden"
$WPFLine1Update.visibility = "Hidden"
$WPFUpdateStatusLabel.visibility = "Hidden"
$WPFStatusTextBoxResult_Update_Result.visibility = "Hidden"
$WPFBackButton_Updates_Button.visibility = "Hidden"
$WPFDeadlineLabelUpdate.visibility = "Hidden"
$WPFDeadlineResultUpdates.visibility = "Hidden"
$wpfUpdatesListbox.visibility = "Hidden"
 $WPFTaskSequenceDetailsButton.Visibility = "Hidden"
$WPFOperatingSystemTaskSequenceListbox.visibility = "Hidden"
$WPFLine1_TaskSequence.Visibility = "Hidden"
$WPFInstallOrUninstallButton_TaskSequence_Button.Visibility = "Hidden"
$WPFStatusLabel_TaskSequence_Label.Visibility = "Hidden"
$WPFStatusTextBoxResult_TaskSequence_Result.Visibility = "Hidden"
$WPFBackButton_TaskSequence_Button.Visibility = "Hidden"
$WPFParticularTaskSequenceTitle.Visibility = "Hidden"
$WPFAllSoftwareListbox.Visibility = "Hidden"
$WPFDetailsButton.Visibility = "Hidden"

$WPFAll_RadioButton.Visibility = "Visible"
 $WPFApplication_Button.Background = "#FFDDDDDD"
$WPFUpdates_Button.Background = "#FFDDDDDD"
$WPFOperatingSystems_Button.Background = "#FFDDDDDD"
$WPFInstallationStatus_Button.Background = "#FFDDDDDD"
$WPFDeviceCompliance_Button.Background = "#FFADAAAA"
$WPFOptions_Button.Background = "#FFDDDDDD"
$WPFComplianceCheckListbox.visibility = "Visible"
$WPFComplianceDetails.visibility = "Visible"
$comptoConnect =  $WPFConnectTo_Input.Text
$WPFComplianceCheckListbox.items.Clear()
function Get-CMClientBaselineEvaluation
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$false,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromPipeline=$true,
                   Position=0)]
        [string[]]$ComputerName
    )
    begin {
        $ComplianceHash = [hashtable]@{
                                "0" = 'Non-Compliant'
                                "1" = 'Compliant'
                                "2" = 'Submitted'
                                "3" = 'Unknown'
                                "4" = 'Detecting'
                                "5" = 'Not Evaluated'                  
                        }  
        $EvalHash = [hashtable]@{
                                "0" = 'Idle'
                                "1" = 'Evaluated'
                                "5" = 'Not Evaluated'                                   
                        } 
    
        }
    process {
        foreach ($Computer in $ComputerName) {
            # Get a list of baseline objects assigned to the remote computer
            $Baselines = Get-WmiObject -ComputerName $Computer -Namespace root\ccm\dcm -Class SMS_DesiredConfiguration

            # For each (%) baseline object, call SMS_DesiredConfiguration.TriggerEvaluation, passing in the Name and Version as params
            foreach ($Baseline in $Baselines) {
                if ($Baseline.LastEvalTime -eq '00000000000000.000000+000') {
                    $LastEvalTime = 'N/A'
                    } 
                else {
                    $LastEvalTime = $Baseline.ConvertToDateTime($Baseline.LastEvalTime) | out-null
                    }
                $BaselineStatusProperties = [ordered]@{
                    ComputerName = $Baseline.PSComputerName
                    BaselineName = $Baseline.DisplayName
                    Version = $Baseline.Version
                    EvaluationStatus = $EvalHash[$Baseline.Status.tostring()]
                    Compliance = $ComplianceHash[$Baseline.LastComplianceStatus.tostring()]
                    LastEvaluationTime = $LastEvalTime
                    }
                $BaselineStatus = New-Object -TypeName pscustomobject -Property $BaselineStatusProperties
                $BaselineStatus
                }
            }
        }
    end {}
    }

    $ComplianceItems = Get-CMClientBaselineEvaluation -ComputerName $ComptoConnect 
    foreach($item in $ComplianceItems){
    $WPFComplianceCheckListbox.items.add($item.BaselineName)
    }


})

$WPFComplianceDetails.add_Click({
$ComptoConnect = $WPFConnectTo_Input.Text
$BaselineToCheck  = $WPFComplianceCheckListbox.SelectedItem
#write-host "Comptoconnect = $ComptoConnect| Baseline = $BaselineToCheck"
$WMI = Get-WmiObject -ComputerName $ComptoConnect -Namespace root\ccm\dcm -Class SMS_DesiredConfiguration | where displayname -eq $BaselineToCheck
#write-host $wmi
})

$WPFOptions_Button.add_Click({
$WPFClientActionResult.Visibility = "Hidden"
$WPFComplianceCheckListbox.visibility = "Hidden"
$WPFComplianceDetails.visibility = "Hidden"
 $WPFClientActionsListbox.Visibility = "Hidden"
$WPFClientActionRunButton.Visibility = "Hidden"
 $WPFApplication_Button.Background = "#FFDDDDDD"
$WPFUpdates_Button.Background = "#FFDDDDDD"
$WPFOperatingSystems_Button.Background = "#FFDDDDDD"
$WPFInstallationStatus_Button.Background = "#FFDDDDDD"
$WPFDeviceCompliance_Button.Background = "#FFDDDDDD"
$WPFOptions_Button.Background = "#FFADAAAA"
$WPFUpdateDetailsButton.Visibility = "Hidden"
$WPFInstallOrUninstallButtonUpdate.Visibility = "Hidden"
$WPFParticularUpdateTextblock.visibility = "Hidden"
$WPFLine1Update.visibility = "Hidden"
$WPFUpdateStatusLabel.visibility = "Hidden"
$WPFStatusTextBoxResult_Update_Result.visibility = "Hidden"
$WPFBackButton_Updates_Button.visibility = "Hidden"
$WPFDeadlineLabelUpdate.visibility = "Hidden"
$WPFDeadlineResultUpdates.visibility = "Hidden"
$WPFParticularUpdateTextblock.visibility = "Hidden"
$WPFLine1Update.visibility = "Hidden"
$WPFUpdateStatusLabel.visibility = "Hidden"
$WPFStatusTextBoxResult_Update_Result.visibility = "Hidden"
$WPFBackButton_Updates_Button.visibility = "Hidden"
$WPFDeadlineLabelUpdate.visibility = "Hidden"
$WPFDeadlineResultUpdates.visibility = "Hidden"
$wpfUpdatesListbox.visibility = "Hidden"
 $WPFTaskSequenceDetailsButton.Visibility = "Hidden"
$WPFOperatingSystemTaskSequenceListbox.visibility = "Hidden"
$WPFLine1_TaskSequence.Visibility = "Hidden"
$WPFInstallOrUninstallButton_TaskSequence_Button.Visibility = "Hidden"
$WPFStatusLabel_TaskSequence_Label.Visibility = "Hidden"
$WPFStatusTextBoxResult_TaskSequence_Result.Visibility = "Hidden"
$WPFBackButton_TaskSequence_Button.Visibility = "Hidden"
$WPFParticularTaskSequenceTitle.Visibility = "Hidden"
$WPFAll_RadioButton.Visibility = "Hidden"
$WPFAllSoftwareListbox.Visibility = "Hidden"
$WPFDetailsButton.Visibility = "Hidden"

$WPFOptionsLabel.visibility = "Visible"
$WPFOptionsLine.visibility = "Visible"
$WPFOptionsWorkInfoLabel.visibility = "Visible"
$WPFOptionsIndicateLabel.visibility = "Visible"
$WPFOptionsBusinessHoursFromLabel.visibility = "Visible"
$WPFOptionsStartTime.visibility = "Visible"
$WPFOptionsEndTime.visibility = "Visible"
$WPFOptionDaysLabel.visibility = "Visible"
$WPFSetHoursButton.visibility = "Visible"
$WPFSetHoursResultTextblock.visibility = "Visible"
$WPFOptionsThroughLabel.visibility = "Visible"
$WPFMondayButton.visibility = "Visible"
$WPFSundayButton.visibility = "Visible"
$WPFTuesdayButton.visibility = "Visible"
$WPFWednesdayButton.visibility = "Visible"
$WPFThursdayButton.visibility = "Visible"
$WPFFridayButton.visibility = "Visible"
$WPFSaturdayButton.visibility = "Visible"
$WPFOptionsStartTime.items.add("1:00AM");
$WPFOptionsStartTime.items.add("2:00AM");
$WPFOptionsStartTime.items.add("3:00AM");
$WPFOptionsStartTime.items.add("4:00AM");
$WPFOptionsStartTime.items.add("5:00AM");
$WPFOptionsStartTime.items.add("6:00AM");
$WPFOptionsStartTime.items.add("7:00AM");
$WPFOptionsStartTime.items.add("8:00AM");
$WPFOptionsStartTime.items.add("9:00AM");
$WPFOptionsStartTime.items.add("10:00AM");
$WPFOptionsStartTime.items.add("11:00AM");
$WPFOptionsStartTime.items.add("12:00PM");
$WPFOptionsStartTime.items.add("1:00PM");
$WPFOptionsStartTime.items.add("2:00PM");
$WPFOptionsStartTime.items.add("3:00PM");
$WPFOptionsStartTime.items.add("4:00PM");
$WPFOptionsStartTime.items.add("5:00PM");
$WPFOptionsStartTime.items.add("6:00PM");
$WPFOptionsStartTime.items.add("7:00PM");
$WPFOptionsStartTime.items.add("8:00PM");
$WPFOptionsStartTime.items.add("9:00PM");
$WPFOptionsStartTime.items.add("10:00PM");
$WPFOptionsStartTime.items.add("11:00PM");
$WPFOptionsStartTime.items.add("12:00AM");
$WPFOptionsEndTime.items.add("1:00AM");
$WPFOptionsEndTime.items.add("2:00AM");
$WPFOptionsEndTime.items.add("3:00AM");
$WPFOptionsEndTime.items.add("4:00AM");
$WPFOptionsEndTime.items.add("5:00AM");
$WPFOptionsEndTime.items.add("6:00AM");
$WPFOptionsEndTime.items.add("7:00AM");
$WPFOptionsEndTime.items.add("8:00AM");
$WPFOptionsEndTime.items.add("9:00AM");
$WPFOptionsEndTime.items.add("10:00AM");
$WPFOptionsEndTime.items.add("11:00AM");
$WPFOptionsEndTime.items.add("12:00PM");
$WPFOptionsEndTime.items.add("1:00PM");
$WPFOptionsEndTime.items.add("2:00PM");
$WPFOptionsEndTime.items.add("3:00PM");
$WPFOptionsEndTime.items.add("4:00PM");
$WPFOptionsEndTime.items.add("5:00PM");
$WPFOptionsEndTime.items.add("6:00PM");
$WPFOptionsEndTime.items.add("7:00PM");
$WPFOptionsEndTime.items.add("8:00PM");
$WPFOptionsEndTime.items.add("9:00PM");
$WPFOptionsEndTime.items.add("10:00PM");
$WPFOptionsEndTime.items.add("11:00PM");
$WPFOptionsEndTime.items.add("12:00AM");

})

$WPFSetHoursButton.add_Click({
$comptoConnect =  $WPFConnectTo_Input.Text
function Set-SCCMClientBusinessHours
{
<#
    .SYNOPSIS
        Sets the Business Hours of the SCCM client
    .DESCRIPTION
        Sets the flag for rebooting inside or outside of business Hours, The Working Days, And the Start end end time in 24 hour format
    .PARAMETER ComputerName
            Name of computer to set the configuration on - Default is Localhost
    .PARAMETER RebootOutsideBusinessHours
            When this flag is set will tell the system to only reboot outside of the specified business hours - Default is to not set 
    .PARAMETER WorkDays
            Default Value of 62 is M-F
               Sunday     1
               Monday     2
               Tuesday    4
               Wednesday  8
               Thursday   16
               Friday     32
               Saturday   64
    .PARAMETER StartTime
            Sets the Start of business hours - Default same as SCCM 0500            
    .PARAMETER StartTime
            Sets the End of business hours - Default same as SCCM 2200
    .EXAMPLE
        Set-SCCMClientBusinessHours
            Configures SCCM to 
                Reboot when necessary ignoring business hours
                Set Business hours of M-F 0500-2200
    .NOTES
        Author: MicahJ
        Creation Date: 20170525
        Last Modified: 20170525
        Version: 1.0.0
    -----------------------------------------------------------------------------------------------------------------
    CHANGELOG
    -----------------------------------------------------------------------------------------------------------------
        1.0.0 Initial Script
    -----------------------------------------------------------------------------------------------------------------
    Credit
    -----------------------------------------------------------------------------------------------------------------
    Weekday settings from 
        https://powersheller.wordpress.com/2012/11/20/sccm-2012-setting-software-center-business-hours-with-a-compliance-configuration-item/
#>
    param(
        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$True,
                   ValueFromPipelineByPropertyName=$true)]
        [Alias('IPAddress','__Server','CN','Name')]
        [string[]]$ComputerName=$env:COMPUTERNAME,
    [switch]$RebootOutsideBusinessHours,
    [parameter(Mandatory = $false)]
    [int]$WorkingDays= 62,
    [parameter(Mandatory = $false)]
    [ValidateScript({$_ -gt 0 -and $_ -lt 23})]
    [int]$StartTime= 5,
    [parameter(Mandatory = $false)]
    [ValidateScript({$_ -gt 0 -and $_ -lt 23})]
    [int]$EndTime= 22
    )

PROCESS
{
    Foreach($computer in $ComputerName)
        {
        # Get WMI Object
        $CCM = Get-WmiObject -Namespace root\ccm\ClientSDK -Class CCM_ClientUXSettings -List -ComputerName $computer
        if($ccm.SetAutoInstallRequiredSoftwaretoNonBusinessHours($RebootOutsideBusinessHours.IsPresent).returnValue -eq 0)
            {
            #We were successful!
            }
        else
            {
            Write-Warning "$computer Failed Specified Reboot"
            }
	    if($CCM.SetBusinessHours($workingDays, $starttime, $endtime).returnValue -eq 0)
		    {
		    #Do nothing it was all successful
		    }
        else
            {
            Write-Warning "$computer Failed Business Hours"
            }

        } # End Foreach computername
}# End Process
}
$Sunday = $WPFSundayButton.IsChecked
$Monday = $WPFMondayButton.IsChecked
$Tuesday = $WPFTuesdayButton.IsChecked
$Wednesday = $WPFWednesdayButton.IsChecked
$Thursday = $WPFThursdayButton.IsChecked
$Friday = $WPFFridayButton.IsChecked
$Saturday = $WPFSaturdayButton.IsChecked
$TimeStart = $WPFOptionsStartTime.SelectedItem
$TimeEnd = $WPFOptionsEndTime.SelectedItem
$count = 0
if($Sunday){
$count += 1
}
if($Monday){
$count += 2
}
if($Tuesday){
$count += 4
}
if($Wednesday){
$count += 8
}
if($Thursday){
$count += 16
}
if($Friday){
$count += 32
}
if($Satuday){
$count += 64
}



#write-host "count: $count"

Switch($timeStart) {
    "1:00AM" {
        $timeStart = 1
    }
    "2:00AM" {
        $timeStart = 2
    }
    "3:00AM" {
        $timeStart = 3
    }
    "4:00AM" {
       $timeStart = 4
    }
    "5:00AM" {
        $timeStart = 5
    }
    "6:00AM" {
        $timeStart = 6
    }
    "7:00AM" {
        $timeStart = 7
    }
    "8:00AM" {
        $timeStart = 8
    }
    "9:00AM" {
        $timeStart = 9
    }
    "10:00AM" {
        $timeStart = 10
    }
    "11:00AM" {
        $timeStart = 11
    }
    "12:00PM" {
        $timeStart = 12
    }
    "1:00PM" {
        $timeStart = 13
    }
    "2:00PM" {
        $timeStart = 14
    }
    "3:00PM" {
        $timeStart = 15
    }
    "4:00PM" {
        $timeStart = 16
    }
    "5:00PM" {
        $timeStart = 17
    }
    "6:00PM" {
        $timeStart = 18
    }
    "7:00PM" {
        $timeStart = 19
    }
    "8:00PM" {
        $timeStart = 20
    }
    "9:00PM" {
        $timeStart = 21
    }
    "10:00PM" {
        $timeStart = 22
    }
    "11:00PM" {
        $timeStart = 23
    }
    "12:00AM" {
        $timeStart = 24
    }
}

Switch($TimeEnd) {
    "1:00AM" {
        $TimeEnd = 1
    }
    "2:00AM" {
        $TimeEnd = 2
    }
    "3:00AM" {
        $TimeEnd = 3
    }
    "4:00AM" {
       $TimeEnd = 4
    }
    "5:00AM" {
        $TimeEnd = 5
    }
    "6:00AM" {
        $TimeEnd = 6
    }
    "7:00AM" {
        $TimeEnd = 7
    }
    "8:00AM" {
        $TimeEnd = 8
    }
    "9:00AM" {
        $TimeEnd = 9
    }
    "10:00AM" {
        $TimeEnd = 10
    }
    "11:00AM" {
        $TimeEnd = 11
    }
    "12:00PM" {
        $TimeEnd = 12
    }
    "1:00PM" {
        $TimeEnd = 13
    }
    "2:00PM" {
        $TimeEnd = 14
    }
    "3:00PM" {
        $TimeEnd = 15
    }
    "4:00PM" {
        $TimeEnd = 16
    }
    "5:00PM" {
        $TimeEnd = 17
    }
    "6:00PM" {
        $TimeEnd = 18
    }
    "7:00PM" {
        $TimeEnd = 19
    }
    "8:00PM" {
        $TimeEnd = 20
    }
    "9:00PM" {
        $TimeEnd = 21
    }

    "10:00PM" {
        $TimeEnd = 22
    }
    "11:00PM" {
        $TimeEnd = 23
    }
    "12:00AM" {
        $TimeEnd = 24
    }
}

try{
Set-SCCMClientBusinessHours -ComputerName $comptoConnect -WorkingDays $count -StartTime $TimeStart -EndTime $TimeEnd
$WPFSetHoursResultTextblock.text = "Business hours successfully set on $comptoConnect"
}
catch{
$WPFSetHoursResultTextblock.text = "Business hours FAILED to set."
}

})
 $form.ShowDialog()





