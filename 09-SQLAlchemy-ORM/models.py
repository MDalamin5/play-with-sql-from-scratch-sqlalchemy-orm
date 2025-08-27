from typing import Optional
import datetime
import decimal

from sqlalchemy import BigInteger, CHAR, Column, DECIMAL, Date, DateTime, Index, Integer, String, Table, Text, text
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column

class Base(DeclarativeBase):
    pass


class ADOPVALIDNODESBAK(Base):
    __tablename__ = 'ADOP_VALID_NODES_BAK'

    id: Mapped[int] = mapped_column(Integer, primary_key=True)
    node_name: Mapped[Optional[str]] = mapped_column(String(256))
    context_name: Mapped[Optional[str]] = mapped_column(String(50))
    zd_edition_name: Mapped[Optional[str]] = mapped_column(String(30))
    zd_sync: Mapped[Optional[str]] = mapped_column(String(30))


t_CustomerSiteListing = Table(
    'CustomerSiteListing', Base.metadata,
    Column('Cust_Group_ID', String(30)),
    Column('Cust_Group_Code', String(150)),
    Column('MainCustomer_Name', String(360), nullable=False),
    Column('Customer_Type', String(30), nullable=False),
    Column('Custmoer_Status', String(8)),
    Column('Site_Number', String(30), nullable=False),
    Column('Site_Name', String(240)),
    Column('OperatingUnit', String(283)),
    Column('Site_Status', String(8)),
    Column('OLD_SITE_CD', String(240), nullable=False),
    Column('VAT', String(150)),
    Column('NBT', String(150)),
    Column('SVAT', String(150)),
    Column('Address1', String(240)),
    Column('Address2', String(240)),
    Column('Address3', String(240)),
    Column('Address4', String(240)),
    Column('City', String(60)),
    Column('CREATION_DATE', Date, nullable=False),
    Column('CREATED_BY', String(100), nullable=False),
    Column('LAST_UPDATE_DATE', Date, nullable=False),
    Column('LAST_UPDATE_BY', String(100), nullable=False)
)


t_CustomerSiteListingUpdated = Table(
    'CustomerSiteListingUpdated', Base.metadata,
    Column('cust_group_id', String(30)),
    Column('cust_group_code', String(150)),
    Column('maincustomer_name', String(360)),
    Column('maincustomer_name_standardized', String(360)),
    Column('maincustomer_name_upper', String(360)),
    Column('maincustomer_name_lower', String(360)),
    Column('customer_type', String(30)),
    Column('customer_type_standardized', String(30)),
    Column('customer_type_upper', String(30)),
    Column('customer_type_lower', String(30)),
    Column('customer_status', String(8)),
    Column('site_number', String(30)),
    Column('site_name', String(240)),
    Column('operatingunit', String(283)),
    Column('operatingunit_code', String(255)),
    Column('operatingunit_operation', String(255)),
    Column('site_status', String(8)),
    Column('old_site_cd', String(240)),
    Column('vat', String(150)),
    Column('nbt', String(150)),
    Column('svat', String(150)),
    Column('address1', String(240)),
    Column('address2', String(240)),
    Column('address3', String(240)),
    Column('address4', String(240)),
    Column('city', String(60)),
    Column('creation_date', Date),
    Column('creation_date_full', String(20)),
    Column('created_by', String(100)),
    Column('last_update_date', Date),
    Column('last_update_date_full', String(20)),
    Column('last_update_by', String(100))
)


t_DebitMemoListing = Table(
    'DebitMemoListing', Base.metadata,
    Column('AMOUNT_APPLIED', DECIMAL(15, 2)),
    Column('TRX_NUMBER', String(20), nullable=False),
    Column('TRX_DATE', Date, nullable=False),
    Column('DOC_SEQUENCE_VALUE', Integer, nullable=False),
    Column('COMMENTS', String(1760)),
    Column('COMPLETE_FLAG', String(1), nullable=False),
    Column('EXTENDED_AMOUNT', String(255)),
    Column('APPLY_DATE', String(255)),
    Column('RECEIPT_DATE', String(255)),
    Column('RECEIPT_NUMBER', String(255)),
    Column('ACCOUNT_NAME', String(240)),
    Column('ACCOUNT_NUMBER', String(30)),
    Column('ORGANIZATION_ID', Integer, nullable=False)
)


