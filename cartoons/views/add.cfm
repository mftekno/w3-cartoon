<cf_box title="Yeni Çizgi Film">
    <cfform name="form1" method="post">
        <div class="col col-12 uniqueRow">
            <div class="row formContent">
                <div class="row" type="row">
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="1" sort="true">
                        <div class="form-group" id="item-name">
                            <label class="col col-4 col-xs-12">Çizgi Film</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="name" id="name">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="2" sort="true">
                        <div class="form-group" id="item-broadcasttime">
                            <label class="col col-4 col-xs-12">Yayın Saati</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="broadcasttime" id="broadcasttime">
                            </div>
                        </div>
                    </div>
                    <div class="col col-3 col-md-4 col-sm-6 col-xs-12" type="column" index="3" sort="true">
                        <div class="form-group" id="item-tvchannel">
                            <label class="col col-4 col-xs-12">Yayın Kanalı</label>
                            <div class="col col-8 col-xs-12">
                                <input type="text" name="tvchannel" id="tvchannel">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <cf_box_footer>
            <cf_workcube_buttons is_upd='0' add_function="kontrol()">
        </cf_box_footer>
    </cfform>
</cf_box>
<!---
<cf_box title="ajax page load" box_page="http://devcatalyst/index.cfm?fuseaction=myhome.emptypopup_list_apps_ajaxapps&ajax=1&ajax_box_page=1&isAjax=1" refresh="1">
<div id="xyz"></div>
</cf_box>
--->
<script type="text/javascript">
    function kontrol() {
        // validation
        if ($("#name").val() == "") {
            alert("Çizgi film adı boş olamaz");
            $("#name").focus();
            return false;
        }

        // business
        /*
        if ($("#broadcasttime").val() == "") {
            $("#broadcasttime").val("14:00");
            return false;
        }
        */

        return true;
    }

    $(document).ready(function () {
        let d = new Date();
        if (d.getDay() == 6 || d.getDay() == 5) {
            alert("Bu gün hafta sonu. Bu işlem yapılamaz!");
            $("#wrk_submit_button").attr("disabled", "disabled");
            //AjaxPageLoad("http://devcatalyst/index.cfm?fuseaction=myhome.emptypopup_list_apps_ajaxapps&ajax=1&ajax_box_page=1&isAjax=1", "xyz");
        }
    });
</script>
