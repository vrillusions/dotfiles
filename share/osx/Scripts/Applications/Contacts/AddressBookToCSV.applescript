(*
Written by: 	Sean Long

On:			09/01/2004

From: 		http://www.hailstonesoftware.com

Purpose:		Create a CSV(comma separated value) file of all entries in Mac OS X Address Book.
			This CSV file can then be saved to disk and used to import the Address Book data into Mozilla Thunderbird.
			
License:		free to use how you choose.
*)

tell application "TextEdit"
	activate
	make new document at the beginning of documents
	set the name of window 1 to "addresses.csv"
	
	tell application "Contacts"
		
		set lastText to ""
		repeat with i from 1 to count of people
			
			set thisPerson to person i
			
			if (first name of thisPerson exists) then
				set m_firstName to first name of thisPerson
			else
				set m_firstName to ""
			end if
			
			if (last name of thisPerson exists) then
				set m_lastName to last name of thisPerson
			else
				set m_lastName to ""
			end if
			
			if (name of thisPerson exists) then
				set m_displayName to name of thisPerson
			else
				set m_displayName to ""
			end if
			
			if (nickname of thisPerson exists) then
				set m_nickName to nickname of thisPerson
			else
				set m_nickName to ""
			end if
			
			set m_email to ""
			set m_email2 to ""
			
			-- get the first 2 email addresses
			if (email of thisPerson exists) then
				repeat with j from 1 to count of emails of thisPerson
					if j = 1 then
						set m_email to value of email j of thisPerson
					end if
					
					if j = 2 then
						set m_email2 to value of email j of thisPerson
					end if
				end repeat
			end if
			
			-- figure out all the phones
			set m_workPhone1 to ""
			set m_workPhone2 to ""
			set m_workFax to ""
			set m_homePhone1 to ""
			set m_homePhone2 to ""
			set m_homeFax to ""
			set m_mobilePhone to ""
			set m_otherPhone to ""
			set m_pager to ""
			
			set foundFirstWorkPhone to false as boolean
			set foundFirstHomePhone to false as boolean
			
			if (phone of thisPerson exists) then
				repeat with j from 1 to count of phones of thisPerson
					set thisPhone to phone j of thisPerson
					set thisPhoneLabel to label of thisPhone
					set thisPhoneValue to value of thisPhone
					
					if (thisPhoneLabel = "work" and foundFirstWorkPhone = false) then
						set m_workPhone1 to thisPhoneValue
						set foundFirstWorkPhone to true
					else if (thisPhoneLabel = "work" and foundFirstWorkPhone = true) then
						set m_workPhone2 to thisPhoneValue
					else if (thisPhoneLabel = "home" and foundFirstHomePhone = false) then
						set m_homePhone1 to thisPhoneValue
						set foundFirstHomePhone to true
					else if (thisPhoneLabel = "home" and foundFirstHomePhone = true) then
						set m_homePhone2 to thisPhoneValue
					else if (thisPhoneLabel = "work fax") then
						set m_workFax to thisPhoneValue
					else if (thisPhoneLabel = "home fax") then
						set m_homeFax to thisPhoneValue
					else if (thisPhoneLabel = "mobile") then
						set m_mobilePhone to thisPhoneValue
					else if (thisPhoneLabel = "pager") then
						set m_pager to thisPhoneValue
					else
						set m_otherPhone to thisPhoneValue
					end if
					
				end repeat
			end if
			
			-- figure out the addresses
			set m_workStreet to ""
			set m_workStreet2 to "" -- not used
			set m_workCity to ""
			set m_workState to ""
			set m_workZip to ""
			set m_workCountry to ""
			set m_homeStreet to ""
			set m_homeStreet2 to "" -- not used
			set m_homeCity to ""
			set m_homeState to ""
			set m_homeZip to ""
			set m_homeCountry to ""
			
			if (address of thisPerson exists) then
				repeat with j from 1 to count of addresses of thisPerson
					
					set thisAddr to address j of thisPerson
					set thisAddrLabel to label of thisAddr
					
					if (thisAddrLabel = "work") then
						set m_workStreet to street of thisAddr
						set m_workCity to city of thisAddr
						set m_workState to state of thisAddr
						set m_workZip to zip of thisAddr
						set m_workCountry to country of thisAddr
					else
						set m_homeStreet to street of thisAddr
						set m_homeCity to city of thisAddr
						set m_homeState to state of thisAddr
						set m_homeZip to zip of thisAddr
						set m_homeCountry to country of thisAddr
					end if
					
				end repeat
			end if
			
			if (job title of thisPerson exists) then
				set m_jobTitle to job title of thisPerson
			else
				set m_jobTitle to ""
			end if
			
			if (department of thisPerson exists) then
				set m_department to department of thisPerson
			else
				set m_department to ""
			end if
			
			if (organization of thisPerson exists) then
				set m_organization to organization of thisPerson
			else
				set m_organization to ""
			end if
			
			if (home page of thisPerson exists) then
				set m_homePage to home page of thisPerson
			else
				set m_homePage to ""
			end if
			
			set m_homePage2 to "" -- AddressBook only supports 1 web page
			
			
			
			set m_birthYear to ""
			set m_birthMonth to ""
			set m_birthDay to ""
			if (birth date of thisPerson exists) then
				set bDay to birth date of thisPerson
				
				set m_birthYear to year of bDay
				set m_birthMonth to month of bDay
				set m_birthDay to day of bDay
			end if
			
			if (AIM Handle of thisPerson exists) then
				set m_aimName to "(AIM) " & value of AIM Handle 1 of thisPerson
			else
				set m_aimName to ""
			end if
			
			if (ICQ handle of thisPerson exists) then
				set m_icqName to "(ICQ) " & value of ICQ handle 1 of thisPerson
			else
				set m_icqName to ""
			end if
			
			if (note of thisPerson exists) then
				set m_notes to note of thisPerson
			else
				set m_notes to ""
			end if
			
			-- add any left overs to notes
			if (m_homePhone2 is not "") then
				set m_notes to m_notes & "