t_DebtorsStatementReportQ3 = Table(
    'DebtorsStatementReportQ3', Base.metadata,
    Column('ACCOUNT_NUMBER', String(30), nullable=False),
    Column('INVOICE_NO', String(30)),
    Column('AMOUNT_APPLIED', DECIMAL(16, 2)),
    Column('RECEIPT_NUMBER', String(30)),
    Column('RECEIPT_DATE', Date, nullable=False),
    Column('STATUS', String(30), nullable=False),
    Column('CASH_RECEIPT_ID', BigInteger, nullable=False),
    Column('ORG_ID', BigInteger),
    Column('DOC_SEQUENCE_VALUE', BigInteger),
    Column('APPLIED_CUSTOMER_TRX_ID', BigInteger),
    Column('SIGN', CHAR(7))
)


t_DebtorsStatementReportQ4 = Table(
    'DebtorsStatementReportQ4', Base.metadata,
    Column('COMMENTS', String(1760)),
    Column('CUSTOMER_REFERENCE_DATE', Date),
    Column('LEGAL_ENTITY_ID', Integer),
    Column('CREDIT_NOTE_NO', String(20), nullable=False),
    Column('TRX_DATE', Date, nullable=False),
    Column('ORG_ID', Integer),
    Column('INTERFACE_HEADER_ATTRIBUTE1', String(150)),
    Column('ACCOUNT_NAME', String(240)),
    Column('ACCOUNT_NUMBER', String(30), nullable=False),
    Column('CUSTOMER_TRX_ID', Integer, nullable=False),
    Column('INVOICE_NO', String(30)),
    Column('REVENUE_AMOUNT', DECIMAL(15, 2)),
    Column('AMOUNT', DECIMAL(15, 2)),
    Column('SIGN', CHAR(11)),
    Column('REASON_CODE', String(30))
)


t_Debtors_Statement_Aging_Query = Table(
    'Debtors_Statement_Aging_Query', Base.metadata,
    Column('ACCOUNT_NUMBER', String(30)),
    Column('ACCOUNT_NAME', String(360)),
    Column('TRX_DATE', Date),
    Column('TRX_NUM', String(30)),
    Column('CUSTOMER_TRX_ID', BigInteger),
    Column('DESCRIPTION', BigInteger),
    Column('OUTSTANDING_AMOUNT', DECIMAL(18, 2)),
    Column('D0_30', DECIMAL(18, 2)),
    Column('D31_45', DECIMAL(18, 2)),
    Column('D46_60', DECIMAL(18, 2)),
    Column('D61_90', DECIMAL(18, 2)),
    Column('D91_180', DECIMAL(18, 2)),
    Column('D181_270', DECIMAL(18, 2)),
    Column('D271_360', DECIMAL(18, 2)),
    Column('D360', DECIMAL(18, 2))
)


t_Modified_Debtors_Statement = Table(
    'Modified_Debtors_Statement', Base.metadata,
    Column('account_number', String(30)),
    Column('account_name_lower', String(360)),
    Column('account_name_upper', String(360)),
    Column('account_name_original', String(360)),
    Column('trx_date', Date),
    Column('trx_num', String(30)),
    Column('customer_trx_id', BigInteger),
    Column('description', String(360)),
    Column('outstanding_amount', DECIMAL(18, 2)),
    Column('d0_30', DECIMAL(18, 2)),
    Column('d31_45', DECIMAL(18, 2)),
    Column('d46_60', DECIMAL(18, 2)),
    Column('d61_90', DECIMAL(18, 2)),
    Column('d91_180', DECIMAL(18, 2)),
    Column('d181_270', DECIMAL(18, 2)),
    Column('d271_360', DECIMAL(18, 2)),
    Column('d360', DECIMAL(18, 2))
)


