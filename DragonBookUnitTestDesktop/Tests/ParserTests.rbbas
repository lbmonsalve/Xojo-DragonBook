#tag Class
Protected Class ParserTests
Inherits TestGroup
	#tag Method, Flags = &h0
		Sub ParserTest()
		  Dim testCases() As Pair
		  testCases.Append New Pair("{}", "L1:L2:")
		  testCases.Append New Pair("{int i;}", "L1:L2:")
		  testCases.Append New Pair("{int i;float f;bool[100] b;}", "L1:L2:")
		  testCases.Append New Pair("{int i; i = 10;}", "L1:\ti = 10\nL2:")
		  testCases.Append New Pair("{int i; i = i + 10;}", "L1:\ti = i + 10\nL2:")
		  testCases.Append New Pair("{int i;int[20] arr; i = 10; arr[i] = 10;}", kResult1)
		  testCases.Append New Pair("{int i; int j; bool a; i = i + 10; j = 11; a = i == j;}", kResult2)
		  testCases.Append New Pair("{int i; int j; j = 12; while (i > j) i = i + 1;}", kResult3)
		  testCases.Append New Pair("{int i; int j; j = 12; do i = i + 1; while (i > j);}", kResult4)
		  testCases.Append New Pair("{ while (true) { break; } }", kResult5)
		  testCases.Append New Pair("{int i; int j; i = 10; j = 1; while (j < i) { i = i + 1; break;} }", kResult6)
		  testCases.Append New Pair("{int i; int j; while (true) i = i + 1;}", kResult7)
		  testCases.Append New Pair("{int i; int j; i = 10; j = 1; while (j < i) { i = i + 1; break;} }", kResult8)
		  testCases.Append New Pair(kSource9, kResult9)
		  
		  For Each testCase As Pair In testCases
		    DragonBook.Inter.Node.ResetLabels
		    DragonBook.Inter.Temp.ResetCount
		    
		    Dim mb As MemoryBlock= testCase.Left.StringValue
		    Dim bsOut As New BinaryStream(New MemoryBlock(1))
		    
		    Dim lexer As New DragonBook.Lexer(New BinaryStream(mb))
		    Dim parser As New DragonBook.Parser(lexer, bsOut)
		    
		    parser.Program
		    
		    bsOut.Position= 0
		    Dim result As String= ReplaceLineEndings(bsOut.Read(bsOut.Length), EndOfLine.UNIX)
		    Dim espect As String= ReplaceLineEndings(testCase.Right.StringValue.FrmtEsc, EndOfLine.UNIX)
		    Assert.AreEqual espect, result, "AreEqual espect, result"
		  Next
		End Sub
	#tag EndMethod


	#tag Constant, Name = kResult1, Type = String, Dynamic = False, Default = \"L1:\ti \x3D 10\rL3:\tt1 \x3D i * 4\r\tarr [ t1 ] \x3D 10\rL2:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kResult2, Type = String, Dynamic = False, Default = \"L1:\ti \x3D i + 10\rL3:\tj \x3D 11\rL4:\tiffalse i \x3D\x3D j goto L5\r\tt1 \x3D true\r\tgoto L6\rL5:\tt1 \x3D false\rL6:\ta \x3D t1\rL2:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kResult3, Type = String, Dynamic = False, Default = \"L1:\tj \x3D 12\rL3:\tiffalse i > j goto L2\rL4:\ti \x3D i + 1\r\tgoto L3\rL2:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kResult4, Type = String, Dynamic = False, Default = \"L1:\tj \x3D 12\rL3:\ti \x3D i + 1\rL4:\tif i > j goto L3\rL2:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kResult5, Type = String, Dynamic = False, Default = \"L1:L3:\tgoto L2\r\tgoto L1\rL2:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kResult6, Type = String, Dynamic = False, Default = \"L1:\ti \x3D 10\rL3:\tj \x3D 1\rL4:\tiffalse j < i goto L2\rL5:\ti \x3D i + 1\rL6:\tgoto L2\r\tgoto L4\rL2:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kResult7, Type = String, Dynamic = False, Default = \"L1:L3:\ti \x3D i + 1\r\tgoto L1\rL2:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kResult8, Type = String, Dynamic = False, Default = \"L1:\ti \x3D 10\rL3:\tj \x3D 1\rL4:\tiffalse j < i goto L2\rL5:\ti \x3D i + 1\rL6:\tgoto L2\r\tgoto L4\rL2:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kResult9, Type = String, Dynamic = False, Default = \"L1:L3:\ti \x3D i + 1\rL5:\tt1 \x3D i * 8\r\tt2 \x3D a[ t1 ]\r\tif t2 < v goto L3\rL4:\tj \x3D j - 1\rL7:\tt3 \x3D j * 8\r\tt4 \x3D a[ t3 ]\r\tif t4 > v goto L4\rL6:\tiffalse i >\x3D j goto L8\rL9:\tgoto L2\rL8:\tt5 \x3D i * 8\r\tx \x3D a[ t5 ]\rL10:\tt6 \x3D i * 8\r\tt7 \x3D j * 8\r\tt8 \x3D a[ t7 ]\r\ta [ t6 ] \x3D t8\rL11:\tt9 \x3D j * 8\r\ta [ t9 ] \x3D x\r\tgoto L1\rL2:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSource9, Type = String, Dynamic = False, Default = \"        {\r          int i; int j; float v; float x; float[100] a;\r          while (true) {\r            do i \x3D i + 1; while (a[i] < v);\r            do j \x3D j - 1; while (a[j] > v);\r            if (i >\x3D j) break;\r            x \x3D a[i];\r            a[i] \x3D a[j];\r            a[j] \x3D x;\r          }\r        }", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FailedTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludeGroup"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="TestGroup"
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
			Name="NotImplementedCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PassedTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SkippedTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StopTestOnFail"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
