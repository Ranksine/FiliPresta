const { app, BrowserWindow } = require('electron');
const path = require('path');
const isDev = require('electron-is-dev');

function createWindow() {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: false,
      contextIsolation: true
    },
  });

  win.loadURL('http://localhoct:3000'); //Next.js UI
}

app.whenReady().then(()=>{
  createWindow();

  app.on('activate', function () {
    if(BrowserWindow.getAllWindows().length === 0) createWindow();
  });
});

app.on('window-all-closed', function() {
  if(process.platform !== 'darwin') app.quit();
});