#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  // for use in command line like: app < input > output
		  // click Project/Run paused
		  
		  Dim parser As New DragonBook.Parser(New DragonBook.Lexer(StdIn), StdOut)
		  
		  Try
		    #pragma BreakOnExceptions Off
		    parser.Program
		    #pragma BreakOnExceptions Default
		  Catch exc As RuntimeException
		    Print "error "+ exc.Message+ EndOfLine
		  End Try
		End Function
	#tag EndEvent


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
