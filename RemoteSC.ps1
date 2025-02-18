#ERASE ALL THIS AND PUT XAML BELOW between the @" "@ 
$inputXML = @"
<Window x:Class="RemoteSoftwareCenterV2.RemoteSoftwareCenter"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:RemoteSoftwareCenterV2"
        mc:Ignorable="d"
        Title="Remote Software Center" Height="555" Width="806">
    <!-- This makes the window non-resizable -->
    <!-- Define the grid layout -->
    <Grid Margin="0,10,0,-6">
        <!-- This makes the window non-resizable -->
        <!-- Define rows for layout -->
        <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <!-- Header area -->
            <RowDefinition Height="Auto"/>
            <!-- Button area -->
            <RowDefinition Height="*"/>
            <!-- Content area, stretches with resize -->
        </Grid.RowDefinitions>

        <!-- Background Rectangle for Header -->
        <Rectangle Grid.Row="0" Height="100" Fill="#FFA8B5FF" HorizontalAlignment="Stretch" Stroke="Black"/>

        <!-- Background Rectangle for Buttons -->
        <Rectangle Grid.Row="1" Height="52" Fill="#FFD2F8FB" HorizontalAlignment="Stretch" Stroke="Black"/>

        <!-- Header Label -->
        <Label x:Name="Label_RemoteSoftwareCenter" Content="Remote Software Center" 
               HorizontalAlignment="Left" Margin="24,33,0,0" VerticalAlignment="Top" 
               Height="34" Width="300" FontFamily="Calisto MT" FontSize="24"/>
        <Label x:Name="Label_ConnectedTo" Content="Connect to:" 
               HorizontalAlignment="Right" Margin="0,44,229,0" VerticalAlignment="Top" 
               FontFamily="Calisto MT" Height="23" Width="86"/>
        <TextBox x:Name="Input_ConnectTo" 
                 HorizontalAlignment="Right" Margin="0,47,122,0" VerticalAlignment="Top" 
                 Width="120" FontFamily="Calisto MT"/>
        <Button x:Name="Button_Connect" Content="Connect" 
                HorizontalAlignment="Right" Margin="0,47,38,0" VerticalAlignment="Top" 
                Width="79" FontFamily="Calisto MT"/>



        <!-- Buttons, placed in a horizontal StackPanel for better resizing -->
        <StackPanel Grid.Row="1" Orientation="Horizontal" HorizontalAlignment="Center" Margin="0,10,0,0">
            <Button x:Name="Button_Applications" Content="Applications" Width="103" Margin="5,0" FontFamily="Calisto MT"/>
            <Button x:Name="Button_Updates" Content="Updates" Width="108" Margin="5,0" FontFamily="Calisto MT"/>
            <Button x:Name="Button_OperatingSystems" Content="Task Sequences" Width="109" Margin="5,0" FontFamily="Calisto MT"/>
            <Button x:Name="Button_InstallationStatus" Content="Installation Status" Width="102" Margin="5,0" FontFamily="Calisto MT"/>
            <Button x:Name="Button_DeviceCompliance" Content="Device Compliance" Width="111" Margin="5,0" FontFamily="Calisto MT"/>
            <Button x:Name="Button_Options" Content="Options" Width="99" Margin="5,0" FontFamily="Calisto MT"/>
            <Button x:Name="Button_ClientActions" Content="Client Actions" Width="93" Margin="5,0" FontFamily="Calisto MT"/>
        </StackPanel>

        <!-- ListView for displaying applications -->
        <ListView x:Name="ApplicationsListView" Grid.Row="2" Margin="10,24,10,58" Visibility="Hidden">
            <ListView.View>
                <!-- Use a GridView to define columns for the ListView -->
                <GridView>
                    <!-- Column for the application icon -->
                    <GridViewColumn Width="50">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <Image Source="{Binding Icon}" Width="40" Height="40" />
                            </DataTemplate>
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>

                    <!-- Column for the application name -->
                    <GridViewColumn Header="Application Name" Width="300"
                                    DisplayMemberBinding="{Binding Name}" />

                    <!-- Version Column -->
                    <GridViewColumn Header="Version" Width="100"
                                    DisplayMemberBinding="{Binding Version}" />

                    <!-- Deployment Type Column (Now added between Version and Status) -->
                    <GridViewColumn Header="Error Code" Width="100"
                                    DisplayMemberBinding="{Binding ErrorCode}" />

                    <!-- Status Column -->
                    <GridViewColumn Header="Status" Width="100"
                                    DisplayMemberBinding="{Binding Status}" />
                </GridView>
            </ListView.View>
        </ListView>

        <!-- Progress Bar positioned in the content area (bottom) -->
        <ProgressBar x:Name="ProgressBar" Grid.Row="2" Height="5" 
                     HorizontalAlignment="Stretch" Margin="10,10" 
                     VerticalAlignment="Bottom" Visibility="Hidden"/>

        <!-- Details Button Positioned at the bottom -->
        <Button x:Name="Button_Details" Content="Details" HorizontalAlignment="Center" Margin="0,0,0,10" Grid.Row="2" VerticalAlignment="Bottom" Height="38" Width="118" FontFamily="Calisto MT" Visibility="Hidden"/>
        <Image x:Name="Image_Details_TaskSequence" HorizontalAlignment="Left" Height="82" Margin="134,62,0,0" Grid.Row="2" VerticalAlignment="Top" Width="76" Visibility="Hidden"/>
        <Button x:Name="Button_Details_InstallUninstall" Content="" HorizontalAlignment="Left" Margin="222,137,0,0" Grid.Row="2" VerticalAlignment="Top" Width="102" Background="#FFA8B5FF" Height="24" FontFamily="Calisto MT" FontSize="14" FontWeight="Bold" Foreground="White" Visibility="Hidden"/>
        <Rectangle x:Name="Rectangle_Details" HorizontalAlignment="Left" Height="2" Margin="222,166,0,0" Grid.Row="2" Stroke="Black" VerticalAlignment="Top" Width="546" RenderTransformOrigin="0.5,0.5" Visibility="Hidden">
            <Rectangle.RenderTransform>
                <TransformGroup>
                    <ScaleTransform ScaleY="-1"/>
                    <SkewTransform/>
                    <RotateTransform/>
                    <TranslateTransform/>
                </TransformGroup>
            </Rectangle.RenderTransform>
        </Rectangle>
        <Label x:Name="Label_Details_Status" Content="Status:" HorizontalAlignment="Left" Margin="224,191,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <Label x:Name="Label_Details_Version" Content="Version:" HorizontalAlignment="Left" Margin="224,221,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <Label x:Name="Label_Details_Progress" Content="Progress:" HorizontalAlignment="Left" Margin="224,252,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <ProgressBar x:Name="ProgressBar_Details" HorizontalAlignment="Left" Height="18" Margin="296,256,0,0" Grid.Row="2" VerticalAlignment="Top" Width="363" Visibility="Hidden"/>
        <Label x:Name="Label_Details_Status_Output" Content="Label" HorizontalAlignment="Left" Margin="283,191,0,0" Grid.Row="2" VerticalAlignment="Top" Width="485" Visibility="Hidden"/>
        <Label x:Name="Label_Details_Version_Output" Content="Label" HorizontalAlignment="Left" Margin="283,221,0,0" Grid.Row="2" VerticalAlignment="Top" Width="308" Visibility="Hidden"/>
        <Label x:Name="Textbox_Details_AppName" Content="" HorizontalAlignment="Left" Margin="224,67,0,0" Grid.Row="2" VerticalAlignment="Top" Height="49" Width="572" FontFamily="Visible MT" FontSize="20" Visibility="Visible"/>
        <ListView x:Name="SoftwareUpdateListView" Grid.Row="2" Margin="10,10,10,58" Visibility="Hidden">
            <ListView.View>
                <!-- Use a GridView to define columns for the ListView -->
                <GridView>
                    <!-- Column for the application icon -->
                    <GridViewColumn Width="50">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <Image Source="{Binding Icon}" Width="40" Height="40" />
                            </DataTemplate>
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>

                    <!-- Column for the application name -->
                    <GridViewColumn Header="Update Name" Width="300"
                        DisplayMemberBinding="{Binding UpdateName}" />

                    <!-- Version Column -->
                    <GridViewColumn Header="Publisher" Width="100"
                        DisplayMemberBinding="{Binding Publisher}" />



                    <!-- Status Column -->
                    <GridViewColumn Header="Status" Width="100"
                        DisplayMemberBinding="{Binding Status}" />
                </GridView>
            </ListView.View>
        </ListView>
        <Button x:Name="Button_Details_Updates" Content="Details" HorizontalAlignment="Center" Margin="0,0,0,10" Grid.Row="2" VerticalAlignment="Bottom" Height="38" Width="118" FontFamily="Calisto MT" Visibility="Hidden"/>
        <Image x:Name="Image_Details_Update" HorizontalAlignment="Left" Height="82" Margin="134,62,0,0" Grid.Row="2" VerticalAlignment="Top" Width="76" Visibility="Hidden"/>
        <Button x:Name="Button_Details_InstallUninstall_Update" Content="" HorizontalAlignment="Left" Margin="222,137,0,0" Grid.Row="2" VerticalAlignment="Top" Width="102" Background="#FFA8B5FF" Height="24" FontFamily="Calisto MT" FontSize="14" FontWeight="Bold" Foreground="White" Visibility="Hidden"/>
        <Rectangle x:Name="Rectangle_Details_Update" HorizontalAlignment="Left" Height="2" Margin="222,166,0,0" Grid.Row="2" Stroke="Black" VerticalAlignment="Top" Width="546" RenderTransformOrigin="0.5,0.5" Visibility="Hidden">
            <Rectangle.RenderTransform>
                <TransformGroup>
                    <ScaleTransform ScaleY="-1"/>
                    <SkewTransform/>
                    <RotateTransform/>
                    <TranslateTransform/>
                </TransformGroup>
            </Rectangle.RenderTransform>
        </Rectangle>
        <Label x:Name="Label_Details_Status_Update" Content="Status:" HorizontalAlignment="Left" Margin="224,191,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <Label x:Name="Label_Details_Publisher_Update" Content="Publisher:" HorizontalAlignment="Left" Margin="224,221,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <Label x:Name="Label_Details_Progress_Update" Content="Progress:" HorizontalAlignment="Left" Margin="224,252,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <ProgressBar x:Name="ProgressBar_Details_Update" HorizontalAlignment="Left" Height="18" Margin="296,256,0,0" Grid.Row="2" VerticalAlignment="Top" Width="363" Visibility="Hidden"/>
        <Label x:Name="Label_Details_Status_Output_Update" Content="Label" HorizontalAlignment="Left" Margin="283,191,0,0" Grid.Row="2" VerticalAlignment="Top" Width="485" Visibility="Hidden"/>
        <Label x:Name="Label_Details_Publisher_Output_Update" Content="Label" HorizontalAlignment="Left" Margin="283,221,0,0" Grid.Row="2" VerticalAlignment="Top" Width="308" Visibility="Hidden"/>
        <Label x:Name="Textbox_Details_UpdateName" Content="" HorizontalAlignment="Left" Margin="224,67,0,0" Grid.Row="2" VerticalAlignment="Top" Height="49" Width="544" FontFamily="Calisto MT" FontSize="20" Visibility="Hidden"/>
        <!-- ListView for Client Actions -->
        <ListView x:Name="ClientActions_Listview" Grid.Row="2" Margin="10,10,10,58" Visibility="Hidden" HorizontalContentAlignment="Center">
            <ListView.View>
                <GridView>
                    <GridViewColumn Header="Action to run:" Width="700" DisplayMemberBinding="{Binding Name}" />
                </GridView>
            </ListView.View>
        </ListView>

        <!-- Add a Button at the bottom -->
        <Button x:Name="Button_Client_Actions" Content="Run" 
                HorizontalAlignment="Center" VerticalAlignment="Bottom" 
                Height="38" Width="118" FontFamily="Calisto MT" 
                Grid.Row="3" Margin="0,20,0,20" Visibility="Hidden"/>
        <ListView x:Name="Install_Status_ListView" Grid.Row="2" Margin="10,10,10,58" Visibility="Hidden">
            <ListView.View>
                <!-- Use a GridView to define columns for the ListView -->
                <GridView>
                    <!-- Column for the application icon -->
                    <GridViewColumn Width="50">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <Image Source="{Binding Icon}" Width="40" Height="40" />
                            </DataTemplate>
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>

                    <!-- Column for the application name -->
                    <GridViewColumn Header="Name" Width="300"
                        DisplayMemberBinding="{Binding Name}" />


                    <!-- Deployment Type Column (Now added between Version and Status) -->
                    <GridViewColumn Header="Install date" Width="150"
                        DisplayMemberBinding="{Binding InstallDate}" />

                    <!-- Status Column -->
                    <GridViewColumn Header="Type" Width="80"
                        DisplayMemberBinding="{Binding Type}" />

                    <!-- Status Column -->
                    <GridViewColumn Header="Status" Width="170"
                        DisplayMemberBinding="{Binding Status}" />


                </GridView>
            </ListView.View>
        </ListView>
        <ListView x:Name="OperatingSystemListview" Grid.Row="2" Margin="10,10,10,58" Visibility="Hidden">
            <ListView.View>
                <!-- Use a GridView to define columns for the ListView -->
                <GridView>
                    <!-- Column for the application icon -->
                    <GridViewColumn Width="50">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <Image Source="{Binding Icon}" Width="40" Height="40" />
                            </DataTemplate>
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>

                    <!-- Column for the application name -->
                    <GridViewColumn Header="Name" Width="300"
                        DisplayMemberBinding="{Binding Name}" />

                    <!-- Version Column -->
                    <GridViewColumn Header="Publisher" Width="100"
                        DisplayMemberBinding="{Binding Publisher}" />



                    <!-- Status Column -->
                    <GridViewColumn Header="Status" Width="100"
                        DisplayMemberBinding="{Binding Status}" />
                </GridView>
            </ListView.View>
        </ListView>
        <Button x:Name="Button_Details_TaskSequences" Content="Details" HorizontalAlignment="Center" Margin="0,312,0,0" Grid.Row="2" VerticalAlignment="Top" Height="38" Width="118" FontFamily="Calisto MT" Visibility="Hidden"/>
        <Button x:Name="Button_Details_InstallUninstall_TaskSequence" Content="" HorizontalAlignment="Left" Margin="222,137,0,0" Grid.Row="2" VerticalAlignment="Top" Width="102" Background="#FFA8B5FF" Height="24" FontFamily="Calisto MT" FontSize="14" FontWeight="Bold" Foreground="White" Visibility="Hidden"/>
        <Rectangle x:Name="Rectangle_Details_TaskSequence" HorizontalAlignment="Left" Height="2" Margin="222,166,0,0" Grid.Row="2" Stroke="Black" VerticalAlignment="Top" Width="546" RenderTransformOrigin="0.5,0.5" Visibility="Hidden">
            <Rectangle.RenderTransform>
                <TransformGroup>
                    <ScaleTransform ScaleY="-1"/>
                    <SkewTransform/>
                    <RotateTransform/>
                    <TranslateTransform/>
                </TransformGroup>
            </Rectangle.RenderTransform>
        </Rectangle>
        <Label x:Name="Label_Details_TaskSequence" Content="Status:" HorizontalAlignment="Left" Margin="224,191,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <Label x:Name="Label_Details_Progress_TaskSequence" Content="Progress:" HorizontalAlignment="Left" Margin="224,229,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <ProgressBar x:Name="ProgressBar_Details_TaskSequence" HorizontalAlignment="Left" Height="18" Margin="296,233,0,0" Grid.Row="2" VerticalAlignment="Top" Width="363" Visibility="Hidden"/>
        <Label x:Name="Label_Details_Status_Output_TaskSequence" Content="Label" HorizontalAlignment="Left" Margin="283,191,0,0" Grid.Row="2" VerticalAlignment="Top" Width="485" Visibility="Hidden"/>
        <Label x:Name="Textbox_Details_TaskSequence" Content="" HorizontalAlignment="Left" Margin="224,67,0,0" Grid.Row="2" VerticalAlignment="Top" Height="49" Width="572" FontFamily="Visible MT" FontSize="20" Visibility="Hidden"/>
        <Label x:Name="Label_WorkInformation" Content="Work Information" HorizontalAlignment="Left" Margin="319,38,0,0" Grid.Row="2" VerticalAlignment="Top" Foreground="#FF3684AD" FontWeight="Bold" Height="41" FontSize="18" Width="184" Visibility="Hidden"/>
        <Label x:Name="Label_SetHours" Content="Set the business hours for the remote system." HorizontalAlignment="Center" Margin="0,110,0,0" Grid.Row="2" VerticalAlignment="Top" Height="27" Width="256" Visibility="Hidden"/>
        <Label x:Name="Label_From" Content="From:" HorizontalAlignment="Left" Margin="209,154,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <ComboBox x:Name="Combo_From" HorizontalAlignment="Left" Margin="257,156,0,0" Grid.Row="2" VerticalAlignment="Top" Width="120" Visibility="Hidden"/>
        <Label x:Name="Label_To" Content="To:" HorizontalAlignment="Left" Margin="409,155,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <ComboBox x:Name="Combo_To" HorizontalAlignment="Left" Margin="453,156,0,0" Grid.Row="2" VerticalAlignment="Top" Width="120" Visibility="Hidden"/>
        <CheckBox x:Name="Checkbox_Sunday" Content="Sunday" HorizontalAlignment="Left" Margin="259,193,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="Checkbox_Monday" Content="Monday" HorizontalAlignment="Left" Margin="341,193,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="Checkbox_Tuesday" Content="Tuesday" HorizontalAlignment="Left" Margin="421,193,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="Checkbox_Wednesday" Content="Wednesday" HorizontalAlignment="Left" Margin="497,193,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="Checkbox_Thursday" Content="Thursday" HorizontalAlignment="Left" Margin="283,230,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="Checkbox_Friday" Content="Friday" HorizontalAlignment="Left" Margin="385,230,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="Checkbox_Saturday" Content="Saturday" HorizontalAlignment="Left" Margin="464,230,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <Button x:Name="Button_Set" Content="Set" HorizontalAlignment="Center" Margin="0,279,0,0" Grid.Row="2" VerticalAlignment="Top" Height="29" Width="108" Visibility="Hidden"/>
        <Rectangle x:Name="Rectangle_WI" HorizontalAlignment="Center" Height="18" Margin="0,87,0,0" Grid.Row="2" Stroke="Black" VerticalAlignment="Top" Width="756" Visibility="Hidden"/>
        <Label x:Name="Label_ComputerNameCompliance" Content="" HorizontalAlignment="Left" Margin="358,44,0,0" Grid.Row="2" VerticalAlignment="Top" Height="48" Width="274" FontSize="22" Visibility="Hidden"/>
        <Image x:Name="Image_Compliance" HorizontalAlignment="Left" Height="54" Margin="253,44,0,0" Grid.Row="2" VerticalAlignment="Top" Width="74" Visibility="Hidden"/>
        <Label x:Name="Label_ComplianceStatus" Content="Compliance status:" HorizontalAlignment="Left" Margin="246,103,0,0" Grid.Row="2" VerticalAlignment="Top" Width="123" Visibility="Hidden"/>
        <Label x:Name="Label_CompliantResult" Content="" HorizontalAlignment="Left" Margin="377,105,0,0" Grid.Row="2" VerticalAlignment="Top" Width="161" Visibility="Hidden"/>
        <Button x:Name="Button_CheckCompliance" Content="Check Compliance" HorizontalAlignment="Left" Margin="308,217,0,0" Grid.Row="2" VerticalAlignment="Top" Height="21" Width="129" Visibility="Hidden"/>
        <ListView x:Name="BaselineListview" Grid.Row="2" Margin="10,10,10,58" Visibility="Hidden">
            <ListView.View>
                <!-- Use a GridView to define columns for the ListView -->
                <GridView>
                    <!-- Column for the application icon -->
                    <GridViewColumn Width="50">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <Image Source="{Binding Icon}" Width="40" Height="40" />
                            </DataTemplate>
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>

                    <!-- Column for the application name -->
                    <GridViewColumn Header="Name" Width="200"
                        DisplayMemberBinding="{Binding Name}" />

                    <!-- Version Column -->
                    <GridViewColumn Header="Last Evaluation Time" Width="200"
                        DisplayMemberBinding="{Binding EvaluationTime}" />



                    <!-- Status Column -->
                    <GridViewColumn Header="Compliance State" Width="250"
                        DisplayMemberBinding="{Binding ComplianceState}" />
                </GridView>
            </ListView.View>
        </ListView>
        <Button x:Name="Details_Compliance" Content="Evaluate" HorizontalAlignment="Left" Margin="233,302,0,0" Grid.Row="2" VerticalAlignment="Top" Height="28" Width="118" FontFamily="Calisto MT" Visibility="Hidden"/>
        <Button x:Name="Details_Compliance_Refresh" Content="Refresh" HorizontalAlignment="Left" Margin="478,302,0,0" Grid.Row="2" VerticalAlignment="Top" Height="28" Width="118" FontFamily="Calisto MT" Visibility="Hidden"/>
        <Button x:Name="NewButton" Content="New" 
            HorizontalAlignment="Right" Margin="0,305,25,0" VerticalAlignment="Top" 
            Width="68" FontFamily="Calisto MT" FontSize="10" Grid.Row="2" Height="20" Background="#FFA8B5FF" Visibility="Hidden"/>
        <Image x:Name="Image_Details_Image" HorizontalAlignment="Left" Height="82" Margin="134,62,0,0" Grid.Row="2" VerticalAlignment="Top" Width="76" Visibility="Hidden"/>
        <CheckBox x:Name="ApplicationMachineCheckbox" Content="Deployed to machine" HorizontalAlignment="Left" Margin="24,5,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <CheckBox x:Name="ApplicationUserCheckbox" Content="Deployed to logged on user" HorizontalAlignment="Left" Margin="182,5,0,0" Grid.Row="2" VerticalAlignment="Top" Visibility="Hidden"/>
        <ListView x:Name="ApplicationsListView_UserBased" Grid.Row="2" Margin="10,24,10,58" Visibility="Hidden">
            <ListView.View>
                <!-- Use a GridView to define columns for the ListView -->
                <GridView>
                    <!-- Column for the application icon -->
                    <GridViewColumn Width="50">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <Image Source="{Binding Icon}" Width="40" Height="40" />
                            </DataTemplate>
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>

                    <!-- Column for the application name -->
                    <GridViewColumn Header="Application Name" Width="300"
                        DisplayMemberBinding="{Binding Name}" />

                    <!-- Version Column -->
                    <GridViewColumn Header="Collection Name" Width="100"
                        DisplayMemberBinding="{Binding Version}" />

                    <!-- Deployment Type Column (Now added between Version and Status) -->
                    <GridViewColumn Header="Type" Width="100"
                        DisplayMemberBinding="{Binding ErrorCode}" />

                    <!-- Status Column -->
                    <GridViewColumn Header="Status" Width="100"
                        DisplayMemberBinding="{Binding Status}" />
                </GridView>
            </ListView.View>
        </ListView>

    </Grid>
