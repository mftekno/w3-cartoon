<cfparam name="attributes.id" default="">
<cfparam name="attributes.name" default="">
<cfparam name="attributes.broadcasttime" default="">
<cfparam name="attributes.tvchannel" default="">

<cfif len(attributes.id) eq 0>
    <cfabort>
</cfif>
<cfif len(attributes.name) eq 0>
    <script type="text/javascript">
        alert("Çizgi filim adı boş olamaz");
    </script>
    <cfabort>
</cfif>

<cfobject name="cartoonmodel" type="component" component="addons.halityurttas.cartoons.models.cartoon">
<cfset cartoonmodel.upd( attributes.id, attributes.name, attributes.broadcasttime, attributes.tvchannel )>

<script type="text/javascript">
    document.location.href = "/index.cfm?fuseaction=sales.cartoons";
</script>