t_SupplierDetails = Table(
    'SupplierDetails', Base.metadata,
    Column('invoice_id', BigInteger),
    Column('invoice_num', String(50)),
    Column('invoice_num_standard', String(255)),
    Column('invoice_num_upper', String(255)),
    Column('invoice_num_lower', String(255)),
    Column('last_update_date', DateTime),
    Column('last_updated_by', BigInteger),
    Column('vendor_id', BigInteger),
    Column('set_of_books_id', BigInteger),
    Column('invoice_currency_code', String(15)),
    Column('payment_currency_code', String(15)),
    Column('vendor_site_id', BigInteger),
    Column('invoice_date', DateTime),
    Column('invoice_type_lookup_code', String(25)),
    Column('invoice_type_lookup_code_standard', String(255)),
    Column('invoice_type_lookup_code_upper', String(255)),
    Column('invoice_type_lookup_code_lower', String(255)),
    Column('c_description', String(240)),
    Column('amount_applicable_to_discount', DECIMAL(38, 0)),
    Column('terms_id', BigInteger),
    Column('terms_date', DateTime),
    Column('creation_date', DateTime),
    Column('created_by', BigInteger),
    Column('invoice_received_date', DateTime),
    Column('earliest_settlement_date', DateTime),
    Column('org_id', BigInteger),
    Column('organization_id', BigInteger),
    Column('name', String(240)),
    Column('name_standard', String(255)),
    Column('name_upper', String(255)),
    Column('name_lower', String(255)),
    Column('gl_date', DateTime),
    Column('wfapproval_status', String(50)),
    Column('wfapproval_status_standard', String(255)),
    Column('wfapproval_status_upper', String(255)),
    Column('wfapproval_status_lower', String(255)),
    Column('legal_entity_id', BigInteger),
    Column('payment_reason_code', String(30)),
    Column('payment_reason_comments', String(240)),
    Column('payment_method_code', String(30)),
    Column('payment_method_code_standard', String(255)),
    Column('payment_method_code_upper', String(255)),
    Column('payment_method_code_lower', String(255)),
    Column('party_id', BigInteger),
    Column('party_site_id', BigInteger),
    Column('remit_to_supplier_name', String(240)),
    Column('remit_to_supplier_name_standard', String(255)),
    Column('remit_to_supplier_name_upper', String(255)),
    Column('remit_to_supplier_name_lower', String(255)),
    Column('remit_to_supplier_id', BigInteger),
    Column('remit_to_supplier_site', String(240)),
    Column('remit_to_supplier_site_standard', String(255)),
    Column('remit_to_supplier_site_upper', String(255)),
    Column('remit_to_supplier_site_lower', String(255)),
    Column('remit_to_supplier_site_id', BigInteger),
    Column('vendor_name', String(240)),
    Column('vendor_name_standard', String(255)),
    Column('vendor_name_upper', String(255)),
    Column('vendor_name_lower', String(255)),
    Column('segment1', String(30)),
    Column('invoice_amount', DECIMAL(38, 0)),
    Column('amount_paid', DECIMAL(38, 0)),
    Column('balance_remaining', DECIMAL(38, 0))
)