</Window>






"@

$inputXML = $inputXML -replace 'mc:Ignorable="d"', '' -replace "x:N", 'N' -replace '^<Win.*', '<Window'
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML
#Read XAML
 
$reader = (New-Object System.Xml.XmlNodeReader $xaml) 
try { $Form = [Windows.Markup.XamlReader]::Load( $reader ) }
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "We ran into a problem with the XAML code.  Check the syntax for this control..."
    ##write-host $error[0].Exception.Message -ForegroundColor Red
    if ($error[0].Exception.Message -like "*button*") {
        write-warning "Ensure your &lt;button in the `$inputXML does NOT have a Click=ButtonClick property.  PS can't handle this`n`n`n`n"
    }
}
catch {
    #if it broke some other way <img draggable="false" role="img" class="emoji" alt="😀" src="https://s0.wp.com/wp-content/mu-plugins/wpcom-smileys/twemoji/2/svg/1f600.svg">
    #write-host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."
}
 
#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================
 
$xaml.SelectNodes("//*[@Name]") | % { Set-Variable -Name "WPF$($_.Name)" -Value $Form.FindName($_.Name) }
 
Function Get-FormVariables {
    if ($global:ReadmeDisplay -ne $true) {
        #write-host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow;$global:ReadmeDisplay=$true
    }
    #write-host "Found the following interactable elements from our form" -ForegroundColor Cyan
    get-variable WPF*
}
 
Get-FormVariables


