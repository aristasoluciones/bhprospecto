<div class="row">
    <div class="container">
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">¿Cuenta usted con nómina?
                </label>
                <div class="mt-radio-list">
                    <label class="mt-radio mt-radio-outline">
                        Si
                        <input type="radio" name="have_payroll" id="have_payroll" value="1">
                        <span></span>
                    </label>
                    <label class="mt-radio mt-radio-outline">
                        No
                        <input type="radio" name="have_payroll" id="have_payroll" value="0">
                        <span></span>
                    </label>
                    <span class="help-block" id="have_payroll_error">Si su respuesta es NO pasar al apartado de Informacion financiera </span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">¿Cuál es el número de empleados que tiene?
                </label>
                <div class="input-small">
                    <input type="text" class="form-control" name="number_employee" id="number_employee" />
                    <span class="help-block"></span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">¿Requieren apoyo en la elaboración de los recibos de nómina?
                </label>
                <div class="mt-radio-list">
                    <label class="mt-radio mt-radio-outline">
                        Si
                        <input type="radio" name="required_help_make_receipt_payroll" id="required_help_make_receipt_payroll" value="1">
                        <span></span>
                    </label>
                    <label class="mt-radio mt-radio-outline">
                        No
                        <input type="radio" name="required_help_make_receipt_payroll" id="required_help_make_receipt_payroll" value="0">
                        <span></span>
                    </label>
                    <span class="help-block"></span>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">Comentarios u observaciones
                </label>
                <div>
                    <textarea class="form-control" name="payroll_comment" id="payroll_comment"></textarea>
                </div>
            </div>
        </div>
    </div>
</div>