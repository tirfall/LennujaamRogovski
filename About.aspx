<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="LennujaamRogovski.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Lend ja lennuk tabel</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="lendId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="lendId" HeaderText="lendId" InsertVisible="False" ReadOnly="True" SortExpression="lendId" />
                    <asp:BoundField DataField="lennunumber" HeaderText="lennunumber" SortExpression="lennunumber" />
                    <asp:BoundField DataField="reisijatearv" HeaderText="reisijatearv" SortExpression="reisijatearv" />
                    <asp:BoundField DataField="valjumisaeg" HeaderText="valjumisaeg" SortExpression="valjumisaeg" />
                    <asp:BoundField DataField="valjumiskoht" HeaderText="valjumiskoht" SortExpression="valjumiskoht" />
                    <asp:BoundField DataField="sihtkoht" HeaderText="sihtkoht" SortExpression="sihtkoht" />
                    <asp:BoundField DataField="lennuk_Id" HeaderText="lennuk_Id" SortExpression="lennuk_Id" />
                    <asp:BoundField DataField="kohtadearv" HeaderText="kohtadearv" SortExpression="kohtadearv" />
                    <asp:BoundField DataField="mudel" HeaderText="mudel" SortExpression="mudel" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekoolConnectionString %>" DeleteCommand="DELETE FROM [lendSet] WHERE [lendId] = @lendId" InsertCommand="INSERT INTO [lendSet] ([lennunumber], [reisijatearv], [valjumisaeg], [valjumiskoht], [sihtkoht], [lennuk_Id]) VALUES (@lennunumber, @reisijatearv, @valjumisaeg, @valjumiskoht, @sihtkoht, @lennuk_Id)" SelectCommand="SELECT lendSet.lendId, lendSet.lennunumber, lendSet.reisijatearv, lendSet.valjumisaeg, lendSet.valjumiskoht, lendSet.sihtkoht, lendSet.lennuk_Id, lennukSet.kohtadearv, lennukSet.mudel FROM lendSet INNER JOIN lennukSet ON lendSet.lennuk_Id = lennukSet.Id" UpdateCommand="UPDATE [lendSet] SET [lennunumber] = @lennunumber, [reisijatearv] = @reisijatearv, [valjumisaeg] = @valjumisaeg, [valjumiskoht] = @valjumiskoht, [sihtkoht] = @sihtkoht, [lennuk_Id] = @lennuk_Id WHERE [lendId] = @lendId">
                <DeleteParameters>
                    <asp:Parameter Name="lendId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="lennunumber" Type="String" />
                    <asp:Parameter Name="reisijatearv" Type="String" />
                    <asp:Parameter Name="valjumisaeg" Type="String" />
                    <asp:Parameter Name="valjumiskoht" Type="String" />
                    <asp:Parameter Name="sihtkoht" Type="String" />
                    <asp:Parameter Name="lennuk_Id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="lennunumber" Type="String" />
                    <asp:Parameter Name="reisijatearv" Type="String" />
                    <asp:Parameter Name="valjumisaeg" Type="String" />
                    <asp:Parameter Name="valjumiskoht" Type="String" />
                    <asp:Parameter Name="sihtkoht" Type="String" />
                    <asp:Parameter Name="lennuk_Id" Type="Int32" />
                    <asp:Parameter Name="lendId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </p>
    </main>
</asp:Content>