$WPFButton_Connect.add_Click({
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $RemoteComputer = $WPFInput_ConnectTo.text

        $TestConnection = Test-Connection $RemoteComputer -ErrorAction Ignore -Count 1
        if ($TestConnection) {
            try {
                Get-WmiObject -ComputerName $RemoteComputer -Namespace root\ccm\dcm -QUERY "SELECT * FROM SMS_DesiredConfiguration" -ErrorAction Stop 
                $UserSignedIn = invoke-command -computername $remotecomputer { ((quser) -replace '^>', '') -replace '\s{2,}', ',' | ConvertFrom-Csv }
                $global:UserSignedIn = $UserSignedIn.USERNAME
                $UsernameSignedIn = $UserSignedIn.Username
                if ($UserSignedIn) {
                    $WPFApplicationUserCheckbox.IsEnabled = $true
                    $WPFApplicationUserCheckbox.content = "Deployed to logged on user ( $UsernameSignedIn )"
                }
                else {
                    write-host $failure
                    $WPFApplicationUserCheckbox.IsEnabled = $false
                }
                $WPFNewButton.Visibility = "Visible"
                $WPFButton_Connect.Background = "#FFA29D9D"
                $WPFButton_Connect.content = "Connected"
                $RemoteComputer = $WPFInput_ConnectTo.text
                $WPFButton_Applications.Background = "#FFA8B5FF"
                $WPFButton_ClientActions.Background = "#FFDDDDDD"
                $WPFButton_DeviceCompliance.Background = "#FFDDDDDD"
                $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
                $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
                $WPFButton_Options.Background = "#FFDDDDDD"
                $WPFButton_Updates.Background = "#FFDDDDDD"
                $WPFProgressBar.Visibility = "Visible"
                $WPFProgressBar.Maximum = 10
                $WPFProgressBar.Value = 0
                $RemoteComputer = $WPFInput_ConnectTo.text
                # Start the job and capture it in a variable
                Remove-Job -Name GetApplications -ErrorAction Ignore
                $job = Start-Job -Name GetApplications -ScriptBlock {
                    param ($RemoteComputer)
    
                    # Retrieve the application data from the remote computer
                    $apps = (Get-WmiObject -Namespace "root\ccm\ClientSDK" -ComputerName $RemoteComputer -Class CCM_Application)
                    return $apps
                } -ArgumentList $RemoteComputer


                $count = 0
                do {
                    if ($count -eq 10) { $count = 0 }
                    $WPFProgressBar.value = $count
                    [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
                    start-sleep -Milliseconds 100
                    $count++
                    $JobStatus = (get-job -Name GetApplications).state

                }
                until($JobStatus -eq "Completed")
                $WPFProgressBar.value = 0
                $WPFProgressBar.Visibility = "Hidden"
                $WPFApplicationsListView.Visibility = "Visible"
                $WPFButton_Details.Visibility = "Visible"
                $WPFApplicationMachineCheckbox.Visibility = "Visible"
                $WPFApplicationUserCheckbox.Visibility = "Visible"
                $WPFApplicationMachineCheckbox.IsChecked = $true
                # Get the results
                $RemoteApplications = Receive-Job -Name GetApplications

                # Remove the job if it's no longer needed
                Remove-Job -Name GetApplications

                # Output the results

                $Applications = @()
                foreach ($Application in $RemoteApplications) {
                    $AppName = $Application.fullname
                    $softwareVersion = $Application.SoftwareVersion
                    $icon = $Application.icon
                    if (!($icon)) { $icon = "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" }
                    $installState = $Application.InstallState
                    if ($installState -eq "NotInstalled") { $installState = "Not Installed" }
                    $ErrorCode = $application.errorcode
    
                    $obj = [PSCustomObject]@{
                        Name      = "$AppName"
                        Icon      = [convert]::FromBase64String($icon)
                        Version   = $softwareVersion
                        Status    = $installState
                        ErrorCode = $ErrorCode
                    }
                    $Applications += $obj  # Use += to add the object to the array
                }
                # Assign the data source to the ListView
                $WPFApplicationsListView.ItemsSource = $Applications
                [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
            }
            catch {
                $WPFButton_Connect.content = "Failure"
            }
        }
        else {
            $Message = "Failed to connect to $RemoteComputer"
            [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::error)
            $WPFButton_Connect.content = "Retry..."
        }
        $WPFNewButton.Visibility = "Visible"


    })

$WPFButton_Applications.add_Click({
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_TaskSequence.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_TaskSequences.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFImage_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFNewButton.Visibility = "Visible"
        $WPFApplicationMachineCheckbox.Visibility = "Visible"
        $WPFApplicationUserCheckbox.Visibility = "Visible"
        $WPFApplicationMachineCheckbox.IsChecked = $true
        $WPFApplicationsListView.items.clear()
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFDetails_Compliance_Refresh.Visibility = "Hidden"
        $WPFBaselineListview.Visibility = "Hidden"
        $WPFDetails_Compliance.Visibility = "Hidden"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"

        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFOperatingSystemListview.Visibility = "Hidden"
        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"

        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.items.clear()
        $RemoteComputer = $WPFInput_ConnectTo.text
        $WPFButton_Applications.Background = "#FFA8B5FF"
        $WPFButton_ClientActions.Background = "#FFDDDDDD"
        $WPFButton_DeviceCompliance.Background = "#FFDDDDDD"
        $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
        $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
        $WPFButton_Options.Background = "#FFDDDDDD"
        $WPFButton_Updates.Background = "#FFDDDDDD"
        $WPFProgressBar.Visibility = "Visible"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar_Details.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFLabel_Details_Progress.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFProgressBar.Maximum = 10
        $WPFProgressBar.Value = 0
        $RemoteComputer = $WPFInput_ConnectTo.text
        # Start the job and capture it in a variable
        Remove-Job -Name GetApplications -ErrorAction Ignore
        $job = Start-Job -Name GetApplications -ScriptBlock {
            param ($RemoteComputer)
    
            # Retrieve the application data from the remote computer
            $apps = (Get-WmiObject -Namespace "root\ccm\ClientSDK" -ComputerName $RemoteComputer -Class CCM_Application)
            return $apps
        } -ArgumentList $RemoteComputer


        $count = 0
        do {
            if ($count -eq 10) { $count = 0 }
            $WPFProgressBar.value = $count
            [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
            start-sleep -Milliseconds 100
            $count++
            $JobStatus = (get-job -Name GetApplications).state

        }
        until($JobStatus -eq "Completed")
        $WPFProgressBar.value = 0
        $WPFProgressBar.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Visible"
        $WPFButton_Details.Visibility = "Visible"
        # Get the results
        $RemoteApplications = Receive-Job -Name GetApplications

        # Remove the job if it's no longer needed
        Remove-Job -Name GetApplications

        # Output the results

        $Applications = @()
        if (!($RemoteApplications)) {
            $obj = [PSCustomObject]@{
                Name      = "No Applications Available"
                Icon      = [convert]::FromBase64String($icon)
                Version   = "n/a"
                ErrorCode = "n/a"
            }
            $Applications += $obj  # Use += to add the object to the array
            $WPFButton_Details.Visibility = "hidden"

        }
        else {
            foreach ($Application in $RemoteApplications) {
                $AppName = $Application.fullname
                $softwareVersion = $Application.SoftwareVersion
                $icon = $Application.icon
                if (!($icon)) { $icon = "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" }
                $installState = $Application.InstallState
                if ($installState -eq "NotInstalled") { $installState = "Not Installed" }
                $ErrorCode = $application.errorcode
    
                $obj = [PSCustomObject]@{
                    Name      = "$AppName"
                    Icon      = [convert]::FromBase64String($icon)
                    Version   = $softwareVersion
                    Status    = $installState
                    ErrorCode = $ErrorCode
                }
                $Applications += $obj  # Use += to add the object to the array
            }
        }
        # Assign the data source to the ListView
        $WPFApplicationsListView.ItemsSource = $Applications
        [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh

    })

$WPFButton_Updates.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFLabel_Details_ApplicationName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_TaskSequence.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_TaskSequences.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFImage_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFSoftwareUpdateListView.items.clear()
        $WPFNewButton.Visibility = "Visible"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFDetails_Compliance_Refresh.Visibility = "Hidden"
        $WPFBaselineListview.Visibility = "Hidden"
        $WPFDetails_Compliance.Visibility = "Hidden"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"

        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFOperatingSystemListview.Visibility = "Hidden"
        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"

        $WPFButton_Details.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Applications.Background = "#FFDDDDDD"
        $WPFButton_ClientActions.Background = "#FFDDDDDD"
        $WPFButton_DeviceCompliance.Background = "#FFDDDDDD"
        $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
        $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
        $WPFButton_Options.Background = "#FFDDDDDD"
        $WPFButton_Updates.Background = "#FFA8B5FF"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"






        $RemoteComputer = $WPFInput_ConnectTo.text
        $WPFProgressBar.Visibility = "Visible"
        $job = Start-Job -Name GetUpdates -ScriptBlock {
            param ($RemoteComputer)
    
            # Retrieve the application data from the remote computer
            $Updates = (Get-WmiObject -Namespace "root\ccm\ClientSDK" -ComputerName $RemoteComputer -Class CCM_SoftwareUpdate)
            return $Updates
        } -ArgumentList $RemoteComputer


        $count = 0
        do {
            if ($count -eq 10) { $count = 0 }
            $WPFProgressBar.value = $count
            [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
            start-sleep -Milliseconds 100
            $count++
            $JobStatus = (get-job -Name GetUpdates).state

        }
        until($JobStatus -eq "Completed")
        $WPFSoftwareUpdateListView.Visibility = "Visible"
        $WPFButton_Details_Updates.Visibility = "Visible"
        $WPFButton_Details.Visibility = "Visible"
        $WPFProgressBar.value = 0
        $WPFProgressBar.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Visible"

        # Get the results
        $RemoteUpdates = Receive-Job -Name GetUpdates

        # Remove the job if it's no longer needed
        Remove-Job -Name GetUpdates

        # Output the results

        $Updates = @()
        if (!($RemoteUpdates)) {
            $obj = [PSCustomObject]@{
                UpdateName = "No Updates Available"
                Icon       = [convert]::FromBase64String($icon)
                Status     = "n/a"
                ErrorCode  = "n/a"
                Publisher  = "n/a"
            }
            $Updates += $obj  # Use += to add the object to the array
            $WPFButton_Details_Updates.Visibility = "Hidden"
            $WPFButton_Details.Visibility = "Hidden"
        }
        else {
            foreach ($Update in $RemoteUpdates) {
                $UpdateName = $Update.name
                $softwareVersion = $Update.SoftwareVersion
                $icon = $Update.icon
                $Deadline = $update.Deadline
                if ($Deadline) {
                    # Remove the fractional seconds and timezone offset to focus on the main datetime
                    $TimeCleaned = $Deadline.Split('.')[0]

                    # Convert the string to DateTime (assuming the format is yyyyMMddHHmmss)
                    $DateTime = [datetime]::ParseExact($TimeCleaned, "yyyyMMddHHmmss", $null)

                    # Format the DateTime object to the desired format
                    $deadline = $DateTime.ToString("MM/dd/yyyy hh:mm:ss tt")
                    $status = "Scheduled to install: $Deadline"
                }
                else { $status = "Not installed: No schedule set to install." }
                if (!($icon)) { $icon = "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" }
                $installState = $Update.InstallState
    
                if ($installState -eq "NotInstalled") { $Update = "Not Installed" }
                $ErrorCode = $Update.errorcode
                $publisher = $update.publisher

                $obj = [PSCustomObject]@{
                    UpdateName = "$UpdateName"
                    Icon       = [convert]::FromBase64String($icon)
                    Status     = $status
                    ErrorCode  = $ErrorCode
                    Publisher  = $publisher
                }
                $Updates += $obj  # Use += to add the object to the array
            }
        }
        # Assign the data source to the ListView
        $WPFSoftwareUpdateListView.ItemsSource = $Updates
        [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh




















    })

$WPFButton_OperatingSystems.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_TaskSequence.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_TaskSequences.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFImage_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Progress.Visibility = "Hidden"
        $WPFNewButton.Visibility = "Visible"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFDetails_Compliance_Refresh.Visibility = "Hidden"
        $WPFBaselineListview.Visibility = "Hidden"
        $WPFDetails_Compliance.Visibility = "Hidden"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"

        $WPFLabel_CompliantResult.Visibility = "Hidden"
        $WPFLabel_ComplianceStatus.Visibility = "Hidden"
        $WPFLabel_ComputerNameCompliance.Visibility = "Hidden"
        $WPFImage_Compliance.Visibility = "Hidden"
        $WPFButton_CheckCompliance.Visibility = "Hidden"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "hidden"
        $WPFLabel_Details_TaskSequence.visibility = "hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "hidden"
        $WPFButton_Details_TaskSequences.visibility = "hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "hidden"
        $WPFImage_Details_TaskSequence.visibility = "hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Applications.Background = "#FFDDDDDD"
        $WPFButton_ClientActions.Background = "#FFDDDDDD"
        $WPFButton_DeviceCompliance.Background = "#FFDDDDDD"
        $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
        $WPFButton_OperatingSystems.Background = "#FFA8B5FF"
        $WPFButton_Options.Background = "#FFDDDDDD"
        $WPFButton_Updates.Background = "#FFDDDDDD"
        $WPFOperatingSystemListview.Visibility = "Visible"
        $WPFOperatingSystemListview.items.clear()
        $Computer = $WPFInput_ConnectTo.Text
        $TaskSequenceList = (Get-WmiObject -ComputerName $Computer -Namespace "root\ccm\policy\machine\actualconfig" -Class "CCM_TaskSequence").pkg_name | Select-Object -Unique
        if (!($TaskSequenceList)) {

        }
        else {
            $WPFButton_Details_TaskSequences.Visibility = "Visible"
            foreach ($TS in $TaskSequenceList) {

                $TSArray = @()
                $TSIcon = "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"
                $TSIcon2 = "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"
                $TSICONBase = [convert]::FromBase64String($TSIcon)
                $obj = [PSCustomObject]@{
                    Name = "$TS"
                    Icon = [convert]::FromBase64String($TSIcon2)

                }
                $TSArray += $obj

                $WPFOperatingSystemListview.items.add($obj)
            }
        }
        #$WPFOperatingSystemListview.ItemsSource = $TSArray



    })

$WPFButton_Details_TaskSequences.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFLabel_Details_Progress.Visibility = "Hidden"
        $WPFNewButton.Visibility = "Hidden"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFDetails_Compliance_Refresh.Visibility = "Hidden"
        $WPFBaselineListview.Visibility = "Hidden"
        $WPFDetails_Compliance.Visibility = "Hidden"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"

        $SystemName = $WPFInput_ConnectTo.text
        $WPFButton_Details_TaskSequences.Visibility = "hidden"
        $WPFButton_Details_TaskSequences.Visibility = "hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "hidden"
        $WPFButton_Details.Visibility = "hidden"
        $WPFButton_Details_Updates.Visibility = "hidden"
        $WPFSoftwareUpdateListView.Visibility = "hidden"
        $WPFOperatingSystemListview.visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Visible"
        $WPFProgressBar_Details_TaskSequence.visibility = "Visible"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "Visible"
        $WPFRectangle_Details_TaskSequence.visibility = "Visible"
        $WPFLabel_Details_TaskSequence.visibility = "Visible"
        $WPFTextbox_Details_TaskSequence.visibility = "Visible"
        $WPFRectangle_Details_TaskSequence.visibility = "Visible"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "Visible"
        $WPFButton_Details_TaskSequences.visibility = "Hidden"
        $WPFButton_Details_TaskSequences.content = "Details"
        $WPFTextbox_Details_TaskSequence.visibility = "Visible"
        $WPFImage_Details_TaskSequence.visibility = "Visible"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Visible"
        $WPFProgressBar_Details_TaskSequence.visibility = "Visible"
        $WPFButton_Details_InstallUninstall_TaskSequence.content = "Install"
        $WPFTextbox_Details_TaskSequence.content = $WPFOperatingSystemListview.selecteditem.name
        $TaskSequence = $WPFOperatingSystemListview.selecteditem.name
        write-host "Task sequence: $TaskSequence"
        $WMI = Get-WmiObject -ComputerName $SystemName -Namespace "root\ccm\policy\machine\actualconfig" -Class "CCM_SoftwareDistribution" | Where-Object { $_.PKG_Name -eq "$TaskSequence" }  | Select-Object -Property PKG_PackageID | Select-Object -First 1
        $ScheduleID = Get-WmiObject -ComputerName $SystemName -Namespace "root\ccm\scheduler" -Class "CCM_Scheduler_History" | Where-Object { $_.ScheduleID -like "*$($WMI.PKG_PackageID)*" } | Select-Object -ExpandProperty ScheduleID
        $SpecificTS = (Get-WmiObject -ComputerName $SystemName -Namespace "root\ccm\clientsdk" -Class "CCM_Program" | Where-Object { $_.PackageID -eq $WMI.PKG_PackageID })
        $LastRunStatus = $SpecificTS.lastrunstatus
        $ErrorCode = $SpecificTS.ErrorCode

        if ($LastRunStatus -eq "Succeeded" -or $ErrorCode -eq 0) {
            $WPFButton_Details_InstallUninstall_TaskSequence.content = "Install"
            $WPFLabel_Details_Status_Output_TaskSequence.content = "Click 'Install' to start..."
        }
        else {
            $WPFButton_Details_InstallUninstall_TaskSequence.content = "Retry"
            $WPFLabel_Details_Status_Output_TaskSequence.content = "ERROR: $ErrorCode "
        }

        $Icon = "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"
        $WPFImage_Details_TaskSequence.source = [convert]::FromBase64String($icon)

    })

$WPFButton_InstallationStatus.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_TaskSequence.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_TaskSequences.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFImage_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFNewButton.Visibility = "Visible"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFDetails_Compliance_Refresh.Visibility = "Hidden"
        $WPFBaselineListview.Visibility = "Hidden"
        $WPFDetails_Compliance.Visibility = "Hidden"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"

        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFOperatingSystemListview.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Applications.Background = "#FFDDDDDD"
        $WPFButton_ClientActions.Background = "#FFDDDDDD"
        $WPFButton_DeviceCompliance.Background = "#FFDDDDDD"
        $WPFButton_InstallationStatus.Background = "#FFA8B5FF"
        $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
        $WPFButton_Options.Background = "#FFDDDDDD"
        $WPFButton_Updates.Background = "#FFDDDDDD"
    })

$WPFButton_DeviceCompliance.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_TaskSequence.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_TaskSequences.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFImage_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFNewButton.Visibility = "Visible"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFDetails_Compliance_Refresh.Visibility = "Visible"
        $WPFBaselineListview.Visibility = "Visible"
        $WPFBaselineListview.items.clear()
        $WPFDetails_Compliance.Visibility = "Visible"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"

        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Applications.Background = "#FFDDDDDD"
        $WPFButton_ClientActions.Background = "#FFDDDDDD"
        $WPFButton_DeviceCompliance.Background = "#FFA8B5FF"
        $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
        $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
        $WPFButton_Options.Background = "#FFDDDDDD"
        $WPFButton_Updates.Background = "#FFDDDDDD"
        $WPFDetails_Compliance.Visibility = "Visible"
        $WPFBaselineListview.Visibility = "Visible"


        $computer = $WPFInput_ConnectTo.Text
        function Get-CMClientBaselineEvaluation {
            [CmdletBinding()]
            param (
                [Parameter(Mandatory = $false,
                    ValueFromPipelineByPropertyName = $true,
                    ValueFromPipeline = $true,
                    Position = 0)]
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
                            ComputerName       = $Baseline.PSComputerName
                            BaselineName       = $Baseline.DisplayName
                            Version            = $Baseline.Version
                            EvaluationStatus   = $EvalHash[$Baseline.Status.tostring()]
                            Compliance         = $ComplianceHash[$Baseline.LastComplianceStatus.tostring()]
                            LastEvaluationTime = $LastEvalTime
                        }
                        $BaselineStatus = New-Object -TypeName pscustomobject -Property $BaselineStatusProperties
                        $BaselineStatus
                    }
                }
            }
            end {}
        }

        $ComplianceItems = Get-WmiObject -ComputerName $computer -Namespace root\ccm\dcm -QUERY "SELECT * FROM SMS_DesiredConfiguration"
        foreach ($item in $ComplianceItems) {
    
            $icon1 = "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"
            $icon2 = "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"
            $Name = $item.displayName
            $Status = $item.status
            if ($Status -ne 0) { $status = "Non-Compliant" ; $icon = $icon2 }
            else { $status = "Compliant" ; $icon = $icon1 }
            $lastEval = $item.lastEvalTime
            # Extract the date and time part (first 14 characters)
            $timestamp = $lastEval.Substring(0, 14)

            # Convert the timestamp to a DateTime object
            $datetime = [datetime]::ParseExact($timestamp, "yyyyMMddHHmmss", $null)

            # Format the DateTime object to the desired format
            $formattedDate = $datetime.ToString("MM/dd/yyyy HH:mm:ss")

            # Output the result

            $obj = [PSCustomObject]@{
                Name            = $Name
                ComplianceState = $status
                EvaluationTime  = $formattedDate
                Icon            = [convert]::FromBase64String($icon)

            }

            $WPFBaselineListview.items.add($obj)


        }




    })

$WPFDetails_Compliance_Refresh.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_TaskSequence.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_TaskSequences.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFImage_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "hidden"
        $WPFBaselineListview.items.clear()
        $WPFDetails_Compliance_Refresh.Visibility = "Visible"
        $WPFBaselineListview.Visibility = "Visible"
        $WPFDetails_Compliance.Visibility = "Visible"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"

        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Applications.Background = "#FFDDDDDD"
        $WPFButton_ClientActions.Background = "#FFDDDDDD"
        $WPFButton_DeviceCompliance.Background = "#FFA8B5FF"
        $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
        $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
        $WPFButton_Options.Background = "#FFDDDDDD"
        $WPFButton_Updates.Background = "#FFDDDDDD"
        $WPFDetails_Compliance.Visibility = "Visible"
        $WPFBaselineListview.Visibility = "Visible"


        $computer = $WPFInput_ConnectTo.Text
        function Get-CMClientBaselineEvaluation {
            [CmdletBinding()]
            param (
                [Parameter(Mandatory = $false,
                    ValueFromPipelineByPropertyName = $true,
                    ValueFromPipeline = $true,
                    Position = 0)]
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
                            ComputerName       = $Baseline.PSComputerName
                            BaselineName       = $Baseline.DisplayName
                            Version            = $Baseline.Version
                            EvaluationStatus   = $EvalHash[$Baseline.Status.tostring()]
                            Compliance         = $ComplianceHash[$Baseline.LastComplianceStatus.tostring()]
                            LastEvaluationTime = $LastEvalTime
                        }
                        $BaselineStatus = New-Object -TypeName pscustomobject -Property $BaselineStatusProperties
                        $BaselineStatus
                    }
                }
            }
            end {}
        }

        $ComplianceItems = Get-WmiObject -ComputerName $computer -Namespace root\ccm\dcm -QUERY "SELECT * FROM SMS_DesiredConfiguration"
        foreach ($item in $ComplianceItems) {
    
            $icon1 = "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"
            $icon2 = "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"
            $Name = $item.displayName
            $Status = $item.status
            if ($Status -ne 0) { $status = "Non-Compliant" ; $icon = $icon2 }
            else { $status = "Compliant" ; $icon = $icon1 }
            $lastEval = $item.lastEvalTime
            # Extract the date and time part (first 14 characters)
            $timestamp = $lastEval.Substring(0, 14)

            # Convert the timestamp to a DateTime object
            $datetime = [datetime]::ParseExact($timestamp, "yyyyMMddHHmmss", $null)

            # Format the DateTime object to the desired format
            $formattedDate = $datetime.ToString("MM/dd/yyyy HH:mm:ss")

            # Output the result

            $obj = [PSCustomObject]@{
                Name            = $Name
                ComplianceState = $status
                EvaluationTime  = $formattedDate
                Icon            = [convert]::FromBase64String($icon)

            }

            $WPFBaselineListview.items.add($obj)


        }


        Add-Type -AssemblyName System.Windows.Forms

        # Create the message
        $message = "Refreshed"

        # Show the message box
        [System.Windows.Forms.MessageBox]::Show($message, "Status", [System.Windows.Forms.MessageBoxButtons]::OK)


    })

