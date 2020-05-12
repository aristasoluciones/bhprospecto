<!-- BEGIN CORE PLUGINS -->
<script src="{$WEB_ROOT}/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>

<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="{$WEB_ROOT}/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/moment.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-datepicker/locales/bootstrap-datepicker.es.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/clockface/js/clockface.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/ladda/spin.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/ladda/ladda.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-wizard/jquery.bootstrap.wizard.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/jquery-validation/js/localization/messages_es.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/plugins/bootstrap-toastr/toastr.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->

{if $page !== 'leaflet' && $page !== 'login'}
    <script src="{$WEB_ROOT}/assets/global/scripts/datatable.js" type="text/javascript"></script>
    <script src="{$WEB_ROOT}/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
    <script src="{$WEB_ROOT}/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
{/if}
<script src="{$WEB_ROOT}/assets/global/scripts/jquery-redirect.js?{$time}" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="{$WEB_ROOT}/assets/global/scripts/app.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/pages/scripts/ui-buttons.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/pages/scripts/component-date-time-pickers.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
>
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="{$WEB_ROOT}/assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/module/scripts/functions.js?{$time}" type="text/javascript"></script>
<script src="{$WEB_ROOT}/assets/global/scripts/custom-form-wizard.min.js" type="text/javascript"></script>

<script src="{$WEB_ROOT}/assets/module/scripts/{$page}.js?{$time}" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
