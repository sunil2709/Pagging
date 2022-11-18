

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Pagging_In_Asp.net_Grid.WebForm2" %>



<html>
<head>
    <title>sdsd</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/fixedcolumns/3.2.2/js/dataTables.fixedColumns.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jq-2.2.4/dt-1.10.13/fc-3.2.2/fh-3.1.2/r-2.1.0/sc-1.4.2/datatables.min.css" />

   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<asp:GridView ID="GridView1"  runat="server" >
                
            </asp:GridView>--%>


            <asp:GridView ID="GridView2"  runat="server"  >
                
            </asp:GridView>
        </div>
    </form>
</body>
</html>
 <script type="text/javascript">
     $(document).ready(function () {
         $('#GridView2').DataTable({
             scrollY: "400px",
             scrollX: true,
             scrollCollapse: false,
             paging: true,
             fixedColumns: {
                 leftColumns: 1,
             }
         });
     });
 </script>