$WPFDetails_Compliance.add_Click({
        $Baseline = $WPFBaselineListview.SelectedItem.name
        write-host $Baseline
        $computer = $WPFInput_ConnectTo.Text
        try {
            invoke-command -ComputerName $computer {
                $Baseline = $using:baseline
                $DCM = [WMIClass] "ROOT\ccm\dcm:SMS_DesiredConfiguration"
                $WaaSBaseline = Get-WmiObject -Namespace root\ccm\dcm -QUERY "SELECT * FROM SMS_DesiredConfiguration WHERE DisplayName = ""$baseline"""
                $DCM.TriggerEvaluation($WaaSBaseline.Name, $WaaSBaseline.Version) 
                start-sleep 2
            }

            # Load the necessary Windows Forms assembly
            Add-Type -AssemblyName System.Windows.Forms

            # Create the message
            $message = "$baseline baseline successfully started on $computer ... Click 'Refresh' to refresh the status of the baseline."

            # Show the message box
            [System.Windows.Forms.MessageBox]::Show($message, "Status", [System.Windows.Forms.MessageBoxButtons]::OK)

        }
        catch {
            # Load the necessary Windows Forms assembly
            Add-Type -AssemblyName System.Windows.Forms


            # Create the failure message
            $message = "$baseline baseline failed to run on $computer"

            # Show the failure message box
            [System.Windows.Forms.MessageBox]::Show($message, "Failure", [System.Windows.Forms.MessageBoxButtons]::OK)
        }
    })

$WPFButton_Options.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_TaskSequence.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_TaskSequences.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFImage_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFNewButton.Visibility = "Visible"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFDetails_Compliance_Refresh.Visibility = "Hidden"
        $WPFBaselineListview.Visibility = "Hidden"
        $WPFDetails_Compliance.Visibility = "Hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Applications.Background = "#FFDDDDDD"
        $WPFButton_ClientActions.Background = "#FFDDDDDD"
        $WPFButton_DeviceCompliance.Background = "#FFDDDDDD"
        $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
        $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
        $WPFButton_Options.Background = "#FFA8B5FF"
        $WPFButton_Updates.Background = "#FFDDDDDD"
    })

$WPFButton_ClientActions.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFNewButton.Visibility = "Visible"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "hidden"
        $WPFDetails_Compliance_Refresh.Visibility = "Hidden"
        $WPFBaselineListview.Visibility = "Hidden"
        $WPFDetails_Compliance.Visibility = "Hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Applications.Background = "#FFDDDDDD"
        $WPFButton_ClientActions.Background = "#FFA8B5FF"
        $WPFButton_DeviceCompliance.Background = "#FFDDDDDD"
        $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
        $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
        $WPFButton_Options.Background = "#FFDDDDDD"
        $WPFButton_Updates.Background = "#FFDDDDDD"
    })

$WPFButton_Details.add_click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        $WPFNewButton.Visibility = "Hidden"
        write-host $WPFImage_Details_Image
        $SelectedApplication = ($WPFApplicationsListView.SelectedItem).Name
        $RemoteComputer = $WPFInput_ConnectTo.text
        $WPFTextbox_Details_AppName.content = $SelectedApplication
        $Application = (Get-WmiObject -Namespace "root\ccm\ClientSDK" -ComputerName $RemoteComputer -Class CCM_Application) | where fullname -eq $SelectedApplication | Select-Object -First 1
        if ($Application.installstate -eq "NotInstalled") { $WPFLabel_Details_Status_Output.content = "Not Installed"; $WPFButton_Details_InstallUninstall.content = "Install" }
        else { $WPFLabel_Details_Status_Output.content = "Installed"; $WPFButton_Details_InstallUninstall.content = "Uninstall"; }
        $Icon = $Application.icon
        if ($Application.icon) {
            $Icon = $Application.icon
            $WPFImage_Details_Image.Source = [convert]::FromBase64String($Icon)
        }
        else {
            $icon = "/9j/4AAQSkZJRgABAQACWAJYAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/wgALCADIAMgBAREA/8QAGwABAAMBAQEBAAAAAAAAAAAAAAMEBQIBBgf/2gAIAQEAAAAA/fwAAAAAAAAAAAAAAAAAAAAAABBV0QAABBna/oAMSXz0EfskO2ADJvfL6Ni9ZQZ2wydYAGTf+WuU7n0kGdr+snWABk63mDlvoItf0ydYAGTrVvlvLNj6HzF3GTrAAydb5qjZnpblXK3dbJ1gAZM/zdmelx3w6+opawAMnitPzwCz7rAAzqvU3ICTRABBna/oAAAq2fQAAAK8ffcXfnk/YAAij4ni5gkudgAAAAAAAAAAAAAAAAAAAAAf/8QAOhAAAQMCAQUQAQMEAwAAAAAAAQIDBAAREgUVITFBEBMUIjAyNkJRVGFxcpGhwVIjQEMgcNHwYoHx/9oACAEBAAE/AP7HSpTcRorWfIbTWTlSn1rfeNm181H7eVKbiNFaz5DaTUaM5Pe4VKHE6iKAsLDlX0yJGVnGG5CmwBfWbaqzZM78r5o5OlDXlAjzJrNszvyvms2zO/K+azZM78r5rNkzvyvms2TO/K+azZM78r5p2O7DAdkTVqT+AJurwqPGdnucJkc3qIOqlZOmLUVcNIvsAIAphMiPlZthyQpwEX1m2rlWukDvp+hU1/g0VboFyBo86cdcdWVuKKlHtrJMxaZCWFKJQrVfYayxNKMLDarK5yiPioUkSoyXOtqUPHdlSm4jRcWfIbTUaM5Pe4VK5nURQAAsNx3pA16fo8q10gd9P0KmMcJiraBsSNHnTjS2llC0lKhsNQWlMkzHE2bbFxfrHZTrinnVOKN1KNzWSpfB5ISo/pr0HwO5KlNxGitZ8h2mo0Zye9wqUOJ1EUBYWG670ga9P0eVa6QO+n6G4UpVrAPmKyxL3x0MIPFRrttO7GyilGTQ69fEOKP+VRozk97hUrmdRFAACw1f0O9IGvT9HlWukDvp+huT5IixlL6x0JHjRJUokm5Ok7jDCMG/v6GhqG1Z7BQKCtEiWLN6m2h2f4pJBSCm1raLU44lpBWs2SBcmmMrqM8lzQyvQB+PjQN9x3pA16fo8q10gd9P0NzKkvhMopSf00aB4+O4wwnBv79w0NQ2rPYKUrQJMkDD/EyP91U66t5wrWbk/FZGl74yWFnjI1eIrK83fV8HbPETzj2ncyRO3xHB3Dx0jintG470ga9P0eVa6QO+n6FZVl8HjYUn9RegeA3GGE4N/fuGhqG1Z7BSlaBJkgW/iZH+6qddW84VrNyfjcbdWyvG2rCrtrXuNrU2sLSbKBuDUKUmWwFjnDQodhp3pA16fo8q10gd9P0Km5OlS5KnMbYTqSL6hS8ncEs5KcSUDUlOtR7KjxHZh4Q6kBCR+m2dA/8AKdyTMecK1utknx1VmST+bfvWZJP5t+9Zkk/m371mST+bfvWZJP5t+9Zkk/m371ByfKhv48bZQdCk32U70ga9P0eVkZKD8lTwfUgq2AU/Bahp316S4oDUjVi8KixXJzgkSBZscxGynMkqdcK1Sl3PYNFZlPe3PasynvbntWZT3tz2rMp7257VmU97c9qzKe9ue1ZlPe3PasynvbntUfJQYkpeL6llOwjlZUpuI0VrPkNpNRozk97hUrmdRFAWFh+3fgNSJCHXCTh6uw0BYWH7qatxEclpVl4gAf8AujJUpDXVXvgQtPZXDE3vgXveLDj2Xp9WFbIxKF120bfOhOSbENOWUSlJ7T2UmVjbxJaWVBWEp0aDQmJUlGBClKVfi7RbXQmpUlJShRUoEhOgaBTTqXmwtOo/sZDRebwg24wPsaeiBx9t5KsJSoFQ/IVwRzBvONO84sWrTrvanmi4pog2wLxUmKpKGU4hxHCs+Ov/ADSoi8RIUkguFRSb2N6cjqaS0gnigqViCSRp2aKRHW4ltzA2FJBThUnQRs0bKaRgbCThvtwiw/sN/9k="
            $WPFImage_Details_Image.Source = [convert]::FromBase64String($icon)
        }
        $version = $Application.Softwareversion
        if ($version) { $WPFLabel_Details_Version_Output.Content = $version }
        else { $WPFLabel_Details_Version_Output.Content = "n/a" }
        $WPFApplicationGrid.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFLabel_Details_ApplicationName.Visibility = "Visible"
        $WPFRectangle_Details.Visibility = "Visible"
        $WPFLabel_Details_Status_Output.Visibility = "Visible"
        $WPFLabel_Details_Version_Output.Visibility = "Visible"
        $WPFLabel_Details_Status.Visibility = "Visible"
        $WPFLabel_Details_Version.Visibility = "Visible"
        $WPFButton_Details_InstallUninstall.Visibility = "Visible"
        $WPFImage_Details_Image.Visibility = "Visible"
        $WPFTextbox_Details_AppName.Visibility = "Visible"
        [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
    })

