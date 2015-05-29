using System;
using System.Diagnostics;
using System.Windows.Forms;
using System.Runtime.InteropServices;

namespace M3DEditor
{
    /// <summary>
    /// Wrapper for OpenFileDialog
    /// </summary>
    public class GetOpenFileDialog
    {
        [DllImport("user32.dll")]
        private static extern IntPtr GetForegroundWindow();

        [DllImport("user32.dll")]
        static extern bool SetForegroundWindow(IntPtr hWnd);

        OpenFileDialog _oFileDialog;
        IntPtr ptr;

        // Properties
        public string FileName
        {
            get { return _oFileDialog.FileName; }
            set { _oFileDialog.FileName = value; }
        }

        public string Filter
        {
            get { return _oFileDialog.Filter; }
            set { _oFileDialog.Filter = value; }
        }

        public string InitialDirectory
        {
            get { return _oFileDialog.InitialDirectory; }
            set { _oFileDialog.InitialDirectory = value; }
        }

        // Constructor
        public GetOpenFileDialog()
        {
            _oFileDialog = new OpenFileDialog();
        }

        // Methods

        public void GetFileName()
        {
            ptr = GetForegroundWindow();
            //WindowWrapper oWindow = new WindowWrapper(ptr);

            //if (_oFileDialog.ShowDialog(oWindow) != DialogResult.OK)
            if (_oFileDialog.ShowDialog(new Form() { TopMost = true, TopLevel = true }) != DialogResult.OK)
            {
                _oFileDialog.FileName = string.Empty;
            }
            //oWindow = null;
        } // End of GetFileName

        public void SetFocus()
        {
            SetForegroundWindow(ptr);
        }
    }
    public class GetSaveFileDialog
    {
        [DllImport("user32.dll")]
        private static extern IntPtr GetForegroundWindow();

        SaveFileDialog _oFileDialog;

        // Properties
        public string FileName
        {
            get { return _oFileDialog.FileName; }
            set { _oFileDialog.FileName = value; }
        }

        public string Filter
        {
            get { return _oFileDialog.Filter; }
            set { _oFileDialog.Filter = value; }
        }

        public string InitialDirectory
        {
            get { return _oFileDialog.InitialDirectory; }
            set { _oFileDialog.InitialDirectory = value; }
        }

        // Constructor
        public GetSaveFileDialog()
        {
            _oFileDialog = new SaveFileDialog();
        }

        // Methods

        public void GetFileName()
        {
            if (_oFileDialog.ShowDialog(new Form() { TopMost = true, TopLevel = true }) != DialogResult.OK)
            {
                _oFileDialog.FileName = string.Empty;
            }
        } // End of GetFileName
    }
}