<div class="row">
    <div class="container">
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">¿Requiere la formulación de Estados financieros?
                </label>
                <div class="mt-radio-list">
                    <label class="mt-radio mt-radio-outline">
                        Si
                        <input type="radio" name="required_formulation_financial_state" id="required_formulation_financial_state" value="1">
                        <span></span>
                    </label>
                    <label class="mt-radio mt-radio-outline">
                        No
                        <input type="radio" name="required_formulation_financial_state" id="required_formulation_financial_state" value="0">
                        <span></span>
                    </label>
                    <span id="required_formulation_financial_state_error"></span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">¿Requiere la formulación de algún reporte en específico:?
                </label>
                <div class="mt-radio-list">
                    <label class="mt-radio mt-radio-outline">
                        Si
                        <input type="radio" name="required_formulation_specific_report" id="required_formulation_specific_report" value="1">
                        <span></span>
                    </label>
                    <label class="mt-radio mt-radio-outline">
                        No
                        <input type="radio" name="required_formulation_specific_report" id="required_formulation_specific_report" value="0">
                        <span></span>
                    </label>
                    <span id="required_formulation_specific_report_error"></span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">¿Requiere sostener juntas con el personal del despacho?
                </label>
                <div class="mt-radio-list">
                    <label class="mt-radio mt-radio-outline">
                        Si
                        <input type="radio" name="required_meeting" id="required_meeting" value="1">
                        <span></span>
                    </label>
                    <label class="mt-radio mt-radio-outline">
                        No
                        <input type="radio" name="required_meeting" id="required_meeting" value="0">
                        <span></span>
                    </label>
                    <span class="required_meeting_error"></span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">Comentarios u observaciones
                </label>
                <div>
                    <textarea class="form-control" name="financial_comment" id="financial_comment"></textarea>
                </div>
            </div>
        </div>
    </div>
</div>