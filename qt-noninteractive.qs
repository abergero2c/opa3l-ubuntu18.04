function Controller() {
    installer.autoRejectMessageBoxes();
    installer.installationFinished.connect(function() {
        gui.clickButton(buttons.NextButton);
    })
}

Controller.prototype.WelcomePageCallback = function() {
    gui.clickButton(buttons.NextButton, 3000);
}

Controller.prototype.CredentialsPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.IntroductionPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.TargetDirectoryPageCallback = function()
{
    gui.currentPageWidget().TargetDirectoryLineEdit.setText("/qt");
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
    var widget = gui.currentPageWidget();

    widget.selectAll();
    

    // widget.deselectAll();
    // widget.selectComponent("qt.594.gcc_64")
    // // widget.selectComponent("qt.594.doc")
    // // widget.selectComponent("qt.594.examples")
    // widget.selectComponent("qt.594.qtcharts")
    // widget.selectComponent("qt.594.qtcharts.gcc_64")
     widget.deselectComponent("qt.594.qtdatavis3d");
     widget.deselectComponent("qt.594.qtdatavis3d.gcc_64");
     widget.deselectComponent("qt.594.qtnetworkauth");
     widget.deselectComponent("qt.594.qtnetworkauth.gcc_64");
     widget.deselectComponent("qt.594.qtpurchasing");
     widget.deselectComponent("qt.594.qtpurchasing.gcc_64");
     widget.deselectComponent("qt.594.qtremoteobjects");
     widget.deselectComponent("qt.594.qtremoteobjects.gcc_64");
     widget.deselectComponent("qt.594.qtscript");
     widget.deselectComponent("qt.594.qtspeech");
     widget.deselectComponent("qt.594.qtspeech.gcc_64");
     widget.deselectComponent("qt.594.qtvirtualkeyboard");
     widget.deselectComponent("qt.594.qtvirtualkeyboard.gcc_64");
     widget.deselectComponent("qt.594.qtwebengine");
     widget.deselectComponent("qt.594.qtwebengine.gcc_64");
     widget.deselectComponent('qt.594.src');
     widget.deselectComponent("qt.tools.qtcreator");

    gui.clickButton(buttons.NextButton);
}

Controller.prototype.LicenseAgreementPageCallback = function() {
    gui.currentPageWidget().AcceptLicenseRadioButton.setChecked(true);
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.StartMenuDirectoryPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ReadyForInstallationPageCallback = function()
{
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function() {
var checkBoxForm = gui.currentPageWidget().LaunchQtCreatorCheckBoxForm
if (checkBoxForm && checkBoxForm.launchQtCreatorCheckBox) {
    checkBoxForm.launchQtCreatorCheckBox.checked = false;
}
    gui.clickButton(buttons.FinishButton);
}
