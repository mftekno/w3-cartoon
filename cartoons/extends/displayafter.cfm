<cfif isDefined("attributes.event") and attributes.event eq "add">
    <script type="text/javascript">
        document.getElementById("broadcasttime").value = "16:00";
    </script>
</cfif>
Güle güle <cfoutput>#session.ep.name# #session.ep.surname#</cfoutput>