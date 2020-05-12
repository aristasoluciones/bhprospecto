<?php
include_once('../init.php');
include_once('../config.php');
include_once(DOC_ROOT.'/libraries.php');

switch ($_POST['type']){
    case 'save_new_leaflet':
        $leaflet->setName($_POST['name']);
        $leaflet->setLegalRepresentative($_POST['legal_representative']);
        $leaflet->setBusinessActivity($_POST['business_activity']);
        $leaflet->setRegimenId($_POST['regimen_id']);
        $leaflet->setConstitutionDate($_POST['constitution_date']);
        $leaflet->setIsNewCompany($_POST['is_new_company']);
        $leaflet->setLeafletEmail($_POST['leaflet_email']);
        $leaflet->setContactName($_POST['contact_name']);
        $leaflet->setContactPhone($_POST['contact_phone']);
        $leaflet->setContactEmail($_POST['contact_email']);
        $leaflet->setGeneralComment($_POST['general_comment']);

        $leaflet->setSaleAmountPerMonth($_POST['sale_amount_per_month']);
        $leaflet->setNumberAccountBank($_POST['number_account_bank']);
        $leaflet->setInvoicePerMonth($_POST['invoice_per_month']);
        $leaflet->setDepositPerMonth($_POST['deposit_per_month']);
        $leaflet->setTransferPerMonth($_POST['transfer_per_month']);
        $leaflet->setExpensePerMonth($_POST['expense_per_month']);
        $leaflet->setAccountComment($_POST['account_comment']);

        $leaflet->setHavePayroll($_POST['have_payroll']);
        $leaflet->setNumberEmployee($_POST['number_employee']);
        $leaflet->setRequiredHelpMakeReceiptPayroll($_POST['required_help_make_receipt_payroll']);
        $leaflet->setPayrollComment($_POST['payroll_comment']);

        $leaflet->setRequiredFormulationFinancialState($_POST['required_formulation_financial_state']);
        $leaflet->setRequiredFormulationSpecificReport($_POST['required_formulation_specific_report']);
        $leaflet->setRequiredMeeting($_POST['required_meeting']);
        $leaflet->setFinancialComment($_POST['financial_comment']);

        $leaflet->setPeriodicCheckFiscalMailbox($_POST['periodic_check_fiscal_mailbox']);
        $leaflet->setSpecificHelpTaxObligation($_POST['specific_help_tax_obligation']);
        $leaflet->setSpecificTransactTax($_POST['specific_transact_tax']);
        $leaflet->setAdministrativeComment($_POST['administrative_comment']);

        $leaflet->setExpectation($_POST['expectation']);
        $leaflet->setOtherService($_POST['other_service']);
        $leaflet->setQualityComment($_POST['quality_comment']);
        if($leaflet->create()) {
            $response['status'] = true;
            $response['message'] = $smarty->fetch(DOC_ROOT."/templates/boxes/messages_no_format.tpl");
        } else {
            $response['status'] = false;
            $response['message'] = $smarty->fetch(DOC_ROOT."/templates/boxes/messages_no_format.tpl");
        }
        echo json_encode($response);
    break;
}