using Arma2Net.AddInProxy;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace M3DEditor
{
    [AddIn("M3DE")]

    public class M3DE : MethodAddIn
    {
        public string OpenFileDialog()
        {
            string filename = "";
            GetOpenFileDialog oGetFileName = new GetOpenFileDialog();
            
            oGetFileName.Filter = "SQF Files|*.sqf|Text Files|*.txt";
            oGetFileName.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            Thread threadGetFile = new Thread(new ThreadStart(oGetFileName.GetFileName));
            threadGetFile.SetApartmentState(ApartmentState.STA);
            try
            {
                threadGetFile.Start();
                while (!threadGetFile.IsAlive) {
                    oGetFileName.SetFocus();
                    Thread.Sleep(1);
                };
                Thread.Sleep(1);
                threadGetFile.Join();
                filename = oGetFileName.FileName;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            threadGetFile = null;
            oGetFileName = null;
            return filename;
        }
        public string SaveFileDialog()
        {
            string filename = "";
            GetSaveFileDialog oGetFileName = new GetSaveFileDialog();
            oGetFileName.Filter = "SQF Files|*.sqf|Text Files|*.txt";
            oGetFileName.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            Thread threadGetFile = new Thread(new ThreadStart(oGetFileName.GetFileName));
            threadGetFile.SetApartmentState(ApartmentState.STA);
            try
            {
                threadGetFile.Start();
                while (!threadGetFile.IsAlive) ;
                Thread.Sleep(1);
                threadGetFile.Join();
                filename = oGetFileName.FileName;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            threadGetFile = null;
            oGetFileName = null;
            return filename;
        }

        public string ReadFile(string filename, string part)
        {
            int chunksize = 500;
            int offset = chunksize * Convert.ToInt16(part);
            if (!File.Exists(filename))
            {
                return "";
            }
            byte[] source = File.ReadAllBytes(filename);
            int size = source.Length;
            if (offset >= size) {
                return "";
            }
            if ((offset + chunksize) >= size) {
                chunksize = size - offset;
            }
            byte[] chunk = new byte[chunksize];
            Array.Copy(source, offset, chunk, 0, chunksize);
            return Encoding.Default.GetString(chunk);
        }

        public string SaveFile(string data)
        {
            IList<object> list;

            if (!Format.TrySqfAsCollection(data, out list))
            {
                MessageBox.Show("SQF parse error.");
                return "ERROR";
            }

            try
            {
                StringBuilder filename = new StringBuilder();
                StringBuilder content = new StringBuilder();
                bool header = true;
                foreach (object s in list)
                {
                    char c = (char)Convert.ToInt16(s.ToString());
                    if (header)
                    {
                        if (Convert.ToInt16(s.ToString()) == 10)
                        {
                            header = false;
                            continue;
                        }
                        filename.Append(c);
                    }
                    else
                    {
                        content.Append(c);
                    }
                }
                if (File.Exists(filename.ToString()))
                {
                    File.Delete(filename.ToString());
                }
                StreamWriter file = new StreamWriter(filename.ToString());
                file.Write(content.ToString());
                file.Close();
                return "SUCCESS";
            }
            catch
            {
                MessageBox.Show("There has been an error saving the file.");
                return "ERROR";
            }
        }
        public string donateBtn()
        {
            Process.Start("https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=maca134%40googlemail%2ecom&lc=GB&item_name=maca134&no_note=0&currency_code=GBP&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHostedGuest");
            return "";
        }
    }
}
