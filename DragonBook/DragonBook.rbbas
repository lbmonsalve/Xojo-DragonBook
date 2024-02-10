#tag Module
Protected Module DragonBook
	#tag Method, Flags = &h0
		Function IsLetter(Extends value As String) As Boolean
		  Static rg As RegEx
		  If rg Is Nil Then
		    rg= New RegEx
		    rg.SearchPattern= "[a-zA-ZÀ-ÖØ-öø-ÿ]"
		  End If
		  
		  Return Not (rg.Search(value) Is Nil)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isLetterOrDigit(Extends value As String) As Boolean
		  Return value.IsLetter Or IsNumeric(value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OutPrint(s As String)
		  If Parser.Out Is Nil Then
		    System.DebugLog s
		  Else
		    Parser.Out.Write s
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OutPrintLn(s As String)
		  OutPrint s+ EndOfLine
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToInteger(Extends value As DragonBook.Lexical.Tag) As Integer
		  Return CType(value, Integer)
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
