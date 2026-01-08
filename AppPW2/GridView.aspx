<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="AppPW2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-primary text-white">
            <h3 class="card-title mb-0">Listado de Estudiantes (Ejemplo GridView)</h3>
        </div>
        <div class="card-body">
            <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-hover table-bordered table-striped" 
                AutoGenerateColumns="False" 
                GridLines="None" 
                Width="100%">
                
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-Width="50px" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre Completo" />
                    <asp:BoundField DataField="Carrera" HeaderText="Carrera" />
                    <asp:BoundField DataField="Promedio" HeaderText="Promedio" DataFormatString="{0:F1}" />
                </Columns>

                <HeaderStyle CssClass="table-dark" />
            </asp:GridView>
        </div>
    </div>
</div>
</asp:Content>
