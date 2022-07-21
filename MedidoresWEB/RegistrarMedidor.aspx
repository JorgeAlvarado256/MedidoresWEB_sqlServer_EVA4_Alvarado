<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="RegistrarMedidor.aspx.cs" Inherits="MedidorWeb.RegistrarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

     <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header bg-black text-white">
                    <h3>Agregar Medidor</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="numero_serieTxt">N° de serie</label>
                        <asp:TextBox ID="numero_serieTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="numero_serieTxt">Tipo de Medidor</label>
                        <asp:TextBox ID="tipo_medidorTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                <div class="form_group">
                        <label for="rutDDL">RUT</label>
                        <asp:DropDownList ID="rutDDL" runat="server"></asp:DropDownList>
                    </div>
                    <asp:Button runat="server" CssClass="btn btn-secondary"  OnClick="ingresarBtn_Click" ID="ingresarBtn" Text="Ingresar" />
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
