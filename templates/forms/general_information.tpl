<h3 class="text-center form-section">Informacion de la compañia</h3>
<div class="row">
    <div class="container">
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">
                    <span class="required"> * </span>Nombre o razon social
                </label>
                <input type="text" class="form-control" name="name" id="name" autocomplete="off"/>
                <span class="help-block"></span>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">Representante legal
                    <span class="required"> * </span>
                </label>
                <div>
                    <input type="text" class="form-control" name="legal_representative" id="legal_representative" autocomplete="off" />
                    <span class="help-block"></span>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">Giro o actividad principal
                    <span class="required"> * </span>
                </label>
                <div>
                    <input type="text" class="form-control" name="business_activity" id="business_activity" autocomplete="off" />
                    <span class="help-block"></span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
 <div class="container">
     <div class="col-md-4">
         <div class="form-group">
             <label class="control-label">Régimen de contribución
                 <span class="required"> * </span>
             </label>
             <div>
                 <select class="form-control" name="regimen_id"  id="regimen_id" autocomplete="off">
                     <option value="">-- Seleccionar --</option>
                     {foreach from=$listRegimen item=regimen}
                         <option value="{$regimen.tipoRegimenId}">{$regimen.nombreRegimen}</option>
                     {/foreach}
                 </select>
                 <span class="help-block"></span>
             </div>
         </div>
     </div>
     <div class="col-md-4">
         <div class="form-group">
             <label class="control-label">Fecha de constitución
                 <span class="required"> * </span>
             </label>
             <div>
                 <input type="text" class="form-control date-picker" name="constitution_date"  id="constitution_date" autocomplete="off" />
                 <span class="help-block"></span>
             </div>
         </div>
     </div>
     <div class="col-md-4">
         <div class="form-group">
             <label class="control-label">Empresa de nueva creación
                 <span class="required"> * </span>
             </label>
             <div class="mt-radio-inline">
                 <label class="mt-radio mt-radio-outline">
                     Si
                     <input type="radio" name="is_new_company" id="is_new_company" value="1" autocomplete="off">
                     <span></span>
                 </label>
                 <label class="mt-radio mt-radio-outline">
                     No
                     <input type="radio" name="is_new_company" id="is_new_company" value="0" autocomplete="off">
                     <span></span>
                 </label>
             </div>
             <div id="is_new_company_error"></div>
         </div>
     </div>
 </div>
</div>
<div class="row">
    <div class="container">
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">Correo electronico
                    <span class="required"> * </span>
                </label>
                <div>
                    <input type="text" class="form-control" name="leaflet_email" id="leaflet_email" autocomplete="off" />
                    <span class="help-block"></span>
                </div>
            </div>
        </div>
    </div>
</div>
<h3 class="text-center form-section">Datos de contacto</h3>
<div class="row">
    <div class="container">
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">Nombre
                    <span class="required"> * </span>
                </label>
                <div>
                    <input type="text" class="form-control" name="contact_name"  id="contact_name" autocomplete="off"/>
                    <span class="help-block"></span>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">Telefono
                    <span class="required"> * </span>
                </label>
                <div>
                    <input type="text" class="form-control" name="contact_phone"  id="contact_phone" autocomplete="off"/>
                    <span class="help-block"></span>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">Correo electronico
                    <span class="required"> * </span>
                </label>
                <div>
                    <input type="text" class="form-control" name="contact_email"  id="contact_email" autocomplete="off"/>
                    <span class="help-block"></span>
                </div>
            </div>
        </div>
    </div>
</div>
<h3 class="text-center form-section">Comentarios u observaciones</h3>
<div class="row">
    <div class="container">
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">Comentarios
                </label>
                <div>
                    <textarea class="form-control" name="general_comment"  id="general_comment"></textarea>
                </div>
            </div>
        </div>
    </div>
</div>