t_SupplierDetails2 = Table(
    'SupplierDetails2', Base.metadata,
    Column('invoice_id', DECIMAL(16, 0), nullable=False),
    Column('invoice_num', String(50), nullable=False),
    Column('last_update_date', DateTime, nullable=False),
    Column('last_updated_by', DECIMAL(16, 0), nullable=False),
    Column('vendor_id', DECIMAL(16, 0)),
    Column('set_of_books_id', DECIMAL(16, 0), nullable=False),
    Column('invoice_currency_code', String(15), nullable=False),
    Column('payment_currency_code', String(15), nullable=False),
    Column('invoice_amount', DECIMAL(38, 2)),
    Column('vendor_site_id', DECIMAL(16, 0)),
    Column('amount_paid', DECIMAL(38, 2)),
    Column('invoice_date', DateTime),
    Column('invoice_type_lookup_code', String(25)),
    Column('c_description', String(240)),
    Column('amount_applicable_to_discount', DECIMAL(38, 2)),
    Column('terms_id', DECIMAL(16, 0)),
    Column('terms_date', DateTime),
    Column('creation_date', DateTime),
    Column('created_by', DECIMAL(16, 0)),
    Column('invoice_received_date', DateTime),
    Column('earliest_settlement_date', DateTime),
    Column('org_id', DECIMAL(16, 0)),
    Column('gl_date', DateTime, nullable=False),
    Column('wfapproval_status', String(50), nullable=False),
    Column('legal_entity_id', DECIMAL(16, 0)),
    Column('payment_reason_code', String(30)),
    Column('payment_reason_comments', String(240)),
    Column('payment_method_code', String(30)),
    Column('party_id', DECIMAL(16, 0)),
    Column('party_site_id', DECIMAL(16, 0)),
    Column('remit_to_supplier_name', String(240)),
    Column('remit_to_supplier_id', DECIMAL(16, 0)),
    Column('remit_to_supplier_site', String(240)),
    Column('remit_to_supplier_site_id', DECIMAL(16, 0)),
    Column('vendor_name', String(240)),
    Column('upper_vendor_name', String(240)),
    Column('segment1', String(30), nullable=False),
    Column('c_invoice_amount', DECIMAL(38, 2)),
    Column('c_payment_amount', DECIMAL(38, 2), nullable=False),
    Column('gl_code_combination', String(181)),
    Column('gl_natural_account', String(25))
)


class SupplierInvoicePaymentDetails(Base):
    __tablename__ = 'SupplierInvoicePaymentDetails'

    INVOICE_ID: Mapped[int] = mapped_column(BigInteger, primary_key=True)
    INVOICE_NUM: Mapped[str] = mapped_column(String(50), nullable=False)
    LAST_UPDATE_DATE: Mapped[datetime.date] = mapped_column(Date, nullable=False)
    LAST_UPDATED_BY: Mapped[int] = mapped_column(BigInteger, nullable=False)
    SET_OF_BOOKS_ID: Mapped[int] = mapped_column(BigInteger, nullable=False)
    INVOICE_CURRENCY_CODE: Mapped[str] = mapped_column(String(15), nullable=False)
    PAYMENT_CURRENCY_CODE: Mapped[str] = mapped_column(String(15), nullable=False)
    ORGANIZATION_ID: Mapped[int] = mapped_column(BigInteger, nullable=False)
    NAME: Mapped[str] = mapped_column(String(240), nullable=False)
    GL_DATE: Mapped[datetime.date] = mapped_column(Date, nullable=False)
    WFAPPROVAL_STATUS: Mapped[str] = mapped_column(String(50), nullable=False)
    SEGMENT1: Mapped[str] = mapped_column(String(30), nullable=False)
    VENDOR_ID: Mapped[Optional[int]] = mapped_column(BigInteger)
    VENDOR_SITE_ID: Mapped[Optional[int]] = mapped_column(BigInteger)
    INVOICE_DATE: Mapped[Optional[datetime.date]] = mapped_column(Date)
    INVOICE_TYPE_LOOKUP_CODE: Mapped[Optional[str]] = mapped_column(String(25))
    C_DESCRIPTION: Mapped[Optional[str]] = mapped_column(String(240))
    AMOUNT_APPLICABLE_TO_DISCOUNT: Mapped[Optional[decimal.Decimal]] = mapped_column(DECIMAL(18, 2))
    TERMS_ID: Mapped[Optional[int]] = mapped_column(BigInteger)
    TERMS_DATE: Mapped[Optional[datetime.date]] = mapped_column(Date)
    CREATION_DATE: Mapped[Optional[datetime.date]] = mapped_column(Date)
    CREATED_BY: Mapped[Optional[int]] = mapped_column(BigInteger)
    INVOICE_RECEIVED_DATE: Mapped[Optional[datetime.date]] = mapped_column(Date)
    EARLIEST_SETTLEMENT_DATE: Mapped[Optional[datetime.date]] = mapped_column(Date)
    ORG_ID: Mapped[Optional[int]] = mapped_column(BigInteger)
    LEGAL_ENTITY_ID: Mapped[Optional[int]] = mapped_column(BigInteger)
    PAYMENT_REASON_CODE: Mapped[Optional[str]] = mapped_column(String(30))
    PAYMENT_REASON_COMMENTS: Mapped[Optional[str]] = mapped_column(String(240))
    PAYMENT_METHOD_CODE: Mapped[Optional[str]] = mapped_column(String(30))
    PARTY_ID: Mapped[Optional[int]] = mapped_column(BigInteger)
    PARTY_SITE_ID: Mapped[Optional[int]] = mapped_column(BigInteger)
    REMIT_TO_SUPPLIER_NAME: Mapped[Optional[str]] = mapped_column(String(240))
    REMIT_TO_SUPPLIER_ID: Mapped[Optional[int]] = mapped_column(BigInteger)
    REMIT_TO_SUPPLIER_SITE: Mapped[Optional[str]] = mapped_column(String(240))
    REMIT_TO_SUPPLIER_SITE_ID: Mapped[Optional[int]] = mapped_column(BigInteger)
    VENDOR_NAME: Mapped[Optional[str]] = mapped_column(String(240))
    UPPER_VENDOR_NAME: Mapped[Optional[str]] = mapped_column(String(240))
    INVOICE_AMOUNT: Mapped[Optional[decimal.Decimal]] = mapped_column(DECIMAL(18, 2))
    AMOUNT_PAID: Mapped[Optional[decimal.Decimal]] = mapped_column(DECIMAL(18, 2))
    BALANCE_REMAINING: Mapped[Optional[decimal.Decimal]] = mapped_column(DECIMAL(18, 2))


