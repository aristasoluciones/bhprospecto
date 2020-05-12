var FormWizard = function () {
    return {
        //main function to initiate the module
        init: function () {

            if (!jQuery().bootstrapWizard) {
                return;
            }

            var form = $('#frm-wizard');
            var error = $('.alert-danger', form);
            var success = $('.alert-success', form);

            form.validate({
                 lang:'es',
                 doNotHideMessage: true, //this option enables to show the error/success messages on tab switch.
                 errorElement: 'span', //default input error message container
                 errorClass: 'help-block help-block-error', // default input error message class
                 focusInvalid: false, // do not focus the last invalid input
                 rules: {
                     //account
                     name: {
                         required: true
                     },
                     legal_representative: {
                         required: true
                     },
                     business_activity: {
                         required: true,
                     },
                     regimen_id: {
                         required: true,
                     },
                     constitution_date: {
                        required: true,
                     },
                     leaflet_email:{
                         required: true,
                         email: true
                     },
                     contact_name: {
                         required: true,
                     },
                     contact_phone: {
                         required: true
                     },
                     contact_email: {
                         required: true,
                         email: true
                     },
                     is_new_company: {
                         required: true
                     },
                     sale_amount: {
                         required: true
                     },
                     number_account_bank: {
                         required: true
                     },
                     //payment
                     invoice_per_month: {
                         digits: true,
                         required: true
                     },
                     deposit_per_month: {
                         digits: true,
                         required: true
                     },
                     transfer_per_month: {
                         digits: true,
                         required: true,
                     },
                     expense_per_month: {
                         digits: true,
                         required: true
                     },
                     have_payroll: {
                         required: true
                     },
                     required_formulation_financial_state: {
                         required: true
                     },
                     required_formulation_specific_report: {
                         required: true
                     },
                     required_meeting: {
                         required: true
                     },
                     periodic_check_fiscal_mailbox: {
                        required: true,
                     },
                     specific_help_tax_obligation: {
                         required: true
                     },
                     required_specific_transact_tax: {
                         required: true
                     },
                     expectation: {
                         required: true
                     },
                     other_service: {
                         required: true
                     },
                     'payment[]': {
                         required: true,
                         minlength: 1
                     }
                 },
                 errorPlacement: function (error, element) { // render error placement for each input type
                     if (element.attr("type") == "radio") { // for uniform radio buttons, insert the after the given container
                         error.insertAfter("#"+element.attr("name")+"_error");
                     } else {
                         error.insertAfter(element); // for other inputs, just perform default behavior
                     }
                 },
                 invalidHandler: function (event, validator) { //display error alert on form submit
                     toastr['error']('Campos requeridos',"ERROR");
                     App.scrollTo(error, -200);
                 },

                 highlight: function (element) { // hightlight error inputs
                     $(element).closest('.form-group').removeClass('has-success').addClass('has-error'); // set error class to the control group
                 },

                 unhighlight: function (element) { // revert the change done by hightlight
                     $(element)
                         .closest('.form-group').removeClass('has-error'); // set error class to the control group
                 },

                 success: function (label) {
                     if (label.attr("for") == "is_new_company" || label.attr("for") == "payment[]") { // for checkboxes and radio buttons, no need to show OK icon
                         label
                             .closest('.form-group').removeClass('has-error').addClass('has-success');
                         label.remove(); // remove error label here
                     } else { // display success icon for other inputs
                         label
                         .addClass('valid') // mark the current input as valid and display OK icon
                         .closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                     }
                 },

                 submitHandler: function (form) {
                     var formData =  new FormData(form);
                     formData.set('type','save_new_leaflet');
                     $.ajax({
                         url: WEB_ROOT+"/ajax/leaflet.php",
                         method: 'POST',
                         data: formData,
                         contentType: false,
                         processData: false,
                         dataType: 'json',
                         success: function (response) {
                             toastr[response.status ? 'success' : 'error'](response.message);
                             $('#frm-wizard').find("a[href*='tab1']").trigger('click');
                             response.status && form.reset();
                         }
                     })
                 }

             });
            var displayConfirm = function() {
                $('#tab4 .form-control-static', form).each(function(){
                    var input = $('[name="'+$(this).attr("data-display")+'"]', form);
                    if (input.is(":radio")) {
                        input = $('[name="'+$(this).attr("data-display")+'"]:checked', form);
                    }
                    if (input.is(":text") || input.is("textarea")) {
                        $(this).html(input.val());
                    } else if (input.is("select")) {
                        $(this).html(input.find('option:selected').text());
                    } else if (input.is(":radio") && input.is(":checked")) {
                        $(this).html(input.attr("data-title"));
                    } else if ($(this).attr("data-display") == 'payment[]') {
                        var payment = [];
                        $('[name="payment[]"]:checked', form).each(function(){
                            payment.push($(this).attr('data-title'));
                        });
                        $(this).html(payment.join("<br>"));
                    }
                });
            }
            var handleTitle = function(tab, navigation, index) {
                var total = navigation.find('li').length;
                var forms = navigation.find('form').length;
                var current = index + 1;
                // set wizard title
                $('.step-title', $('#frm-wizard')).text('Step ' + (index + 1) + ' of ' + total);
                // set done steps
                jQuery('li', $('#frm-wizard')).removeClass("done");
                var li_list = navigation.find('li');
                for (var i = 0; i < index; i++) {
                    jQuery(li_list[i]).addClass("done");
                }

                if (current == 1) {
                    $('#frm-wizard').find('.button-previous').hide();
                } else {
                    $('#frm-wizard').find('.button-previous').show();
                }

                if (current >= total) {
                    $('#frm-wizard').find('.button-next').hide();
                    $('#frm-wizard').find('.button-submit').show();
                } else {
                    $('#frm-wizard').find('.button-next').show();
                    $('#frm-wizard').find('.button-submit').hide();
                }
                App.scrollTo($('.page-title'));
            }

            // default form wizard
            $('#frm-wizard').bootstrapWizard({
                'nextSelector': '.button-next',
                'previousSelector': '.button-previous',
                onTabClick: function (tab, navigation, index, clickedIndex) {
                    success.hide();
                    error.hide();
                    if (form.valid() == false) {
                        return false;
                    }
                    handleTitle(tab, navigation, clickedIndex);
                },
                onNext: function (tab, navigation, index) {
                    success.hide();
                    error.hide();
                    if(!form.valid())
                        return false
                    handleTitle(tab, navigation, index);
                },
                onPrevious: function (tab, navigation, index) {
                    success.hide();
                    error.hide();
                    handleTitle(tab, navigation, index);
                },
                onTabShow: function (tab, navigation, index) {
                    var total = navigation.find('li').length;
                    var current = index + 1;
                    var $percent = (current / total) * 100;
                    $('#frm-wizard').find('.progress-bar').css({
                        width: $percent + '%'
                    });
                }
            });
            $('#frm-wizard').find('.button-previous').hide();
            $('#frm-wizard .button-submit').click(function () {
                $('#frm-wizard').submit();
            }).hide();

            //apply validation on select2 dropdown value change, this only needed for chosen dropdown integration.
            /* $('#country_list', form).change(function () {
                 form.validate().element($(this)); //revalidate the chosen dropdown value and show error or success message for the input
             });*/
        }

    };

}();

jQuery(document).ready(function() {
    FormWizard.init(toastr);
});