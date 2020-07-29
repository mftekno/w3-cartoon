<cfcomponent rest="true" restpath="cartoonservice">

    <cffunction name="getlist" access="remote" returnType="string" httpmethod="GET" restpath="getlist" produces="application/json">
        <cfargument name="adi" default="" type="string" restargsource="Form">

        <cfobject name="cartoonmodel" type="component" component="addons.halityurttas.cartoons.models.cartoon">
        <cfset cartoonlist = cartoonmodel.getlist()>
        <cfset result = arrayNew(1)>
        <cfloop from="1" to="#cartoonlist.recordcount#" index="i">
            <cfset arrayAppend(result, queryGetRow(cartoonlist, i) )>
        </cfloop>

        <cfreturn replace(serializeJSON(result), "//", "")>

    </cffunction>

    <cffunction name="add" access="remote" returnType="string" httpmethod="POST" restpath="add" produces="application/json">
        <cfargument name="name" type="string" restargsource="Form">
        <cfargument name="broadcasttime" type="string" restargsource="Form">
        <cfargument name="tvchannel" type="string" restargsource="Form">

        <cfobject name="cartoonmodel" type="component" component="addons.halityurttas.cartoons.models.cartoon">
        <cfset cartoonmodel.add(argumentCollection = arguments)>

        <cfreturn "tamam">
        
    </cffunction>

</cfcomponent>