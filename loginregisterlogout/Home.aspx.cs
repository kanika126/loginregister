﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginregisterlogout
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                loginPlaceHolder.Visible = true;
                logoutPlaceHolder.Visible = false;
                logoutPlaceHolder2.Visible = false;
            }
            else
            {
                loginPlaceHolder.Visible = false;
                logoutPlaceHolder.Visible = true;
                logoutPlaceHolder2.Visible = true;
            }
        }
    }
}