$WPFButton_Details_InstallUninstall.Add_Click({
        $WPFButton_Applications.IsEnabled = $false
        $WPFButton_Updates.IsEnabled = $false
        $WPFButton_OperatingSystems.IsEnabled = $false
        $WPFButton_InstallationStatus.IsEnabled = $false
        $WPFButton_Options.IsEnabled = $false
        $WPFButton_DeviceCompliance.IsEnabled = $false
        $WPFButton_ClientActions.IsEnabled = $false
        $WPFButton_Applications.IsEnabled = $false
        $WPFButton_Updates.IsEnabled = $false
        $WPFButton_OperatingSystems.IsEnabled = $false
        $WPFButton_InstallationStatus.IsEnabled = $false
        $WPFButton_Options.IsEnabled = $false
        $WPFButton_DeviceCompliance.IsEnabled = $false
        $WPFButton_ClientActions.IsEnabled = $false

        $remoteComputer = $WPFInput_ConnectTo.Text
        $WPFProgressBar_Details.Maximum = 100
        $WPFProgressBar_Details.Background = "white"
        # Install
        if ($WPFButton_Details_InstallUninstall.Content -eq "Install") {
            $WPFProgressBar_Details.Visibility = "Visible"
            $WPFLabel_Details_Progress.Visibility = "Visible"
            $WPFProgressBar_Details.value = 0
            $AppToInstall = $WPFTextbox_Details_AppName.Content
            $WMI = Get-WmiObject -ComputerName $remoteComputer -Namespace "Root\ccm\ClientSDK" -Class CCM_Application | Where-Object name -eq "$AppToInstall"
            $appID = $WMI.ID
            $appRevision = $WMI.Revision
            $appMachineTarget = $WMI.IsMachineTarget

            try {
                Invoke-Command -ComputerName $remoteComputer -ScriptBlock {
                ([WmiClass]'Root\CCM\ClientSDK:CCM_Application').Install($using:appID, $using:appRevision, $using:appMachineTarget, 0, "Normal", $false)
                }
                start-sleep 2
                $WPFLabel_Details_Status_Output.Content = "Installing" 
                $i = 0

                do {
                
                    $WMI = Get-WmiObject -ComputerName $remoteComputer -Namespace "Root\ccm\ClientSDK" -Class CCM_Application | Where-Object { $_.name -eq $AppToInstall }
                    $WMIEval = $WMI.EvaluationState
                    $WMIInstallState = $WMI.InstallState
                    $WMIError = $WMI.ErrorCode
                    $InProgress = $WMI.InProgressActions
                    switch ($WMIEval) {
                        0 { $WPFLabel_Details_Status_Output.Content = "No state information is available." }
                        1 { $WPFLabel_Details_Status_Output.Content = "Application is enforced to desired/resolved state." }
                        2 { $WPFLabel_Details_Status_Output.Content = "Application isn't required on the client." }
                        3 { $WPFLabel_Details_Status_Output.Content = "Application is available for enforcement (install or uninstall based on resolved state). Content may/may not have been downloaded." }
                        4 { $WPFLabel_Details_Status_Output.Content = "Application last failed to enforce (install/uninstall)." }
                        5 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for content download to complete." }
                        6 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for content download to complete." }
                        7 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for its dependencies to download." }
                        8 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for a service (maintenance) window." }
                        9 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for a previously pending reboot." }
                        10 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for serialized enforcement." }
                        11 { $WPFLabel_Details_Status_Output.Content = "Application is currently enforcing dependencies." }
                        12 { $WPFLabel_Details_Status_Output.Content = "Application is currently enforcing." }
                        13 { $WPFLabel_Details_Status_Output.Content = "Application install/uninstall enforced and soft reboot is pending." }
                        14 { $WPFLabel_Details_Status_Output.Content = "Application installed/uninstalled and hard reboot is pending." }
                        15 { $WPFLabel_Details_Status_Output.Content = "Update is available but pending installation." }
                        16 { $WPFLabel_Details_Status_Output.Content = "Application failed to evaluate." }
                        17 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for an active user session to enforce." }
                        18 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for all users to sign out." }
                        19 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for a user sign in." }
                        20 { $WPFLabel_Details_Status_Output.Content = "Application in progress, waiting for retry." }
                        21 { $WPFLabel_Details_Status_Output.Content = "Application is waiting for presentation mode to be switched off." }
                        22 { $WPFLabel_Details_Status_Output.Content = "Application is pre-downloading content (downloading outside of install job)." }
                        23 { $WPFLabel_Details_Status_Output.Content = "Application is pre-downloading dependent content (downloading outside of install job)." }
                        24 { $WPFLabel_Details_Status_Output.Content = "Application download failed (downloading during install job)." }
                        25 { $WPFLabel_Details_Status_Output.Content = "Application pre-downloading failed (downloading outside of install job)." }
                        26 { $WPFLabel_Details_Status_Output.Content = "Download success (downloading during install job)." }
                        27 { $WPFLabel_Details_Status_Output.Content = "Post-enforce evaluation." }
                        28 { $WPFLabel_Details_Status_Output.Content = "Waiting for network connectivity." }

                        default { $WPFLabel_Details_Status_Output.Content = "Unknown evaluation state." }
                    }


                    Start-Sleep -Milliseconds 10

                    if ($WPFProgressBar_Details.Value -eq 100) {
                        $i = 0
                        $WPFProgressBar_Details.Value = $i 
                        [System.Windows.Forms.Application]::DoEvents()
                    }
                    else {
                        $i = $i + 20
                        $WPFProgressBar_Details.Value = $i 
                        [System.Windows.Forms.Application]::DoEvents()
                    }
                } until (!($InProgress))

                $WPFButton_Applications.IsEnabled = $true
                $WPFButton_Updates.IsEnabled = $true
                $WPFButton_OperatingSystems.IsEnabled = $true
                $WPFButton_InstallationStatus.IsEnabled = $true
                $WPFButton_Options.IsEnabled = $true
                $WPFButton_ClientActions.IsEnabled = $true
                $WPFButton_DeviceCompliance.IsEnabled = $true
                
                if ($WMIInstallState -eq "Installed") {
                    $WPFProgressBar_Details.value = 100
                    $WPFLabel_Details_Status_Output.content = "Installed"
                    $WPFLabel_Details_Status_Output.FontWeight = [System.Windows.FontWeights]::Bold
                    $WPFButton_Details_InstallUninstall.content = "Uninstall"
                }
                else {
                    $WPFProgressBar_Details.value = 0
                    $WPFLabel_Details_Status_Output.content = "ERROR: $WMIError"
                    $WPFLabel_Details_Status_Output.FontWeight = [System.Windows.FontWeights]::Bold
                    $WPFProgressBar_Details.Background = "Red"
                }
            }
            catch {
                # Handle any exceptions
            }
        }

        # Uninstall
        else {
       
            $AppToInstall = $WPFTextbox_Details_AppName.Content
            $WMI = Get-WmiObject -ComputerName $remoteComputer -Namespace "Root\ccm\ClientSDK" -Class CCM_Application | Where-Object name -eq "$AppToInstall"
            $appID = $WMI.ID
            $appRevision = $WMI.Revision
            $appMachineTarget = $WMI.IsMachineTarget

            try {
                Invoke-Command -ComputerName $remoteComputer -ScriptBlock {
                ([WmiClass]'Root\CCM\ClientSDK:CCM_Application').Uninstall($using:appID, $using:appRevision, $using:appMachineTarget, 0, "Normal", $false)
                }
            }

            catch {
            
            }

            start-sleep 3
            $WMI = Get-WmiObject -ComputerName $remoteComputer -Namespace "Root\ccm\ClientSDK" -Class CCM_Application | Where-Object { $_.name -eq $AppToInstall }
            if (!($WMI.InProgressActions)) {
                $WPFLabel_Details_Status_Output.content = "Uninstall unavailable for this application."
            }
            else {
                
                $WPFProgressBar_Details.Visibility = "Visible"
                $WPFLabel_Details_Progress.Visibility = "Visible"
                $WPFProgressBar_Details.value = 0
                do {
                    $WMI = Get-WmiObject -ComputerName $remoteComputer -Namespace "Root\ccm\ClientSDK" -Class CCM_Application | Where-Object { $_.name -eq $AppToInstall }
                    $WMIEval = $WMI.EvaluationState
                    $WMIInstallState = $WMI.InstallState
                    $WMIError = $WMI.ErrorCode
                    $InProgress = $WMI.InProgressActions
                    switch ($WMIEval) {
                        0 { $WPFLabel_Details_Status_Output.Content = "No state information is available." }
                        1 { $WPFLabel_Details_Status_Output.Content = "Application is enforced to desired/resolved state." }
                        2 { $WPFLabel_Details_Status_Output.Content = "Application isn't required on the client." }
                        3 { $WPFLabel_Details_Status_Output.Content = "Application is available for enforcement (install or uninstall based on resolved state). Content may/may not have been downloaded." }
                        4 { $WPFLabel_Details_Status_Output.Content = "Application last failed to enforce (install/uninstall)." }
                        5 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for content download to complete." }
                        6 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for content download to complete." }
                        7 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for its dependencies to download." }
                        8 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for a service (maintenance) window." }
                        9 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for a previously pending reboot." }
                        10 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for serialized enforcement." }
                        11 { $WPFLabel_Details_Status_Output.Content = "Application is currently enforcing dependencies." }
                        12 { $WPFLabel_Details_Status_Output.Content = "Application is currently enforcing." }
                        13 { $WPFLabel_Details_Status_Output.Content = "Application install/uninstall enforced and soft reboot is pending." }
                        14 { $WPFLabel_Details_Status_Output.Content = "Application installed/uninstalled and hard reboot is pending." }
                        15 { $WPFLabel_Details_Status_Output.Content = "Update is available but pending installation." }
                        16 { $WPFLabel_Details_Status_Output.Content = "Application failed to evaluate." }
                        17 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for an active user session to enforce." }
                        18 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for all users to sign out." }
                        19 { $WPFLabel_Details_Status_Output.Content = "Application is currently waiting for a user sign in." }
                        20 { $WPFLabel_Details_Status_Output.Content = "Application in progress, waiting for retry." }
                        21 { $WPFLabel_Details_Status_Output.Content = "Application is waiting for presentation mode to be switched off." }
                        22 { $WPFLabel_Details_Status_Output.Content = "Application is pre-downloading content (downloading outside of install job)." }
                        23 { $WPFLabel_Details_Status_Output.Content = "Application is pre-downloading dependent content (downloading outside of install job)." }
                        24 { $WPFLabel_Details_Status_Output.Content = "Application download failed (downloading during install job)." }
                        25 { $WPFLabel_Details_Status_Output.Content = "Application pre-downloading failed (downloading outside of install job)." }
                        26 { $WPFLabel_Details_Status_Output.Content = "Download success (downloading during install job)." }
                        27 { $WPFLabel_Details_Status_Output.Content = "Post-enforce evaluation." }
                        28 { $WPFLabel_Details_Status_Output.Content = "Waiting for network connectivity." }

                        default { $WPFLabel_Details_Status_Output.Content = "Unknown evaluation state." }
                    }


                    Start-Sleep -Milliseconds 10

                    if ($WPFProgressBar_Details.Value -eq 100) {
                        $i = 0
                        $WPFProgressBar_Details.Value = $i 
                        [System.Windows.Forms.Application]::DoEvents()
                    }
                    else {
                        $i = $i + 20
                        $WPFProgressBar_Details.Value = $i 
                        [System.Windows.Forms.Application]::DoEvents()
                    }
                } until (!($InProgress))

                $WPFButton_Applications.IsEnabled = $true
                $WPFButton_Updates.IsEnabled = $true
                $WPFButton_OperatingSystems.IsEnabled = $true
                $WPFButton_InstallationStatus.IsEnabled = $true
                $WPFButton_Options.IsEnabled = $true
                $WPFButton_ClientActions.IsEnabled = $true
                $WPFButton_DeviceCompliance.IsEnabled = $true

                if ($WMIInstallState -eq "NotInstalled") {
                    $WPFProgressBar_Details.value = 100
                    $WPFLabel_Details_Status_Output.content = "Not Installed"
                    $WPFLabel_Details_Status_Output.FontWeight = [System.Windows.FontWeights]::Bold
                    $WPFButton_Details_InstallUninstall.content = "Install"
                }
                else {
                    $WPFProgressBar_Details.value = 0
                    $WPFLabel_Details_Status_Output.content = "ERROR: $WMIError"
                    $WPFLabel_Details_Status_Output.FontWeight = [System.Windows.FontWeights]::Bold
                    $WPFProgressBar_Details.Background = "Red"
                }
            }
    
        }



           
               
               

    
    
    })

$WPFButton_Details_Updates.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFNewButton.Visibility = "Hidden"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Visible"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Visible"
        $WPFRectangle_Details_Update.Visibility = "Visible"
        $WPFLabel_Details_Status_Update.Visibility = "Visible"
        $WPFLabel_Details_Publisher_Update.Visibility = "Visible"
        $WPFLabel_Details_Progress_Update.Visibility = "Visible"
        $WPFProgressBar_Details_Update.Visibility = "Visible"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Visible"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Visible"
        $WPFTextbox_Details_UpdateName.Visibility = "Visible"
        $WPFLabel_Details_ApplicationName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"

        $remotecomputer = $WPFInput_ConnectTo.Text
        $UpdateName = $WPFSoftwareUpdateListView.SelectedItem
        $UpdateName = $UpdateName.updatename
        $WMI = Get-WmiObject -ComputerName $remotecomputer -Namespace "Root\ccm\ClientSDK" -Class CCM_SoftwareUpdate | where name -eq $UpdateName
        $Deadline = $WMI.Deadline
        if ($wmi.deadline -like "*") {
            $deadline = $WMI.deadline
            $deadline = $deadline.split(".") | select -First 1
            # Convert the date portion (YYYYMMDDHHmmss) into a DateTime object
            $datetime = [datetime]::ParseExact($deadline, "yyyyMMddHHmmss", $null)

            # Output the DateTime object
            $datetime



            $status = "Scheduled to install: $DateTime"

        }
        else {
            $status = "Not installed: No schedule set to install."

        }


        $WPFTextbox_Details_UpdateName.content = $UpdateName
        $WPFButton_Details_InstallUninstall_Update.content = "Install"
        $WPFLabel_Details_Status_Output_Update.content = $status
        $WPFLabel_Details_Publisher_Output_Update.content = $WMI.Publisher
        $icon = "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"
        $WPFImage_Details_Update.Source = [convert]::FromBase64String($icon)



    })

$WPFButton_Details_InstallUninstall_Update.add_Click({
        $WPFButton_Applications.IsEnabled = $false
        $WPFButton_Updates.IsEnabled = $false
        $WPFButton_OperatingSystems.IsEnabled = $false
        $WPFButton_InstallationStatus.IsEnabled = $false
        $WPFButton_Options.IsEnabled = $false
        $WPFButton_DeviceCompliance.IsEnabled = $false
        $WPFButton_ClientActions.IsEnabled = $false
        $WPFButton_Details_Updates.Visibility = "Hidden"
        $WPFNewButton.Visibility = "Hidden"
        $UpdateName = $WPFTextbox_Details_UpdateName.Content
        $Comp = $WPFInput_ConnectTo.text

        if ($WPFButton_Details_InstallUninstall_Update.Content -eq "Restart") {
            Restart-Computer -ComputerName $comp -Force
            $WPFLabel_Details_Status_Output_Update.content = "Restarted $comp"
            $WPFButton_Applications.IsEnabled = $true
            $WPFButton_Updates.IsEnabled = $true
            $WPFButton_OperatingSystems.IsEnabled = $true
            $WPFButton_InstallationStatus.IsEnabled = $true
            $WPFButton_Options.IsEnabled = $true
            $WPFButton_DeviceCompliance.IsEnabled = $true
            $WPFButton_ClientActions.IsEnabled = $true
        }
        else {

            try {
                $Application = Get-WmiObject -Namespace "root\ccm\clientSDK" -Class CCM_SoftwareUpdate -ComputerName $Comp | Where-Object name -eq "$UpdateName"
                Invoke-WmiMethod -Class CCM_SoftwareUpdatesManager -Name InstallUpdates -ArgumentList (, $Application) -Namespace root\ccm\clientsdk -ComputerName $Comp
            }
            catch {
                $WPFLabel_Details_Status_Output_Update.content = "Failed to start update"
            }

            do {
                $WMI = Get-WmiObject -Namespace "root\ccm\clientSDK" -Class CCM_SoftwareUpdate -ComputerName $Comp | Where-Object name -eq "$UpdateName"
                $WMIEval = $WMI.EvaluationState
                $WMIError = $WMI.ErrorCode
        
                switch ($WMIEval) {
                    0 { $WPFLabel_Details_Status_Output_Update.content = "No state information is available." }
                    1 { $WPFLabel_Details_Status_Output_Update.content = "Application is enforced to desired/resolved state." }
                    2 { $WPFLabel_Details_Status_Output_Update.Content = "Application isn't required on the client." }
                    3 { $WPFLabel_Details_Status_Output_Update.Content = "Application is available for enforcement (install or uninstall based on resolved state). Content may/may not have been downloaded." }
                    4 { $WPFLabel_Details_Status_Output_Update.Content = "Application last failed to enforce (install/uninstall)." }
                    5 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently waiting for content download to complete." }
                    6 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently waiting for content download to complete." }
                    7 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently waiting for its dependencies to download." }
                    8 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently waiting for a service (maintenance) window." }
                    9 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently waiting for a previously pending reboot." }
                    10 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently waiting for serialized enforcement." }
                    11 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently enforcing dependencies." }
                    12 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently enforcing." }
                    13 { $WPFLabel_Details_Status_Output_Update.Content = "Application install/uninstall enforced and soft reboot is pending." }
                    14 { $WPFLabel_Details_Status_Output_Update.Content = "Application installed/uninstalled and hard reboot is pending." }
                    15 { $WPFLabel_Details_Status_Output_Update.Content = "Update is available but pending installation." }
                    16 { $WPFLabel_Details_Status_Output_Update.Content = "Application failed to evaluate." }
                    17 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently waiting for an active user session to enforce." }
                    18 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently waiting for all users to sign out." }
                    19 { $WPFLabel_Details_Status_Output_Update.Content = "Application is currently waiting for a user sign in." }
                    20 { $WPFLabel_Details_Status_Output_Update.Content = "Application in progress, waiting for retry." }
                    21 { $WPFLabel_Details_Status_Output_Update.Content = "Application is waiting for presentation mode to be switched off." }
                    22 { $WPFLabel_Details_Status_Output_Update.Content = "Application is pre-downloading content (downloading outside of install job)." }
                    23 { $WPFLabel_Details_Status_Output_Update.Content = "Application is pre-downloading dependent content (downloading outside of install job)." }
                    24 { $WPFLabel_Details_Status_Output_Update.Content = "Application download failed (downloading during install job)." }
                    25 { $WPFLabel_Details_Status_Output_Update.Content = "Application pre-downloading failed (downloading outside of install job)." }
                    26 { $WPFLabel_Details_Status_Output_Update.Content = "Download success (downloading during install job)." }
                    27 { $WPFLabel_Details_Status_Output_Update.Content = "Post-enforce evaluation." }
                    28 { $WPFLabel_Details_Status_Output_Update.Content = "Waiting for network connectivity." }
                }

                if ($WPFProgressBar_Details_Update.Value -eq 100) {
                    $i = 0
                    $WPFProgressBar_Details_Update.Value = $i 
                    [System.Windows.Forms.Application]::DoEvents()
                }
                else {
                    $i = $i + 1
                    $WPFProgressBar_Details_Update.Value = $i 
                    [System.Windows.Forms.Application]::DoEvents()
                }
            }
            until ($WMIError -ne 0 -or (!$wmi) -or $WMIEval -eq 14 -or $WMIEval -eq 8 -or $WMIEval -eq 13)

            if ($WMIError -ne 0 -and $WMI) {
                $WPFProgressBar_Details_Update.Value = 100
                $WPFLabel_Details_Status_Output_Update.content = "ERROR: $WMIError"
                $WPFButton_Applications.IsEnabled = $true
                $WPFButton_Updates.IsEnabled = $true
                $WPFButton_OperatingSystems.IsEnabled = $true
                $WPFButton_InstallationStatus.IsEnabled = $true
                $WPFButton_Options.IsEnabled = $true
                $WPFButton_DeviceCompliance.IsEnabled = $true
                $WPFButton_ClientActions.IsEnabled = $true
            }
            elseif (!($WMI)) {
                $WPFProgressBar_Details_Update.Value = 100
                $WPFLabel_Details_Status_Output_Update.content = "Installed"
                $WPFButton_Applications.IsEnabled = $true
                $WPFButton_Updates.IsEnabled = $true
                $WPFButton_OperatingSystems.IsEnabled = $true
                $WPFButton_InstallationStatus.IsEnabled = $true
                $WPFButton_Options.IsEnabled = $true
                $WPFButton_DeviceCompliance.IsEnabled = $true
                $WPFButton_ClientActions.IsEnabled = $true
            }
            elseif ($WMIEval -eq 14 -or $WMIEval -eq 8 -or $WMIEval -eq 13) {
                $WPFProgressBar_Details_Update.Value = 100
                $WPFButton_Details_InstallUninstall_Update.content = "Restart"
                $WPFButton_Applications.IsEnabled = $true
                $WPFButton_Updates.IsEnabled = $true
                $WPFButton_OperatingSystems.IsEnabled = $true
                $WPFButton_InstallationStatus.IsEnabled = $true
                $WPFButton_Options.IsEnabled = $true
                $WPFButton_DeviceCompliance.IsEnabled = $true
                $WPFButton_ClientActions.IsEnabled = $true
            }
        }
    })