t_SupplierPaymentHistoryQ1 = Table(
    'SupplierPaymentHistoryQ1', Base.metadata,
    Column('C_VENDOR_NAME', String(240)),
    Column('C_SORT_VENDOR_NAME', String(240)),
    Column('C_VENDOR_NUMBER', String(30), nullable=False),
    Column('C_VENDOR_SITE_CODE', String(60)),
    Column('C_ADDRESS_LINE1', String(241)),
    Column('C_CITY', String(61)),
    Column('C_STATE', String(61)),
    Column('C_ZIP', String(80)),
    Column('C_BANK_ACCOUNT_NAME', String(80)),
    Column('C_CHECK_NUMBER', Integer),
    Column('C_CHECK_DATE', Date),
    Column('C_CHECK_AMOUNT', DECIMAL(65, 2)),
    Column('C_CURRENCY_CODE', String(15)),
    Column('C_BASE_AMOUNT', DECIMAL(65, 2)),
    Column('C_VOID_DATE', Date),
    Column('C_CHECK_ID', Integer),
    Column('VOUCHER_NO', DECIMAL(65, 2))
)


class SupplierPaymentHistoryQ2(Base):
    __tablename__ = 'SupplierPaymentHistoryQ2'

    C_INVOICE_NUMBER: Mapped[str] = mapped_column(String(50), primary_key=True)
    C_PAYMENT_AMOUNT: Mapped[decimal.Decimal] = mapped_column(DECIMAL(65, 2), nullable=False)
    C_IP_CHECK_ID: Mapped[int] = mapped_column(Integer, nullable=False)
    C_INVOICE_CURRENCY: Mapped[str] = mapped_column(String(15), nullable=False)
    C_INVOICE_DATE: Mapped[Optional[datetime.date]] = mapped_column(Date)
    C_INVOICE_AMOUNT: Mapped[Optional[decimal.Decimal]] = mapped_column(DECIMAL(65, 2))
    C_DESCRIPTION: Mapped[Optional[str]] = mapped_column(String(240))
    GL_CODE_COMBNATION: Mapped[Optional[str]] = mapped_column(String(181))
    GL_NATURAL_ACCOUNT: Mapped[Optional[str]] = mapped_column(String(25))
    DESCRIPTION: Mapped[Optional[str]] = mapped_column(String(4000))


