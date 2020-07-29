<cfif isDefined("attributes.event") and attributes.event eq "add">
    <cfif isDefined("attributes.broadcasttime") and attributes.broadcasttime eq "12:00">
        <script type="text/javascript">
            alert("Bu kadar erken saatte çizgi film izlemeyin!");
        </script>
        <cfabort>
    </cfif>
</cfif>