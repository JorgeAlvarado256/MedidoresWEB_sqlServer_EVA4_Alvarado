<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MedidorWeb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header bg-black text-white">
                    <h3>Agregar Usuario</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="rutTxt">Rut</label>
                        <asp:TextBox ID="rutTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="nombreTxt">Nombre</label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="correoTxt">Correo</label>
                        <asp:TextBox ID="correoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="contraseniaTxt">Contraseña</label>
                        <asp:TextBox ID="contraseniaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    
                    <asp:Button runat="server" CssClass="btn btn-secondary"  ID="ingresarBtn" Text="Ingresar" OnClick="ingresarBtn_Click" />
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