$WPFButton_ClientActions.add_click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"

        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar_Details.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFLabel_Details_Progress.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Visible"
        $WPFClientActions_Listview.Visibility = "Visible"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar_Details.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFOperatingSystemListview.Visibility = "Hidden"
        $WPFLabel_Details_Progress.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"

        $WPFApplicationGrid.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFLabel_Details_ApplicationName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"


        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFLabel_Details_ApplicationName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"
        $WPFClientActions_Listview.items.Clear()

        $ClientActionsList = @()
        $ClientActions = 
        "Application Deployment Evaluation Cycle",
        "Discovery Data Collection Cycle",
        "File Collection Cycle",
        "Hardware Inventory Cycle",
        "Machine Policy Retrieval & Evaluation Cycle",
        "Software Inventory Cycle",
        "Software Metering Usage Report Cycle",
        "Software Updates Scan & Software Updates Deployment Evaluation cycles",
        "User Policy Retrieval & Evaluation Cycle",
        "Windows Installer Source List Update Cycle"

        FOREACH ($client in $ClientActions) {
            $obj = [PSCustomObject]@{
                Name = "$client"

            }

            $WPFClientActions_Listview.items.add($obj)
        }


        [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
    })

$WPFButton_Client_Actions.add_Click({

        $app = ($WPFClientActions_Listview.SelectedItem).name
        $computer = $WPFInput_ConnectTo.text

        switch ($app) {
            "Application Deployment Evaluation Cycle" {
                $TriggerSchedule = "{00000000-0000-0000-0000-000000000121}"
                try {
                    Invoke-WmiMethod -ComputerName $computer -Namespace root\ccm -Class sms_client -Name TriggerSchedule $TriggerSchedule -ErrorAction Stop
                    # Construct the message
                    $message = "$app will run on $computer and might take several minutes to finish."
                    # Show the message in a popup window
                    [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                catch {
                    $message = "$app FAILED to run on $computer"
                    [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }

            }
            "Discovery Data Collection Cycle" {
                $TriggerSchedule = "{00000000-0000-0000-0000-000000000003}"
                try {
                    Invoke-WmiMethod -ComputerName $computer -Namespace root\ccm -Class sms_client -Name TriggerSchedule $TriggerSchedule -ErrorAction Stop
                    # Construct the message 
                    $message = "$app will run on $computer and might take several minutes to finish."
                    # Show the message in a popup window
                    [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                catch {
                    $message = "$app FAILED to run on $computer"
                    [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }

            }
            "File Collection Cycle" {
                $TriggerSchedule = "{00000000-0000-0000-0000-000000000010}"
                try {
                    Invoke-WmiMethod -ComputerName $computer -Namespace root\ccm -Class sms_client -Name TriggerSchedule $TriggerSchedule -ErrorAction Stop
                    # Construct the message
                    $message = "$app will run on $computer and might take several minutes to finish."
                    # Show the message in a popup window
                    [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                catch {
                    $message = "$app FAILED to run on $computer"
                    [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }

            }
            "Hardware Inventory Cycle" {
                $TriggerSchedule = "{00000000-0000-0000-0000-000000000001}"
                try {
                    Invoke-WmiMethod -ComputerName $computer -Namespace root\ccm -Class sms_client -Name TriggerSchedule $TriggerSchedule -ErrorAction Stop
                    # Construct the message
                    $message = "$app will run on $computer and might take several minutes to finish."
                    # Show the message in a popup window
                    [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                catch {
                    $message = "$app FAILED to run on $computer"
                    [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }

            }
            "Machine Policy Retrieval & Evaluation Cycle" {
                $TriggerSchedule = "{00000000-0000-0000-0000-000000000021}"
                try {
                    Invoke-WmiMethod -ComputerName $computer -Namespace root\ccm -Class sms_client -Name TriggerSchedule $TriggerSchedule -ErrorAction Stop
                    # Construct the message
                    $message = "$app will run on $computer and might take several minutes to finish."
                    # Show the message in a popup window
                    [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                catch {
                    $message = "$app FAILED to run on $computer"
                    [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }

            }
            "Software Inventory Cycle" {
                $TriggerSchedule = "{00000000-0000-0000-0000-000000000002}"
                try {
                    Invoke-WmiMethod -ComputerName $computer -Namespace root\ccm -Class sms_client -Name TriggerSchedule $TriggerSchedule -ErrorAction Stop
                    # Construct the message
                    $message = "$app will run on $computer and might take several minutes to finish."
                    # Show the message in a popup window
                    [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                catch {
                    $message = "$app FAILED to run on $computer"
                    [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }

            }
            "Software Metering Usage Report Cycle" {
                $TriggerSchedule = "{00000000-0000-0000-0000-000000000031}"
                try {
                    Invoke-WmiMethod -ComputerName $computer -Namespace root\ccm -Class sms_client -Name TriggerSchedule $TriggerSchedule -ErrorAction Stop
                    # Construct the message
                    $message = "$app will run on $computer and might take several minutes to finish."
                    # Show the message in a popup window
                    [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                catch {
                    $message = "$app FAILED to run on $computer"
                    [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }

            }
            "Software Updates Scan & Software Updates Deployment Evaluation cycles" {
                $TriggerSchedule = "{00000000-0000-0000-0000-000000000114}"
                try {
                    Invoke-WmiMethod -ComputerName $computer -Namespace root\ccm -Class sms_client -Name TriggerSchedule $TriggerSchedule -ErrorAction Stop
                    # Construct the message
                    $message = "$app will run on $computer and might take several minutes to finish."
                    # Show the message in a popup window
                    [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                catch {
                    $message = "$app FAILED to run on $computer"
                    [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }

            }
            "User Policy Retrieval & Evaluation Cycle" {
                $TriggerSchedule = "{00000000-0000-0000-0000-000000000026}"
                try {
                    Invoke-WmiMethod -ComputerName $computer -Namespace root\ccm -Class sms_client -Name TriggerSchedule $TriggerSchedule -ErrorAction Stop
                    # Construct the message
                    $message = "$app will run on $computer and might take several minutes to finish."
                    # Show the message in a popup window
                    [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                catch {
                    $message = "$app FAILED to run on $computer"
                    [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }

            }
            "Windows Installer Source List Update Cycle" {
                $TriggerSchedule = "{00000000-0000-0000-0000-000000000032}"
                try {
                    Invoke-WmiMethod -ComputerName $computer -Namespace root\ccm -Class sms_client -Name TriggerSchedule $TriggerSchedule -ErrorAction Stop
                    # Construct the message
                    $message = "$app will run on $computer and might take several minutes to finish."
                    # Show the message in a popup window
                    [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }
                catch {
                    $message = "$app FAILED to run on $computer"
                    [System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                }

            }

        }

    })

$WPFButton_InstallationStatus.Add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"
        $comp = $WPFInput_ConnectTo.Text
        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFProgressBar.Visibility = "Visible"
        $WPFProgressBar.Maximum = 10
        $WPFProgressBar.Value = 0
        # Start the job and capture it in a variable
        $job = Start-Job -Name InstalledApps -ScriptBlock {
            param ($comp)
    
            # Retrieve the application data from the remote computer
            $apps = (Get-WmiObject -ComputerName $comp -Namespace "Root\ccm\ClientSDK" -Class CCM_Application | where installstate -eq "Installed")
            return $apps
        } -ArgumentList $comp


        $job = Start-Job -Name FailedApps -ScriptBlock {
            param ($comp)
    
            # Retrieve the application data from the remote computer
            $apps = (Get-WmiObject -ComputerName $comp -Namespace "Root\ccm\ClientSDK" -Class CCM_Application | where installstate -eq "NotInstalled" | where errorcode -ne 0)
            return $apps
        } -ArgumentList $comp


        $job = Start-Job -Name UpdatesWillBeApplied -ScriptBlock {
            param ($comp)
    
            # Retrieve the application data from the remote computer
            $apps = (Get-WmiObject -ComputerName $comp -Namespace "Root\ccm\ClientSDK" -Class CCM_softwareupdate | where errorcode -eq 0)
            return $apps
        } -ArgumentList $comp


        $job = Start-Job -Name FailedUpdates -ScriptBlock {
            param ($comp)
    
            # Retrieve the application data from the remote computer
            $apps = (Get-WmiObject -ComputerName $comp -Namespace "Root\ccm\ClientSDK" -Class CCM_softwareupdate | where errorcode -ne 0)
            return $apps
        } -ArgumentList $comp


        $count = 0
        do {
            if ($count -eq 10) { $count = 0 }
            $WPFProgressBar.value = $count
            [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
            start-sleep -Milliseconds 100
            $count++
            $JobStatus1 = (get-job -Name InstalledApps).state
            $JobStatus2 = (get-job -Name FailedApps).state
            $JobStatus3 = (get-job -Name UpdatesWillBeApplied).state
            $JobStatus4 = (get-job -Name FailedUpdates).state
        }
        until($JobStatus1 -eq "Completed" -and $JobStatus2 -eq "Completed" -and $JobStatus3 -eq "Completed" -and $JobStatus4 -eq "Completed")
        $WPFInstall_Status_ListView.Visibility = "Visible"
        $WPFProgressBar.value = 0
        $WPFProgressBar.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Visible"
        # Get the results
        $installedApps = Receive-Job -Name installedApps
        $FailedApps = Receive-Job -Name FailedApps
        $FailedUpdate = Receive-Job -Name FailedUpdates
        $UpdatesThatWillBeApplied = Receive-Job -name UpdatesWillBeApplied

        # Remove the job if it's no longer needed
        Remove-Job -Name installedApps
        Remove-Job -Name FailedApps
        Remove-Job -Name FailedUpdates
        Remove-Job -Name UpdatesWillBeApplied

        # Output the results
        $AllOBJ = @()

        foreach ($installedApp in $installedApps) {
            $name = $installedApp.name
            $icon = $installedApp.icon
            if (!($icon)) { $icon = "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" }

            $lastinstallTime = $installedApp.LastInstallTime
            # Remove the time zone part (+0000), since it's not necessary for the DateTime conversion
            $lastInstallTimeWithoutZone = $lastInstallTime.Substring(0, 14)

            # Format it into a DateTime-friendly string (yyyyMMddHHmmss)
            $formattedDate = $lastInstallTimeWithoutZone -replace '(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})', '$1-$2-$3T$4:$5:$6'

            # Convert to DateTime object
            $lastInstallDateTime = [datetime]::ParseExact($formattedDate, 'yyyy-MM-ddTHH:mm:ss', $null)

            $status = "Installed"
            $obj = [PSCustomObject]@{
                Name        = "$name"
                Icon        = [convert]::FromBase64String($icon)
                Status      = $status
                InstallDate = $lastInstallDateTime
                Type        = "Application"

            }
            $AllObj += $obj

        }

        foreach ($installedApp in $FailedApps) {
            $name = $installedApp.name
            $icon = $installedApp.icon
            $lastinstallTime = $installedApp.LastInstallTime
            if (!($icon)) { $icon = "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" }

            # Remove the time zone part (+0000), since it's not necessary for the DateTime conversion
            $lastInstallTimeWithoutZone = $lastInstallTime.Substring(0, 14)

            # Format it into a DateTime-friendly string (yyyyMMddHHmmss)
            $formattedDate = $lastInstallTimeWithoutZone -replace '(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})', '$1-$2-$3T$4:$5:$6'

            # Convert to DateTime object
            $lastInstallDateTime = [datetime]::ParseExact($formattedDate, 'yyyy-MM-ddTHH:mm:ss', $null)

            $status = "Failed"
            $obj = [PSCustomObject]@{
                Name        = "$name"
                Icon        = [convert]::FromBase64String($icon)
                Status      = $status
                InstallDate = ""
                Type        = "Application"
            }
            $AllObj += $obj
        }

        foreach ($update in $FailedUpdate) {
            $name = $update.name
            $icon = $update.icon
            $lastinstallTime = $update.LastInstallTime
            if (!($icon)) { $icon = "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" }
            $status = "Failed"
            $obj = [PSCustomObject]@{
                Name   = "$name"
                Icon   = [convert]::FromBase64String($icon)
                Status = $status
                Type   = "Update"
            }
            $AllObj += $obj
        }


        foreach ($update in $UpdatesThatWillBeApplied) {
            $name = $update.name
            $icon = $update.icon
            $lastinstallTime = $update.LastInstallTime
            $deadline = $update.deadline
            $lastInstallTimeWithoutZone = $deadline.Substring(0, 14)

            # Format it into a DateTime-friendly string (yyyyMMddHHmmss)
            $formattedDate = $lastInstallTimeWithoutZone -replace '(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})', '$1-$2-$3T$4:$5:$6'

            # Convert to DateTime object
            $lastInstallDateTime = [datetime]::ParseExact($formattedDate, 'yyyy-MM-ddTHH:mm:ss', $null)

            if (!($icon)) { $icon = "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" }
            $status = "Will be installed after $deadline"
            $obj = [PSCustomObject]@{
                Name   = "$name"
                Icon   = [convert]::FromBase64String($icon)
                Status = $status
                Type   = "Update"
            }
            $AllObj += $obj
        }

        $AllObj = $AllObj | Sort-Object -Property InstallDate -Descending
        $WPFInstall_Status_ListView.ItemsSource = $AllObj
        [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
    })

$WPFButton_Details_TaskSequences.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFLabel_Details_Progress.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details.Visibility = "Hidden"
        $WPFLabel_Details_ApplicationName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFNewButton.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"


    })

$WPFButton_Options.add_Click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_TaskSequence.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "Hidden"
        $WPFButton_Details_TaskSequences.visibility = "Hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "Hidden"
        $WPFImage_Details_TaskSequence.visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "Hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "Hidden"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar_Details.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFLabel_Details_Progress.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar_Details.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFOperatingSystemListview.Visibility = "Hidden"
        $WPFLabel_Details_Progress.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"

        $WPFApplicationGrid.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFLabel_Details_ApplicationName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"


        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFLabel_Details_ApplicationName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"


        $WPFLabel_CompliantResult.Visibility = "Hidden"
        $WPFLabel_ComplianceStatus.Visibility = "Hidden"
        $WPFLabel_ComputerNameCompliance.Visibility = "Hidden"
        $WPFImage_Compliance.Visibility = "Hidden"
        $WPFButton_CheckCompliance.Visibility = "Hidden"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "hidden"
        $WPFLabel_Details_TaskSequence.visibility = "hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "hidden"
        $WPFButton_Details_TaskSequences.visibility = "hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "hidden"
        $WPFImage_Details_TaskSequence.visibility = "hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFOperatingSystemListview.Visibility = "Hidden"
        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"

        $WPFButton_Details.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"

        $WPFLabel_Details_Progress_TaskSequence.visibility = "hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "hidden"
        $WPFLabel_Details_Status_Output_TaskSequence.visibility = "hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "hidden"
        $WPFLabel_Details_TaskSequence.visibility = "hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "hidden"
        $WPFRectangle_Details_TaskSequence.visibility = "hidden"
        $WPFButton_Details_InstallUninstall_TaskSequence.visibility = "hidden"
        $WPFButton_Details_TaskSequences.visibility = "hidden"
        $WPFTextbox_Details_TaskSequence.visibility = "hidden"
        $WPFImage_Details_TaskSequence.visibility = "hidden"
        $WPFLabel_Details_Progress_TaskSequence.visibility = "hidden"
        $WPFProgressBar_Details_TaskSequence.visibility = "hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Applications.Background = "#FFDDDDDD"
        $WPFButton_ClientActions.Background = "#FFDDDDDD"
        $WPFButton_DeviceCompliance.Background = "#FFDDDDDD"
        $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
        $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
        $WPFButton_Options.Background = "#FFA8B5FF"
        $WPFButton_Updates.Background = "#FFDDDDDD"
        $WPFLabel_WorkInformation.Visibility = "Visible"
        $WPFRectangle_WI.Visibility = "Visible"
        $WPFLabel_SetHours.Visibility = "Visible"
        $WPFLabel_From.Visibility = "Visible"
        $WPFCombo_From.Visibility = "Visible"
        $WPFLabel_To.Visibility = "Visible"
        $WPFCombo_To.Visibility = "Visible"
        $WPFCheckbox_Sunday.Visibility = "Visible"
        $WPFCheckbox_Monday.Visibility = "Visible"
        $WPFCheckbox_Tuesday.Visibility = "Visible"
        $WPFCheckbox_Wednesday.Visibility = "Visible"
        $WPFCheckbox_Thursday.Visibility = "Visible"
        $WPFCheckbox_Friday.Visibility = "Visible"
        $WPFCheckbox_Saturday.Visibility = "Visible"
        $WPFButton_Set.Visibility = "Visible"

        $WPFCombo_From.items.clear()
        $WPFCombo_To.items.clear()

        $WPFCombo_From.items.add("12:00AM")
        $WPFCombo_From.items.add("1:00AM")
        $WPFCombo_From.items.add("2:00AM")
        $WPFCombo_From.items.add("3:00AM")
        $WPFCombo_From.items.add("4:00AM")
        $WPFCombo_From.items.add("5:00AM")
        $WPFCombo_From.items.add("6:00AM")
        $WPFCombo_From.items.add("7:00AM")
        $WPFCombo_From.items.add("8:00AM")
        $WPFCombo_From.items.add("9:00AM")
        $WPFCombo_From.items.add("10:00AM")
        $WPFCombo_From.items.add("11:00AM")
        $WPFCombo_From.items.add("12:00PM")
        $WPFCombo_From.items.add("1:00PM")
        $WPFCombo_From.items.add("2:00PM")
        $WPFCombo_From.items.add("3:00PM")
        $WPFCombo_From.items.add("4:00PM")
        $WPFCombo_From.items.add("5:00PM")
        $WPFCombo_From.items.add("6:00PM")
        $WPFCombo_From.items.add("7:00PM")
        $WPFCombo_From.items.add("8:00PM")
        $WPFCombo_From.items.add("9:00PM")
        $WPFCombo_From.items.add("10:00PM")
        $WPFCombo_From.items.add("11:00PM")

        $WPFCombo_To.items.add("12:00AM")
        $WPFCombo_To.items.add("1:00AM")
        $WPFCombo_To.items.add("2:00AM")
        $WPFCombo_To.items.add("3:00AM")
        $WPFCombo_To.items.add("4:00AM")
        $WPFCombo_To.items.add("5:00AM")
        $WPFCombo_To.items.add("6:00AM")
        $WPFCombo_To.items.add("7:00AM")
        $WPFCombo_To.items.add("8:00AM")
        $WPFCombo_To.items.add("9:00AM")
        $WPFCombo_To.items.add("10:00AM")
        $WPFCombo_To.items.add("11:00AM")
        $WPFCombo_To.items.add("12:00PM")
        $WPFCombo_To.items.add("1:00PM")
        $WPFCombo_To.items.add("2:00PM")
        $WPFCombo_To.items.add("3:00PM")
        $WPFCombo_To.items.add("4:00PM")
        $WPFCombo_To.items.add("5:00PM")
        $WPFCombo_To.items.add("6:00PM")
        $WPFCombo_To.items.add("7:00PM")
        $WPFCombo_To.items.add("8:00PM")
        $WPFCombo_To.items.add("9:00PM")
        $WPFCombo_To.items.add("10:00PM")
        $WPFCombo_To.items.add("11:00PM")
    })

$WPFButton_Set.add_click({
        $systemname = $WPFInput_ConnectTo.text
        $Sunday = $WPFCheckbox_Sunday.IsChecked
        $Monday = $WPFCheckbox_Monday.IsChecked
        $Tuesday = $WPFCheckbox_Tuesday.IsChecked
        $Wednesday = $WPFCheckbox_Wednesday.IsChecked
        $Thursday = $WPFCheckbox_Thursday.IsChecked
        $Friday = $WPFCheckbox_Friday.IsChecked
        $Saturday = $WPFCheckbox_Saturday.IsChecked
        $TimeStart = $WPFCombo_From.SelectedItem
        $TimeEnd = $WPFCombo_To.SelectedItem
        $count = 0
        if ($Sunday) {
            $count += 1
        }
        if ($Monday) {
            $count += 2
        }
        if ($Tuesday) {
            $count += 4
        }
        if ($Wednesday) {
            $count += 8
        }
        if ($Thursday) {
            $count += 16
        }
        if ($Friday) {
            $count += 32
        }
        if ($Satuday) {
            $count += 64
        }




        Switch ($timeStart) {
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

        Switch ($TimeEnd) {
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
        function Set-SCCMClientBusinessHours {
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
                [Parameter(Mandatory = $false,
                    ValueFromPipeline = $True,
                    ValueFromPipelineByPropertyName = $true)]
                [Alias('IPAddress', '__Server', 'CN', 'Name')]
                [string[]]$ComputerName = $env:COMPUTERNAME,
                [switch]$RebootOutsideBusinessHours,
                [parameter(Mandatory = $false)]
                [int]$WorkingDays = 62,
                [parameter(Mandatory = $false)]
                [ValidateScript({ $_ -gt 0 -and $_ -lt 23 })]
                [int]$StartTime = 5,
                [parameter(Mandatory = $false)]
                [ValidateScript({ $_ -gt 0 -and $_ -lt 23 })]
                [int]$EndTime = 22
            )

            PROCESS {
                Foreach ($computer in $ComputerName) {
                    # Get WMI Object
                    $CCM = Get-WmiObject -Namespace root\ccm\ClientSDK -Class CCM_ClientUXSettings -List -ComputerName $computer
                    if ($ccm.SetAutoInstallRequiredSoftwaretoNonBusinessHours($RebootOutsideBusinessHours.IsPresent).returnValue -eq 0) {
                        #We were successful!
                    }
                    else {
                        Write-Warning "$computer Failed Specified Reboot"
                    }
                    if ($CCM.SetBusinessHours($workingDays, $starttime, $endtime).returnValue -eq 0) {
                        #Do nothing it was all successful
                    }
                    else {
                        Write-Warning "$computer Failed Business Hours"
                    }

                } # End Foreach computername
            }# End Process
        }

        #try{
        Set-SCCMClientBusinessHours -ComputerName $SystemName -WorkingDays $count -StartTime $TimeStart -EndTime $TimeEnd
        $message = "Business hours successfully set on $SystemName"
        [System.Windows.Forms.MessageBox]::Show($message, "Information", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
        <#
}
catch{
$message = "Business hours FAILED to set."
[System.Windows.Forms.MessageBox]::Show($message, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)

}
#>


    })

$WPFNewButton.add_click({
        $WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFApplicationMachineCheckbox.Visibility = "Hidden"
        #$WPFApplicationUserCheckbox.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFInput_ConnectTo.text = ""
        $WPFButton_Connect.Background = "#FFDDDDDD"
        $WPFButton_Connect.content = "Connect"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFDetails_Compliance_Refresh.Visibility = "Hidden"
        $WPFBaselineListview.Visibility = "Hidden"
        $WPFDetails_Compliance.Visibility = "Hidden"
        $WPFLabel_WorkInformation.Visibility = "Hidden"
        $WPFRectangle_WI.Visibility = "Hidden"
        $WPFLabel_SetHours.Visibility = "Hidden"
        $WPFLabel_From.Visibility = "Hidden"
        $WPFCombo_From.Visibility = "Hidden"
        $WPFLabel_To.Visibility = "Hidden"
        $WPFCombo_To.Visibility = "Hidden"
        $WPFCheckbox_Sunday.Visibility = "Hidden"
        $WPFCheckbox_Monday.Visibility = "Hidden"
        $WPFCheckbox_Tuesday.Visibility = "Hidden"
        $WPFCheckbox_Wednesday.Visibility = "Hidden"
        $WPFCheckbox_Thursday.Visibility = "Hidden"
        $WPFCheckbox_Friday.Visibility = "Hidden"
        $WPFCheckbox_Saturday.Visibility = "Hidden"
        $WPFButton_Set.Visibility = "Hidden"
        $WPFButton_Details_TaskSequences.Visibility = "Hidden"
        $WPFOperatingSystemListview.Visibility = "Hidden"
        $WPFInstall_Status_ListView.Visibility = "Hidden"
        $WPFButton_Client_Actions.visibility = "Hidden"
        $WPFClientActions_Listview.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall_Update.Visibility = "Hidden"
        $WPFRectangle_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Update.Visibility = "Hidden"
        $WPFLabel_Details_Progress_Update.Visibility = "Hidden"
        $WPFProgressBar_Details_Update.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output_Update.Visibility = "Hidden"
        $WPFLabel_Details_Publisher_Output_Update.Visibility = "Hidden"
        $WPFTextbox_Details_UpdateName.Visibility = "Hidden"
        $WPFImage_Details_Update.Visibility = "Hidden"
        $WPFApplicationsListView.Visibility = "Hidden"
        $WPFButton_Details_Updates.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar.Visibility = "Hidden"
        $WPFButton_Details.Visibility = "Hidden"
        $WPFProgressBar_Details.Visibility = "Hidden"
        $WPFButton_Details_InstallUninstall.Visibility = "Hidden"
        $WPFLabel_Details_Progress.Visibility = "Hidden"
        $WPFLabel_Details_Status.Visibility = "Hidden"
        $WPFLabel_Details_Status_Output.Visibility = "Hidden"
        $WPFLabel_Details_Version.Visibility = "Hidden"
        $WPFLabel_Details_Version_Output.Visibility = "Hidden"
        $WPFSoftwareUpdateListView.Visibility = "Hidden"
        $WPFTextbox_Details_AppName.Visibility = "Hidden"
        $WPFRectangle_Details.Visibility = "Hidden"
        $WPFImage_Details_Image.Visibility = "Hidden"
        $WPFButton_Applications.Background = "#FFDDDDDD"
        $WPFButton_ClientActions.Background = "#FFDDDDDD"
        $WPFButton_DeviceCompliance.Background = "#FFDDDDDD"
        $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
        $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
        $WPFButton_Options.Background = "#FFDDDDDD"
        $WPFButton_Updates.Background = "#FFDDDDDD"
        $WPFNewButton.Visibility = "Hidden"
    })

$WPFButton_Details_InstallUninstall_TaskSequence.add_Click({
        $WPFButton_Applications.IsEnabled = $false
        $WPFButton_Updates.IsEnabled = $false
        $WPFButton_OperatingSystems.IsEnabled = $false
        $WPFButton_InstallationStatus.IsEnabled = $false
        $WPFButton_Options.IsEnabled = $false
        $WPFButton_DeviceCompliance.IsEnabled = $false
        $WPFButton_ClientActions.IsEnabled = $false
        $SelectedTaskSequence = $WPFOperatingSystemListview.SelectedItem.Name
        $compToConnect = $WPFInput_ConnectTo.Text
        write-host "Kicking off install of $SelectedTaskSequence"
        $WPFProgressBar_Details_TaskSequence.Value = 0
        $WPFProgressBar_Details_TaskSequence.Maximum = 100
        $SoftwareDistributionPolicy = Get-WmiObject -ComputerName $compToConnect -Namespace "root\ccm\policy\machine\actualconfig" -Class "CCM_SoftwareDistribution" | Where-Object { $_.PKG_Name -like $SelectedTaskSequence } | Select-Object -Property PKG_PackageID, ADV_AdvertisementID
        # Retrieve the ScheduleID used for triggering a new required assignment for task sequence
        $ScheduleID = Get-WmiObject -ComputerName $compToConnect -Namespace "root\ccm\scheduler" -Class "CCM_Scheduler_History" | Where-Object { $_.ScheduleID -like "*$($SoftwareDistributionPolicy.PKG_PackageID)*" } | Select-Object -ExpandProperty ScheduleID
        $TaskSequencePolicy = Get-WmiObject -ComputerName $compToConnect -Namespace "root\ccm\policy\machine\actualconfig" -Class "CCM_TaskSequence" | Where-Object { $_.ADV_AdvertisementID -like $SoftwareDistributionPolicy.ADV_AdvertisementID }
        # Set the mandatory assignment property to true mimicing it contains assignments
        $TaskSequencePolicy.Get()
        $TaskSequencePolicy.ADV_MandatoryAssignments = $true
        $TaskSequencePolicy.Put() | Out-Null

        # Invoke the mandatory assignment
        Invoke-WmiMethod -ComputerName $compToConnect -Namespace "root\ccm" -Class "SMS_Client" -Name "TriggerSchedule" -ArgumentList $ScheduleID

        $i = 0
        do {
            $WMI = (Get-WmiObject -ComputerName $comptoconnect -Impersonation Impersonate -Namespace "root\ccm\policy\machine\actualconfig" -Class "CCM_SoftwareDistribution" | Where-Object { $_.PKG_Name -like $SelectedTaskSequence }  | Select-Object -Property PKG_PackageID | Select-Object -First 1).PKG_PackageID
            $WMI2 = (Get-WmiObject -ComputerName $comptoconnect -Impersonation Impersonate -Namespace "root\ccm\clientsdk" -Class "CCM_Program" | Where-Object { $_.PackageID -eq $WMI })
            $InstallState = $WMI2.EvaluationState
            $ErrorCode = $WMI2.ErrorCode
            write-host "Install State: $installState"
            write-host "Error Code: $ErrorCode"
            switch ($InstallState) {
                14 { $WPFLabel_Details_Status_Output_TaskSequence.content = "Running..." }
                default { $WPFLabel_Details_Status_Output_TaskSequence.Content = "Install" }
            }

            if ($WPFProgressBar_Details_TaskSequence.Value -eq 100) {
                $i = 0
                $WPFProgressBar_Details_TaskSequence.Value = $i 
                [System.Windows.Forms.Application]::DoEvents()
            }
            else {
                $i = $i + 20
                $WPFProgressBar_Details_TaskSequence.Value = $i 
                [System.Windows.Forms.Application]::DoEvents()
            }

        }
        until(
            $installState -eq 17
        )

        if ($installState -eq 17 -and $ErrorCode -eq 0) {
            $WPFLabel_Details_Status_Output_TaskSequence.content = "Installed"
            $WPFProgressBar_Details_TaskSequence.Value = 100
            $WPFButton_Applications.IsEnabled = $true
            $WPFButton_Updates.IsEnabled = $true
            $WPFButton_OperatingSystems.IsEnabled = $true
            $WPFButton_InstallationStatus.IsEnabled = $true
            $WPFButton_Options.IsEnabled = $true
            $WPFButton_DeviceCompliance.IsEnabled = $true
            $WPFButton_ClientActions.IsEnabled = $true
            $
        }
        else {
            $WPFLabel_Details_Status_Output_TaskSequence.content = "Error: $ErrorCode"
            $WPFProgressBar_Details_TaskSequence.Value = 0
            $WPFButton_Applications.IsEnabled = $true
            $WPFButton_Updates.IsEnabled = $true
            $WPFButton_OperatingSystems.IsEnabled = $true
            $WPFButton_InstallationStatus.IsEnabled = $true
            $WPFButton_Options.IsEnabled = $true
            $WPFButton_DeviceCompliance.IsEnabled = $true
            $WPFButton_ClientActions.IsEnabled = $true
        }


    })

# Event handler for when the machine checkbox is checked
$WPFApplicationMachineCheckbox.Add_Checked({
        if ($WPFApplicationMachineCheckbox.IsChecked -eq $true) {
            $WPFApplicationUserCheckbox.IsChecked = $false
            $WPFApplicationsListView_UserBased.Visibility = "Hidden"
        
            $WPFApplicationsListView.Visibility = "Hidden"
            $WPFButton_Details.Visibility = "Hidden"
            $RemoteComputer = $WPFInput_ConnectTo.text


            $TestConnection = Test-Connection $RemoteComputer -ErrorAction Ignore -Count 1
            if ($TestConnection) {
                try {
                    Get-WmiObject -ComputerName $RemoteComputer -Namespace root\ccm\dcm -QUERY "SELECT * FROM SMS_DesiredConfiguration" -ErrorAction Stop
                    $WPFNewButton.Visibility = "Visible"
                    $WPFButton_Connect.Background = "#FFA29D9D"
                    $WPFButton_Connect.content = "Connected"
                    $RemoteComputer = $WPFInput_ConnectTo.text
                    $WPFButton_Applications.Background = "#FFA8B5FF"
                    $WPFButton_ClientActions.Background = "#FFDDDDDD"
                    $WPFButton_DeviceCompliance.Background = "#FFDDDDDD"
                    $WPFButton_InstallationStatus.Background = "#FFDDDDDD"
                    $WPFButton_OperatingSystems.Background = "#FFDDDDDD"
                    $WPFButton_Options.Background = "#FFDDDDDD"
                    $WPFButton_Updates.Background = "#FFDDDDDD"
                    $WPFProgressBar.Visibility = "Visible"
                    $WPFProgressBar.Maximum = 10
                    $WPFProgressBar.Value = 0
                    $RemoteComputer = $WPFInput_ConnectTo.text
                    # Start the job and capture it in a variable
                    Remove-Job -Name GetApplications2 -ErrorAction Ignore
                    $job = Start-Job -Name GetApplications2 -ScriptBlock {
                        param ($RemoteComputer)
    
                        # Retrieve the application data from the remote computer
                        $apps = (Get-WmiObject -Namespace "root\ccm\ClientSDK" -ComputerName $RemoteComputer -Class CCM_Application)
                        return $apps
                    } -ArgumentList $RemoteComputer


                    $count = 0
                    do {
                        if ($count -eq 10) { $count = 0 }
                        $WPFProgressBar.value = $count
                        [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
                        start-sleep -Milliseconds 100
                        $count++
                        $JobStatus = (get-job -Name GetApplications2).state

                    }
                    until($JobStatus -eq "Completed")
                    $WPFProgressBar.value = 0
                    $WPFProgressBar.Visibility = "Hidden"
                    $WPFApplicationsListView.Visibility = "Visible"
                    $WPFButton_Details.Visibility = "Visible"
                    $WPFApplicationMachineCheckbox.Visibility = "Visible"
                    $WPFApplicationMachineCheckbox.IsChecked = $true
                    $WPFApplicationUserCheckbox.Visibility = "Visible"
                    # Get the results
                    $RemoteApplications = Receive-Job -Name GetApplications2

                    # Remove the job if it's no longer needed
                    Remove-Job -Name GetApplications2

                    # Output the results

                    $Applications = @()
                    foreach ($Application in $RemoteApplications) {
                        $AppName = $Application.fullname
                        $softwareVersion = $Application.SoftwareVersion
                        $icon = $Application.icon
                        if (!($icon)) { $icon = "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" }
                        $installState = $Application.InstallState
                        if ($installState -eq "NotInstalled") { $installState = "Not Installed" }
                        $ErrorCode = $application.errorcode
    
                        $obj = [PSCustomObject]@{
                            Name      = "$AppName"
                            Icon      = [convert]::FromBase64String($icon)
                            Version   = $softwareVersion
                            Status    = $installState
                            ErrorCode = $ErrorCode
                        }
                        $Applications += $obj  # Use += to add the object to the array
                    }
                    # Assign the data source to the ListView
                    $WPFApplicationsListView.ItemsSource = $Applications
                    [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
                }
                catch {
                    $WPFButton_Connect.content = "Failure"
                }
            }
            else {
                $WPFButton_Connect.content = "Retry..."
            }
            $WPFNewButton.Visibility = "Visible"

        }
    })

# Event handler for when the user checkbox is checked
$WPFApplicationUserCheckbox.Add_Checked({
        if ($WPFApplicationUserCheckbox.IsChecked -eq $true) {
            $WPFApplicationMachineCheckbox.IsChecked = $false
            $WPFButton_Details.Visibility = "Hidden"
            $WPFApplicationsListView.Visibility = "Hidden"
            $sms = new-object -comobject "Microsoft.SMS.Client"
            $SiteCodeQuery = $sms.GetAssignedSite()
            $ServerQuery = $sms.GetCurrentManagementPoint()

            Remove-Job -Name GetUserBasedApps -ErrorAction Ignore
            $job = Start-Job -Name GetUserBasedApps -ScriptBlock {

                Function Get-SCCMUserCollectionDeployment {
                    [CmdletBinding()]
                    PARAM(
                        [Parameter(Mandatory)]
                        [Alias('SamAccountName')]
                        $UserName,

                        [Parameter(Mandatory)]
                        $SiteCode,

                        [Parameter(Mandatory)]
                        $ComputerName,

                        [Alias('RunAs')]
                        [pscredential]
                        [System.Management.Automation.Credential()]
                        $Credential = [System.Management.Automation.PSCredential]::Empty,

                        [ValidateSet('Required', 'Available')]
                        $Purpose
                    )

                    BEGIN {
                        # Verify if the username contains the domain name
                        if ($UserName -like '*\*') { $UserName = ($UserName -split '\\')[1] }

                        # Define default properties
                        $Splatting = @{
                            ComputerName = $ComputerName
                            NameSpace    = "root\SMS\Site_$SiteCode"
                        }

                        IF ($PSBoundParameters['Credential']) {
                            $Splatting.Credential = $Credential
                        }

                        Switch ($Purpose) {
                            "Required" { $DeploymentIntent = 0 }
                            "Available" { $DeploymentIntent = 2 }
                            default { $DeploymentIntent = "NA" }
                        }

                        Function Get-DeploymentIntentName {
                            PARAM(
                                [Parameter(Mandatory)]
                                $DeploymentIntent
                            )
                            PROCESS {
                                if ($DeploymentIntent -eq 0) { Write-Output "Required" }
                                if ($DeploymentIntent -eq 2) { Write-Output "Available" }
                                if ($DeploymentIntent -ne 0 -and $DeploymentIntent -ne 2) { Write-Output "NA" }
                            }
                        }
                    }
                    PROCESS {
                        # Find the User in SCCM CMDB
                        $User = Get-WMIObject @Splatting -Query "Select * From SMS_R_User WHERE UserName='$UserName'"

                        # Find the collections where the user is a member of
                        Get-WmiObject -Class sms_fullcollectionmembership @splatting -Filter "ResourceID = '$($user.resourceid)'" |
                        ForEach-Object -Process {

                            # Retrieve the collection of the user
                            $Collections = Get-WmiObject @splatting -Query "Select * From SMS_Collection WHERE CollectionID='$($_.Collectionid)'"

                            # Retrieve the deployments (advertisement) of each collection
                            Foreach ($Collection in $collections) {
                                IF ($DeploymentIntent -eq 'NA') {
                                    # Find the Deployment on one collection
                                    $Deployments = (Get-WmiObject @splatting -Query "Select * From SMS_DeploymentInfo WHERE CollectionID='$($Collection.CollectionID)'")
                                }
                                ELSE {
                                    $Deployments = (Get-WmiObject @splatting -Query "Select * From SMS_DeploymentInfo WHERE CollectionID='$($Collection.CollectionID)' AND DeploymentIntent='$DeploymentIntent'")
                                }

                                Foreach ($Deploy in $Deployments) {

                                    # Prepare Output
                                    $Properties = @{
                                        UserName             = $UserName
                                        ComputerName         = $ComputerName
                                        CollectionName       = $Deploy.CollectionName
                                        CollectionID         = $Deploy.CollectionID
                                        DeploymentID         = $Deploy.DeploymentID
                                        DeploymentName       = $Deploy.DeploymentName
                                        DeploymentIntent     = $deploy.DeploymentIntent
                                        DeploymentIntentName = (Get-DeploymentIntentName -DeploymentIntent $deploy.DeploymentIntent)
                                        TargetName           = $Deploy.TargetName
                                        TargetSubName        = $Deploy.TargetSubname
                                    }

                                    # Output the current Object
                                    New-Object -TypeName PSObject -prop $Properties
                                }
                            }
                        }
                    }
                }
    
                # Retrieve the application data from the remote computer
                $apps = Get-SCCMUserCollectionDeployment -UserName $using:UserSignedIn -SiteCode $using:SiteCodeQuery -ComputerName $using:ServerQuery
                return $apps
            }

            $WPFProgressBar.Visibility = "Visible"
            $count = 0
            do {
                if ($count -eq 10) { $count = 0 }
                $WPFProgressBar.value = $count
                [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh
                start-sleep -Milliseconds 100
                $count++
                $JobStatus = $job.State

            }
            until($JobStatus -eq "Completed")
            $WPFProgressBar.value = 0
            $WPFProgressBar.Visibility = "Hidden"
            $WPFApplicationsListView_UserBased.Visibility = "Visible"
            # Get the results
            $RemoteApplications = Receive-Job -Name GetUserBasedApps
            write-host "$RemoteApplications  : RC"
            # Remove the job if it's no longer needed
            Remove-Job -Name GetUserBasedApps

            # Output the results

            $Applications = @()
            if (!($RemoteApplications)) {
                $obj = [PSCustomObject]@{
                    Name      = "No Applications Available"
                    Icon      = [convert]::FromBase64String($icon)
                    Version   = "n/a"
                    ErrorCode = "n/a"
                }
                $Applications += $obj  # Use += to add the object to the array
                $WPFButton_Details.Visibility = "hidden"

            }
            else {
                foreach ($Application in $RemoteApplications) {
                    $AppName = $Application.fullname
                    $softwareVersion = $Application.SoftwareVersion
                    $icon = $Application.icon
                    if (!($icon)) { $icon = "/9j/4AAQSkZJRgABAQACWAJYAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/wgALCADIAMgBAREA/8QAGwABAAMBAQEBAAAAAAAAAAAAAAMEBQIBBgf/2gAIAQEAAAAA/fwAAAAAAAAAAAAAAAAAAAAAABBV0QAABBna/oAMSXz0EfskO2ADJvfL6Ni9ZQZ2wydYAGTf+WuU7n0kGdr+snWABk63mDlvoItf0ydYAGTrVvlvLNj6HzF3GTrAAydb5qjZnpblXK3dbJ1gAZM/zdmelx3w6+opawAMnitPzwCz7rAAzqvU3ICTRABBna/oAAAq2fQAAAK8ffcXfnk/YAAij4ni5gkudgAAAAAAAAAAAAAAAAAAAAAf/8QAOhAAAQMCAQUQAQMEAwAAAAAAAQIDBAAREgUVITFBEBMUIjAyNkJRVGFxcpGhwVIjQEMgcNHwYoHx/9oACAEBAAE/AP7HSpTcRorWfIbTWTlSn1rfeNm181H7eVKbiNFaz5DaTUaM5Pe4VKHE6iKAsLDlX0yJGVnGG5CmwBfWbaqzZM78r5o5OlDXlAjzJrNszvyvms2zO/K+azZM78r5rNkzvyvms2TO/K+azZM78r5p2O7DAdkTVqT+AJurwqPGdnucJkc3qIOqlZOmLUVcNIvsAIAphMiPlZthyQpwEX1m2rlWukDvp+hU1/g0VboFyBo86cdcdWVuKKlHtrJMxaZCWFKJQrVfYayxNKMLDarK5yiPioUkSoyXOtqUPHdlSm4jRcWfIbTUaM5Pe4VK5nURQAAsNx3pA16fo8q10gd9P0KmMcJiraBsSNHnTjS2llC0lKhsNQWlMkzHE2bbFxfrHZTrinnVOKN1KNzWSpfB5ISo/pr0HwO5KlNxGitZ8h2mo0Zye9wqUOJ1EUBYWG670ga9P0eVa6QO+n6G4UpVrAPmKyxL3x0MIPFRrttO7GyilGTQ69fEOKP+VRozk97hUrmdRFAACw1f0O9IGvT9HlWukDvp+huT5IixlL6x0JHjRJUokm5Ok7jDCMG/v6GhqG1Z7BQKCtEiWLN6m2h2f4pJBSCm1raLU44lpBWs2SBcmmMrqM8lzQyvQB+PjQN9x3pA16fo8q10gd9P0NzKkvhMopSf00aB4+O4wwnBv79w0NQ2rPYKUrQJMkDD/EyP91U66t5wrWbk/FZGl74yWFnjI1eIrK83fV8HbPETzj2ncyRO3xHB3Dx0jintG470ga9P0eVa6QO+n6FZVl8HjYUn9RegeA3GGE4N/fuGhqG1Z7BSlaBJkgW/iZH+6qddW84VrNyfjcbdWyvG2rCrtrXuNrU2sLSbKBuDUKUmWwFjnDQodhp3pA16fo8q10gd9P0Km5OlS5KnMbYTqSL6hS8ncEs5KcSUDUlOtR7KjxHZh4Q6kBCR+m2dA/8AKdyTMecK1utknx1VmST+bfvWZJP5t+9Zkk/m371mST+bfvWZJP5t+9Zkk/m371ByfKhv48bZQdCk32U70ga9P0eVkZKD8lTwfUgq2AU/Bahp316S4oDUjVi8KixXJzgkSBZscxGynMkqdcK1Sl3PYNFZlPe3PasynvbntWZT3tz2rMp7257VmU97c9qzKe9ue1ZlPe3PasynvbntUfJQYkpeL6llOwjlZUpuI0VrPkNpNRozk97hUrmdRFAWFh+3fgNSJCHXCTh6uw0BYWH7qatxEclpVl4gAf8AujJUpDXVXvgQtPZXDE3vgXveLDj2Xp9WFbIxKF120bfOhOSbENOWUSlJ7T2UmVjbxJaWVBWEp0aDQmJUlGBClKVfi7RbXQmpUlJShRUoEhOgaBTTqXmwtOo/sZDRebwg24wPsaeiBx9t5KsJSoFQ/IVwRzBvONO84sWrTrvanmi4pog2wLxUmKpKGU4hxHCs+Ov/ADSoi8RIUkguFRSb2N6cjqaS0gnigqViCSRp2aKRHW4ltzA2FJBThUnQRs0bKaRgbCThvtwiw/sN/9k=" }
                    $installState = $Application.InstallState
                    if ($installState -eq "NotInstalled") { $installState = "Not Installed" }
                    $ErrorCode = $application.errorcode
                    $name = $Application.targetname
                    $CollectionName = $Application.CollectionName
                    $Type = $Application.DeploymentIntentName
                    $obj = [PSCustomObject]@{
                        Name      = "$name"
                        Icon      = [convert]::FromBase64String($icon)
                        Version   = $CollectionName
                        Status    = " "
                        ErrorCode = $type
                    }
                    $Applications += $obj  # Use += to add the object to the array
                }
            }
            # Assign the data source to the ListView
            $WPFApplicationsListView_UserBased.ItemsSource = $Applications
            [System.Windows.Forms.Application]::DoEvents()  # Forces the UI to refresh


        }
    })

$form.ShowDialog()