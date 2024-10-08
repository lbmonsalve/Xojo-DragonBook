#tag Module
Protected Module DragonBook
	#tag Method, Flags = &h0
		Function Codepoint(Extends value As String) As Integer
		  If value.Len= 0 Then Return -1 // sanity chk
		  If value.LenB= 1 Then Return value.Asc
		  
		  Dim mb As MemoryBlock= value
		  If mb.Size>= 4 Then
		    Return mb.UInt32Value(0)
		  ElseIf mb.Size= 2 Then
		    Return mb.UInt16Value(0)
		  Else
		    Break // TODO: chk this
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FrmtEsc(Extends value As String) As String
		  Return value.ReplaceAll("\t", Chr(9)).ReplaceAll("\n", EndOfLine)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsLetter(Extends value As String) As Boolean
		  If value.Len<> value.LenB Then Return True // TODO: chk unicode ranges
		  
		  Static rg As RegEx
		  If rg Is Nil Then
		    rg= New RegEx
		    rg.SearchPattern= "\w"
		  End If
		  
		  Return Not (rg.Search(value) Is Nil)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsLetterOrDigit(Extends value As String) As Boolean
		  Return value.IsLetter Or IsNumeric(value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetPosition(Extends value As BinaryStream)
		  value.Position= 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToInteger(Extends value As DragonBook.Tag) As Integer
		  Return CType(value, Integer)
		End Function
	#tag EndMethod


	#tag Enum, Name = Tag, Flags = &h1
		AND_ = 256
		  BASIC = 257
		  BREAK_ = 258
		  DO_ = 259
		  ELSE_ = 260
		  EQ = 261
		  FALSE_ = 262
		  GE = 263
		  ID = 264
		  IF_ = 265
		  INDEX = 266
		  LE = 267
		  MINUS = 268
		  NE = 269
		  NUM = 270
		  OR_ = 271
		  REAL = 272
		  TEMP = 273
		  TRUE_ = 274
		  WHILE_ = 275
		CHAR = 276
	#tag EndEnum


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