" & "home phone2 = " & m_homePhone2 --should be on separate line so line break is appended
			end if
			
			if (m_workPhone2 is not "") then
				set m_notes to m_notes & "
" & "work phone2 = " & m_workPhone2 --should be on separate line so line break is appended
			end if
			
			if (m_otherPhone is not "") then
				set m_notes to m_notes & "
" & "other phone = " & m_otherPhone --should be on separate line so line break is appended
			end if
			
			--done with this person
			set m_dataForThisPerson to "" & m_firstName & "," & m_lastName & "," & m_displayName & "," & m_nickName & "," & m_email & "," & m_email2 & "," & m_workPhone1 & "," & m_homePhone1 & "," & m_workFax & "," & m_pager & "," & m_mobilePhone & "," & m_homeStreet & "," & m_homeStreet2 & "," & m_homeCity & "," & m_homeState & "," & m_homeZip & "," & m_homeCountry & "," & m_workStreet & "," & m_workStreet2 & "," & m_workCity & "," & m_workState & "," & m_workZip & "," & m_workCountry & "," & m_jobTitle & "," & m_department & "," & m_organization & "," & m_homePage & "," & m_homePage2 & "," & m_birthYear & "," & m_birthMonth & "," & m_birthDay & "," & m_homePhone2 & "," & m_homeFax & "," & m_aimName & "," & m_icqName & "," & m_notes
			
			--append current item in new TextEdit file called addresses.csv
			set lastText to text of the front document of application "TextEdit"
			set lastText to lastText & "
" & m_dataForThisPerson --should be on separate line so line break is appended
			set the text of front document of application "TextEdit" to lastText as text
			
		end repeat
		
		--done with all people
		
	end tell
	
	-- This needs to be fixed
	-- save document "addresses.csv" in "Desktop/addresses.csv"
end tell

