#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  Dim parser As New DragonBook.Parser(New DragonBook.Lexer(StdIn), StdOut)
		  
		  Try
		    #pragma BreakOnExceptions Off
		    parser.Program
		    #pragma BreakOnExceptions Default
		  Catch exc As RuntimeException
		    Print "error "+ exc.Message+ EndOfLine
		  End Try
		  
		  
		  'Dim sinp As Readable= StdIn
		  'Dim sout As Writeable= StdOut
		  'Dim buffer As String
		  'Do
		  'buffer= sinp.Read(1024)
		  'Print "buffer.Len: "+ Str(buffer.Len)
		  'Print ""
		  'sout.Write buffer
		  'Loop Until buffer.Right(1).Asc= 0
		  
		  
		  'Dim sinp As Readable= StdIn
		  'Dim sout As Writeable= StdOut
		  'Dim ch As String= sinp.Read(1)
		  '
		  'While ch.Asc<> 0
		  'sout.Write "asc("+ Str(ch.Asc)+ "):"+ ch
		  'ch= sinp.Read(1)
		  'Wend
		  
		  
		  'Dim bsTemp As New BinaryStream(New MemoryBlock(1))
		  'Dim ch As String= StdIn.Read(1)
		  '
		  'While ch.Asc<> 0
		  'bsTemp.Write ch
		  'ch= StdIn.Read(1)
		  'Wend
		  '
		  'bsTemp.Position= 0
		  'Print bsTemp.Read(bsTemp.Length)
		End Function
	#tag EndEvent


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