t_SuppliersPaymentHistory = Table(
    'SuppliersPaymentHistory', Base.metadata,
    Column('C_INVOICE_NUMBER', String(50), nullable=False),
    Column('C_INVOICE_DATE', Date),
    Column('C_INVOICE_AMOUNT', DECIMAL(18, 2), server_default=text("'0.00'")),
    Column('C_PAYMENT_AMOUNT', DECIMAL(18, 2), nullable=False, server_default=text("'0.00'")),
    Column('C_DESCRIPTION', String(240)),
    Column('C_IP_CHECK_ID', Integer, server_default=text("'15'")),
    Column('C_INVOICE_CURRENCY', String(15), nullable=False),
    Column('GL_CODE_COMBNATION', String(181)),
    Column('GL_NATURAL_ACCOUNT', String(25)),
    Column('DESCRIPTION', String(4000))
)


t_SuppliersPaymentHistoryUpdated = Table(
    'SuppliersPaymentHistoryUpdated', Base.metadata,
    Column('c_invoice_number', String(50)),
    Column('c_invoice_date', Date),
    Column('c_invoice_date_full', String(20)),
    Column('c_invoice_amount', DECIMAL(18, 2)),
    Column('c_payment_amount', DECIMAL(18, 2)),
    Column('c_description', String(240)),
    Column('c_ip_check_id', Integer),
    Column('c_invoice_currency', String(15)),
    Column('gl_code_combination', String(181)),
    Column('gl_natural_account', String(25)),
    Column('description', String(4000))
)


class DemoTable(Base):
    __tablename__ = 'demo_table'

    id: Mapped[int] = mapped_column(Integer, primary_key=True)
    name: Mapped[Optional[str]] = mapped_column(String(50))
    age: Mapped[Optional[int]] = mapped_column(Integer)
    city: Mapped[Optional[str]] = mapped_column(String(50))


class Employee(Base):
    __tablename__ = 'employee'
    __table_args__ = (
        Index('email', 'email', unique=True),
    )

    employee_id: Mapped[int] = mapped_column(Integer, primary_key=True)
    first_name: Mapped[str] = mapped_column(String(50), nullable=False)
    last_name: Mapped[str] = mapped_column(String(50), nullable=False)
    email: Mapped[str] = mapped_column(String(100), nullable=False)
    hire_date: Mapped[datetime.date] = mapped_column(Date, nullable=False)
    phone_number: Mapped[Optional[str]] = mapped_column(String(20))
    job_title: Mapped[Optional[str]] = mapped_column(String(50))
    salary: Mapped[Optional[decimal.Decimal]] = mapped_column(DECIMAL(10, 2))


class QuestionsAnswers(Base):
    __tablename__ = 'questions_answers'

    id: Mapped[int] = mapped_column(Integer, primary_key=True)
    question: Mapped[str] = mapped_column(Text, nullable=False)
    answer: Mapped[str] = mapped_column(Text, nullable=False)


t_transaction_details = Table(
    'transaction_details', Base.metadata,
    Column('account_number', Integer),
    Column('account_name_lower', String(255)),
    Column('account_name_upper', String(255)),
    Column('account_name_original', String(255)),
    Column('trx_date', Date),
    Column('trx_num', String(255)),
    Column('customer_trx_id', Integer),
    Column('description', Text),
    Column('outstanding_amount', DECIMAL(10, 2)),
    Column('d0_30', DECIMAL(10, 2)),
    Column('d31_45', DECIMAL(10, 2)),
    Column('d46_60', DECIMAL(10, 2)),
    Column('d61_90', DECIMAL(10, 2)),
    Column('d91_180', DECIMAL(10, 2)),
    Column('d181_270', DECIMAL(10, 2)),
    Column('d271_360', DECIMAL(10, 2)),
    Column('d360', DECIMAL(10, 2))
)
