Imports System.Data

Partial Class Register
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        If (txtpassword.Text.Trim <> txtpasswordagain.Text.Trim) Then
            lblmsg.Text = "Password & Confirm Password do not match"
            txtpassword.Text = ""
            txtpasswordagain.Text = ""
        Else
            If (txtpassword.Text.Trim = "" Or txtpasswordagain.Text.Trim = "" Or txtusername.Text.Trim = "") Then
                lblmsg.Text = "Please fill all the fields"
            Else
                Try
                    Dim conn As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("db").ConnectionString)
                    conn.Open()
                    Dim ds4f2 As New DataSet
                    Dim sffc4f2 As String = "select  *   from  users where username='" + txtusername.Text.Trim + "'"
                    Dim adffc4f2 As New SqlClient.SqlDataAdapter(sffc4f2, conn)
                    adffc4f2.Fill(ds4f2, "users")
                    If (ds4f2.Tables(0).Rows.Count = 0) Then
                        Try
                            Dim insert As New SqlClient.SqlCommand
                            insert.Connection = conn
                            insert.CommandType = CommandType.Text
                            insert.CommandText = "insert into users (username,password,email) values (@username,@password,@email)"
                            insert.Parameters.AddWithValue("@username", txtusername.Text.Trim)
                            insert.Parameters.AddWithValue("@password", txtpassword.Text.Trim)
                            insert.Parameters.AddWithValue("@email", txtemail.Text.Trim)
                            insert.ExecuteNonQuery()
                        Catch ex As Exception

                        End Try
                        Response.Redirect("Confirm_reg.aspx", False)
                    Else
                        lblmsg.Text = "Username register before"
                    End If
                    conn.Close()

                Catch ex As Exception

                End Try
            End If
        End If
    End Sub

End Class
