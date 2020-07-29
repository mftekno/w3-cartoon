<cfscript>
	if(attributes.tabMenuController eq 0)
	{
		WOStruct = StructNew();
		
		WOStruct['#attributes.fuseaction#'] = structNew();	
		
		WOStruct['#attributes.fuseaction#']['default'] = 'list';
		if(not isdefined('attributes.event'))
			attributes.event = WOStruct['#attributes.fuseaction#']['default'];
	
		WOStruct['#attributes.fuseaction#']['list'] = structNew();
		WOStruct['#attributes.fuseaction#']['list']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['list']['fuseaction'] = 'sales.cartoons';
		WOStruct['#attributes.fuseaction#']['list']['addButton'] = 'sales.cartoons&event=add';
		WOStruct['#attributes.fuseaction#']['list']['filePath'] = '/AddOns/halityurttas/cartoons/views/list.cfm';
		WOStruct['#attributes.fuseaction#']['list']['addButton'] = 1;

		WOStruct['#attributes.fuseaction#']['add'] = structNew();
		WOStruct['#attributes.fuseaction#']['add']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['add']['fuseaction'] = 'sales.cartoons&event=add';
		WOStruct['#attributes.fuseaction#']['add']['filePath'] = '/AddOns/halityurttas/cartoons/views/add.cfm';
		WOStruct['#attributes.fuseaction#']['add']['queryPath'] = '/AddOns/halityurttas/cartoons/actions/add.cfm';
		WOStruct['#attributes.fuseaction#']['add']['nextEvent'] = WOStruct['#attributes.fuseaction#']['default'];

		if (isDefined("attributes.id")) {

		WOStruct['#attributes.fuseaction#']['upd'] = structNew();
		WOStruct['#attributes.fuseaction#']['upd']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['upd']['fuseaction'] = 'sales.cartoons&event=upd';
		WOStruct['#attributes.fuseaction#']['upd']['filePath'] = '/AddOns/halityurttas/cartoons/views/upd.cfm';
		WOStruct['#attributes.fuseaction#']['upd']['queryPath'] = '/AddOns/halityurttas/cartoons/actions/upd.cfm';
		WOStruct['#attributes.fuseaction#']['upd']['nextEvent'] = WOStruct['#attributes.fuseaction#']['default'];

		}
		
	}
	
</cfscript>
