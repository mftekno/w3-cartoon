<cfcomponent>

    <cfset dsn = application.systemParam.systemParam().dsn>

    <cffunction name="getlist" access="public">
        <cfargument name="adi" defult="">

        <cfquery name="query_list" datasource="#dsn#">
            SELECT * FROM CARTOONS WHERE [NAME] LIKE <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='%#arguments.adi#%'>
        </cfquery>

        <cfreturn query_list>
    </cffunction>

    <cffunction name="add" access="public">
        <cfargument name="name">
        <cfargument name="broadcasttime" default="">
        <cfargument name="tvchannel" default="">

        <cfquery name="query_add" datasource="#dsn#">
            INSERT INTO [CARTOONS]
           (
                [Name]
                ,[BroadcastTime]
                ,[TVChannel]
           )
            VALUES
           (
               <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.name#'>
                ,<cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.broadcasttime#' null="#len(arguments.broadcasttime)?'no':'yes'#">
                ,<cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.tvchannel#' null="#len(arguments.tvchannel)?'no':'yes'#">
           )
        </cfquery>
    </cffunction>

    <cffunction name="getrow" access="public">
        <cfargument name="id">

        <cfquery name="query_row" datasource="#dsn#">
            SELECT * FROM CARTOONS WHERE CartoonId = <cfqueryparam cfsqltype='CF_SQL_INTEGER' value='#arguments.id#'>
        </cfquery>

        <cfreturn query_row>
    </cffunction>

    <cffunction name="upd" access="public">
        <cfargument name="id">
        <cfargument name="name">
        <cfargument name="broadcasttime" default="">
        <cfargument name="tvchannel" default="">

        <cfquery name="query_upd" datasource="#dsn#">
            UPDATE [CARTOONS] SET 
            [Name] = <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.name#'>,
            [BroadcastTime] = <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.broadcasttime#' null="#len(arguments.broadcasttime)?'no':'yes'#">,
            [TVChannel] = <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.tvchannel#' null="#len(arguments.tvchannel)?'no':'yes'#">
            WHERE CartoonId = <cfqueryparam cfsqltype='CF_SQL_INTEGER' value='#arguments.id#'>
        </cfquery>
    </cffunction>

</cfcomponent>