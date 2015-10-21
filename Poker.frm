Public Class frmMain

    Public Naipe(52) As String
    Public Deck(52) As String
    Public CN As Integer

    Private Sub frmMain_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        Naipe(1) = "AC"
        Naipe(2) = "AE"
        Naipe(3) = "AT"
        Naipe(4) = "AO"

        Naipe(5) = "2C"
        Naipe(6) = "2E"
        Naipe(7) = "2T"
        Naipe(8) = "2O"

        Naipe(9) = "3C"
        Naipe(10) = "3E"
        Naipe(11) = "3T"
        Naipe(12) = "3O"

        Naipe(13) = "4C"
        Naipe(14) = "4E"
        Naipe(15) = "4T"
        Naipe(16) = "4O"

        Naipe(17) = "5C"
        Naipe(18) = "5E"
        Naipe(19) = "5T"
        Naipe(20) = "5O"

        Naipe(21) = "6C"
        Naipe(22) = "6E"
        Naipe(23) = "6T"
        Naipe(24) = "6O"

        Naipe(25) = "7C"
        Naipe(26) = "7E"
        Naipe(27) = "7T"
        Naipe(28) = "7O"

        Naipe(29) = "8C"
        Naipe(30) = "8E"
        Naipe(31) = "8T"
        Naipe(32) = "8O"

        Naipe(33) = "9C"
        Naipe(34) = "9E"
        Naipe(35) = "9T"
        Naipe(36) = "9O"

        Naipe(37) = "DC"
        Naipe(38) = "DE"
        Naipe(39) = "DT"
        Naipe(40) = "DO"

        Naipe(41) = "JC"
        Naipe(42) = "JE"
        Naipe(43) = "JT"
        Naipe(44) = "JO"

        Naipe(45) = "QC"
        Naipe(46) = "QE"
        Naipe(47) = "QT"
        Naipe(48) = "QO"

        Naipe(49) = "KC"
        Naipe(50) = "KE"
        Naipe(51) = "KT"
        Naipe(52) = "KO"

        Button2.Enabled = False

    End Sub



    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        If Button2.Text = "&Deal" Then
            CN = 0
            Button2.Text = "Re-&Deal"
            Button1.Enabled = False
        Else
            CN = 5
            Button2.Text = "&Deal"
            Button2.Enabled = False
            Button3.Enabled = True
        End If

        If Label1.Visible = False Then
            TextBox1.Text = Naipe(Deck(CN + 1))
            PictureBox1.Load(Naipe(Deck(CN + 1)) & ".png")
        End If
        If Label2.Visible = False Then
            TextBox2.Text = Naipe(Deck(CN + 2))
            PictureBox2.Load(Naipe(Deck(CN + 2)) & ".png")
        End If
        If Label3.Visible = False Then
            TextBox3.Text = Naipe(Deck(CN + 3))
            PictureBox3.Load(Naipe(Deck(CN + 3)) & ".png")
        End If
        If Label4.Visible = False Then
            TextBox4.Text = Naipe(Deck(CN + 4))
            PictureBox4.Load(Naipe(Deck(CN + 4)) & ".png")
        End If
        If Label5.Visible = False Then
            TextBox5.Text = Naipe(Deck(CN + 5))
            PictureBox5.Load(Naipe(Deck(CN + 5)) & ".png")
        End If

       
    End Sub


    Function card()
        Dim CCC As Integer
        CCC = Int(Rnd() * 52) + 1
        Return CCC
    End Function




    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        If Label1.Visible Then Label1.Visible = False Else Label1.Visible = True
    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        Label2.Visible = Not Label2.Visible
    End Sub

    Private Sub PictureBox3_Click(sender As Object, e As EventArgs) Handles PictureBox3.Click
        Label3.Visible = Not Label3.Visible
    End Sub

    Private Sub PictureBox4_Click(sender As Object, e As EventArgs) Handles PictureBox4.Click
        Label4.Visible = Not Label4.Visible
    End Sub

    Private Sub PictureBox5_Click(sender As Object, e As EventArgs) Handles PictureBox5.Click
        Label5.Visible = Not Label5.Visible
    End Sub


    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        Label1.Visible = False
        Label2.Visible = False
        Label3.Visible = False
        Label4.Visible = False
        Label5.Visible = False

        PictureBox1.Load("White.png")
        PictureBox2.Load("White.png")
        PictureBox3.Load("White.png")
        PictureBox4.Load("White.png")
        PictureBox5.Load("White.png")

        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""


        'Generate Random Numbers
        Randomize(TimeOfDay.Second ^ 2)

        Dim CC As String = 0
        Dim R As Boolean = False

        For i = 1 To 52
            Deck(i) = ""
        Next

        'Fill Deck
        Deck(1) = Str(card())
        For i = 2 To 52
            R = True

            Do While R = True
                CC = Str(card())
                R = False
                For j = 1 To i
                    If Deck(j) = CC Then R = True
                Next
            Loop

            Deck(i) = CC

        Next

        Button3.Enabled = False
        Button2.Enabled = True

    End Sub



    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        End
    End Sub


    Private Sub Label5_Click(sender As Object, e As EventArgs) Handles Label5.Click

    End Sub

    Private Sub Label4_Click(sender As Object, e As EventArgs) Handles Label4.Click

    End Sub
End Class
