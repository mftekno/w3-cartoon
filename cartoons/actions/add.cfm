<cfparam name="attributes.name" default="">
<cfparam name="attributes.broadcasttime" default="">
<cfparam name="attributes.tvchannel" default="">

<cfif len(attributes.name) eq 0>
    <script type="text/javascript">
        alert("Cizgi filim adi bos olamaz");
        document.querySelector(".login_bg").style.display = "none";
        $("#wrk_submit_button").removeAttr("disabled").val("Kaydet");

    </script>
    <cfabort>
</cfif>

<cfobject name="cartoonmodel" type="component" component="addons.halityurttas.cartoons.models.cartoon">
<cfset cartoonmodel.add( attributes.name, attributes.broadcasttime, attributes.tvchannel )>

<script type="text/javascript">
    document.location.href = "/index.cfm?fuseaction=sales.cartoons";
</script>