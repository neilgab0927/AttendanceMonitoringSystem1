using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceMonitoringSystem
{
    protected void buttonSendOnClick(object sender, EventArgs e)
    {
        try
        {
            //Create the request and send data to Ozeki NG SMS Gateway Server by
            // HTTP connection
            HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create(createdURL);

            //Get response from Ozeki NG SMS Gateway Server and read the answer
            HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
            System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
            string responseString = respStreamReader.ReadToEnd();
            respStreamReader.Close();
            myResp.Close();

            //inform the user
            textboxError.Text = responseString;
            textboxError.Visible = true;
        }
        catch (Exception)
        {
            //if sending request or getting response is not successful, Ozeki NG - SMS Gateway Server may not be running
            textboxError.Text = "Ozeki NG SMS Gateway Server is not running!";
            textboxError.Visible = true;
        }
    }
}
