<cfparam name="attributes.adi" default="">

<cfobject name="cartoonmodel" type="component" component="addons.halityurttas.cartoons.models.cartoon">
<cfset cartoondata = cartoonmodel.getlist(attributes.adi)>

<cf_box title="Çizgi filmler">
    <cfform name="search_form">
    <cf_box_search>
            <div class="form-group">
                <div class="input-group x-10">
                    <input type="text" name="adi" id="adi" value="<cfoutput>#attributes.adi#</cfoutput>" placeholder="Adı">
                </div>
            </div>
            <div class="form-group" id="item-">
                <div class="col col-12">
                    <cf_wrk_search_button>
                </div>
            </div>
        </cf_box_search>
    </cfform>
    <cf_grid_list>
        <thead>
            <tr>
                <th>ID</th>
                <th>Adı</th>
                <th>Yayın Saati</th>
                <th>Yayın Kanalı</th>
                <th>#</th>
            </tr>
        </thead>
        <tbody>
        <cfoutput query="cartoondata">
            <tr>
                <td>#CartoonId#</td>
                <td>#Name#</td>
                <td>#BroadcastTime#</td>
                <td>#TVChannel#</td>
                <td>
                    <a href="/index.cfm?fuseaction=sales.cartoons&event=upd&id=#CartoonId#"><i class="fa fa-pencil"></i></a>
                </td>
            </tr>
        </cfoutput>
        </tbody>
    </cf_grid_list>
</cf_box>
