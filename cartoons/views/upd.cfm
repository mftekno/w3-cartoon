<cfobject name="cartoonmodel" type="component" component="addons.halityurttas.cartoons.models.cartoon">
<cfset cartoondata = cartoonmodel.getrow(attributes.id)>

<cf_box title="Çizgi Film">
    <cfform name="form1" method="post">
        <cfoutput>
        <input type="hidden" name="id" value="#attributes.id#">
        <div class="col col-12 uniqueRow">
            <div class="row formContent">
                <div class="row" type="row">
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="1" sort="true">
                        <div class="form-group" id="item-name">
                            <label class="col col-4 col-xs-12">Çizgi Film</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="name" id="name" value="#cartoondata.name#">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="item-broadcasttime">
                            <label class="col col-4 col-xs-12">Yayın Saati</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="broadcasttime" id="broadcasttime" value="#cartoondata.broadcasttime#">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="3" sort="true">
                        <div class="form-group" id="item-tvchannel">
                            <label class="col col-4 col-xs-12">Yayın Kanalı</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="tvchannel" id="tvchannel" value="#cartoondata.tvchannel#">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <cf_box_footer>
            <cf_workcube_buttons is_upd='1' add_function="kontrol()">
        </cf_box_footer>
        </cfoutput>
    </cfform>
</cf_box>
<script type="text/javascript">
    function kontrol() {
        return true;
    }
</script>