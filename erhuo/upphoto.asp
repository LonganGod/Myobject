<%
    Set Upload = Server.CreateObject("Persits.Upload.1")
    Upload.SetMaxSize 2*1024*1024,False
    Upload.OverwriteFiles=True
    Upload.Save "F:\myObject\erhuo\images\userphoto"
%>
<script>
    window.close();
</script>