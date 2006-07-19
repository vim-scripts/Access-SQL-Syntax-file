" Vim syntax file
" Language:	ACCESS SQL, 
" Maintainer:	Matej Kasper <vim AT zavrazden.borec.cz>
" Last Change:	2006 Jul 19

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword sqlKeywordVal  FALSE TRUE NULL

syn keyword sqlKeyword	ABSOLUTE ACTION ADD ALLOCATE ARE AS ASC ASSERTION AT AUTHORIZATION AVG BIT_LENGTH BOTH 
syn keyword sqlKeyword	BY CASCADE CASCADED CASE CAST CATALOG CHAR_LENGTH CHARACTER_LENGTH CHECK CLOSE COALESCE 
syn keyword sqlKeyword	COLLATE COLLATION COLUMN CONNECT CONNECTION CONSTRAINT CONSTRAINTS CONTINUE CONVERT 
syn keyword sqlKeyword	CORRESPONDING COUNT CROSS CURRENT CURRENT_DATE CURRENT_TIME CURRENT_TIMESTAMP CURRENT_USER 
syn keyword sqlKeyword	CURSOR DAY DEALLOCATE DECLARE DEFAULT DEFERRABLE DEFERRED DESC DESCRIBE DESCRIPTOR DIAGNOSTICS 
syn keyword sqlKeyword	DISCONNECT DISTINCTROW DOMAIN ELSE END END-EXEC EXCEPT EXCEPTION EXTERNAL EXTRACT FETCH
syn keyword sqlKeyword	FIRST FOR FOREIGN FOUND FROM FULL GET GLOBAL GO GOTO GROUP HAVING HOUR IMMEDIATE INDICATOR
syn keyword sqlKeyword	INITIALLY INNER INPUT INSENSITIVE INTERVAL INTO IS ISOLATION KEY LANGUAGE LAST LEADING LEVEL
syn keyword sqlKeyword	LOCAL LOWER MATCH MAX MIN MINUTE MODULE MONTH NAMES NATIONAL NATURAL NEXT NO NULLIF
syn keyword sqlKeyword	OCTET_LENGTH OF ON ONLY OPEN OPTION ORDER OUTER OUTPUT OVERLAPS PARTIAL POSITION PRECISION
syn keyword sqlKeyword	PREPARE PRESERVE PRIMARY PRIVILEGES PUBLIC READ REFERENCES RELATIVE RESTRICT ROWS SCHEMA SCROLL
syn keyword sqlKeyword	SECOND SECTION SESSION SESSION_USER SET SIZE SQL SQLCODE SQLERROR SQLSTATE SUBSTRING SUM
syn keyword sqlKeyword	SYSTEM_USER TEMPORARY THEN TIMEZONE_HOUR TIMEZONE_MINUTE TO TRAILING TRANSACTION TRANSLATE
syn keyword sqlKeyword	TRANSLATION TRIGGER TRIM UNIQUE UNKNOWN UPPER USAGE USER USING VALUE VALUES VARYING
syn keyword sqlKeyword	VIEW WHEN WHENEVER WHERE WITH WORK WRITE YEAR ZONE AdminDB Comp Compression Container
syn keyword sqlKeyword	CreateDB Database Disallow ExclusiveConnect Ignore Index Inheritable Object OwnerAccess
syn keyword sqlKeyword	Pad Parameters Password Percent Pivot Proc SelectSchema SelectSecurity Space Tableid Top
syn keyword sqlKeyword	Transform UpdateIdentity UpdateOwner UpdateSecurity 

syn keyword sqlOperator	NOT AND OR BAND BNOT BOR BXOR 
syn keyword sqlOperator	in any some all between exists
syn keyword sqlOperator	like escape
syn keyword sqlOperator union intersect join left right
syn keyword sqlOperator prior distinct

syn keyword sqlStatement PROCEDURE EXECUTE EXEC BEGIN
syn keyword sqlStatement REVOKE GRANT
syn keyword sqlStatement ROLLBACK COMMIT
syn keyword sqlStatement SELECT INSERT DROP DELETE CREATE ALTER UPDATE
syn keyword sqlStatementHi TABLE

syn keyword sqlType	BIT CHAR CHARACTER DATE DEC DECIMAL DOUBLE FLOAT IDENTITY INT INTEGER 
syn keyword sqlType	NCHAR NUMERIC REAL SMALLINT TIME TIMESTAMP VARCHAR
syn keyword sqlType	Alphanumeric Autoincrement Binary Byte Counter Currency DateTime Float4 Float8 
syn keyword sqlType	General Guid IEEEDouble IEEESingle Image Integer1 Integer2 Integer3 Integer4
syn keyword sqlType	Logical Logical1 Long LongBinary LongChar LongText Memo Money Note Number 
syn keyword sqlType	OLEObject Short Single String Text Uniqueidentifier Varbinary YesNo

" Strings and characters:
syn region sqlString		start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region sqlString		start=+'+  skip=+\\\\\|\\'+  end=+'+
syn region sqlString		start=+#+  skip=+\\\\\|\\'+  end=+#+

" Numbers:
syn match sqlNumber		"-\=\<\d*\.\=[0-9_]\>"

" Comments:
syn region sqlComment    start="/\*"  end="\*/" contains=sqlTodo
syn match sqlComment	"--.*$" contains=sqlTodo

syn sync ccomment sqlComment

" Todo.
syn keyword sqlTodo TODO FIXME XXX DEBUG NOTE

if version >= 508 || !exists("did_sql_syn_inits")
  if version < 508
    let did_sql_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink sqlComment	Comment
  HiLink sqlKeyword	Special
  HiLink sqlNumber	Number
  HiLink sqlOperator	sqlStatement
  HiLink sqlKeywordVal	Number
  HiLink sqlStatement	Statement
  HiLink sqlStatementHi	Special
  HiLink sqlString	String
  HiLink sqlType	Type
  HiLink sqlTodo	Todo

  delcommand HiLink
endif

let b:current_syntax = "asql"
