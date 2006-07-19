	Using:

sub Install()
 copy asql.vim to %wimDir%\syntax
 select case ("you did changed syntaxes yourself in your current installation")
	case False:
		replace synmenu.vim in %wimDir%
		replace filetype.vim in %wimDir%

	case True:
		edit your ini files yourself :) and copy paste...
		note that I divided sql section in filetype.vim
		into two parts, so only extension sql is tested on familiarity to acces
		(I am testing 50 or EOF lines of file)
 end select
end sub

	About:
This syntax file is based on SQL, PL/SQL (Oracle 8i) [Maintainer: Paul Moore <pf_moore AT yahoo.co.uk>, 2004 Jul 19]
But I had changed philosophy of it and surely I replaced all highlighted Items.
All highlighted items from original sql syntax file were deleted and new were added directly from
access db file, where all access sql language items [lets call it "keywords"] are stored in scheme ReservedWords.
Then 3quarter-automated process of syn item recognition was made as described next.

	Syn items description:
sqlKeyword		=	keyword, which couldn't be at first place on line (still throwed same error)
sqlKeywordVal		=	keyword, which I wanted to be highlighted as value
sqlOperator		=	keyword, which I know they are operators, it needs to be improved, I don't know all :)
sqlStatement		=	keyword, which produced different errors while trying to run them as sql command
sqlType			=	keyword, which could be set as type while creating one column table

	Note:
I have bit changed color schema of syntax... you can compare with original sql syntax file.
Also I included this syntax to synmenu under folder S\SQL as item "Access SQL"

	Author:
Matej Kasper <vim AT zavrazden.borec.cz>
Last Change:	2006 Jul 19