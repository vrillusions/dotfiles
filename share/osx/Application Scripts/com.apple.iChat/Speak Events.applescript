(*

File: Mix Message Case.applescript

Abstract: This script will speak descriptions of events received in Messages.
	
Version: 1.0

Disclaimer: IMPORTANT:  This Apple software is supplied to you by Apple
Inc. ("Apple") in consideration of your agreement to the
following terms, and your use, installation, modification or
redistribution of this Apple software constitutes acceptance of these
terms.  If you do not agree with these terms, please do not use,
install, modify or redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and
subject to these terms, Apple grants you a personal, non-exclusive
license, under Apple's copyrights in this original Apple software (the
"Apple Software"), to use, reproduce, modify and redistribute the Apple
Software, with or without modifications, in source and/or binary forms;
provided that if you redistribute the Apple Software in its entirety and
without modifications, you must retain this notice and the following
text and disclaimers in all such redistributions of the Apple Software. 
Neither the name, trademarks, service marks or logos of Apple Inc.
may be used to endorse or promote products derived from the Apple
Software without specific prior written permission from Apple.  Except
as expressly stated in this notice, no other rights or licenses, express
or implied, are granted by Apple herein, including but not limited to
any patent rights that may be infringed by your derivative works or by
other works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE
MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION
THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS
FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND
OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL
OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION,
MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED
AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE),
STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

Copyright 2008 Apple, Inc., All Rights Reserved

*)

using terms from application "Messages"
	on message sent theMessage with eventDescription
		# say eventDescription
	end message sent
	
	on message received theMessage with eventDescription
		say eventDescription
	end message received
	
	on chat room message received with eventDescription
		say eventDescription
	end chat room message received
	
	on active chat message received with eventDescription
		say eventDescription
	end active chat message received
	
	on addressed message received theMessage from theBuddy for theChat with eventDescription
		say eventDescription
	end addressed message received
	
	on received text invitation with eventDescription
		say eventDescription
	end received text invitation
	
	on received audio invitation theText from theBuddy for theChat with eventDescription
		say eventDescription
	end received audio invitation
	
	on received video invitation theText from theBuddy for theChat with eventDescription
		say eventDescription
	end received video invitation
	
	on received local screen sharing invitation from theBuddy for theChat with eventDescription
		say eventDescription
	end received local screen sharing invitation
	
	on buddy authorization requested with eventDescription
		say eventDescription
	end buddy authorization requested
	
	on addressed chat room message received with eventDescription
		say eventDescription
	end addressed chat room message received
	
	on received remote screen sharing invitation with eventDescription
		say eventDescription
	end received remote screen sharing invitation
	
	# The following are unused but need to be defined to avoid an error
	
	on login finished with eventDescription
		# say eventDescription
	end login finished
	
	on logout finished with eventDescription
		# say eventDescription
	end logout finished
	
	on buddy became available with eventDescription
		# say eventDescription
	end buddy became available
	
	on buddy became unavailable with eventDescription
		# say eventDescription
	end buddy became unavailable
	
	on received file transfer invitation theFileTransfer with eventDescription
		# say eventDescription
	end received file transfer invitation
	
	on av chat started with eventDescription
		# say eventDescription
	end av chat started
	
	on av chat ended with eventDescription
		# say eventDescription
	end av chat ended
	
	on completed file transfer with eventDescription
		# say eventDescription
	end completed file transfer
	
end using terms from
