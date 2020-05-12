<div class="row">
    <div class="container">
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">¿Requiere revisión periódica del Buzón Fiscal?
                </label>
                <div class="mt-radio-list">
                    <label class="mt-radio mt-radio-outline">
                        Si
                        <input type="radio" name="periodic_check_fiscal_mailbox" id="periodic_check_fiscal_mailbox" value="1">
                        <span></span>
                    </label>
                    <label class="mt-radio mt-radio-outline">
                        No
                        <input type="radio" name="periodic_check_fiscal_mailbox" id="periodic_check_fiscal_mailbox" value="0">
                        <span></span>
                    </label>
                    <span id="periodic_check_fiscal_mailbox_error"></span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">¿Requiere de ayuda con alguna obligación fiscal especifica?
                </label>
                <div>
                    <textarea class="form-control" name="specific_help_tax_obligation" id="specific_help_tax_obligation"></textarea>
                    <span class="help-block"></span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">¿Requiere de algún trámite  fiscal específico?
                </label>
                <div>
                    <textarea class="form-control" name="specific_transact_tax" id="specific_transact_tax"></textarea>
                    <span class="help-block"></span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">Comentarios u observaciones
                </label>
                <div>
                    <textarea class="form-control" name="administrative_comment" id="administrative_comment"></textarea>
                </div>
            </div>
        </div>
    </div>
</div>