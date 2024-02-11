#tag Class
Protected Class InterTests
Inherits TestGroup
	#tag Method, Flags = &h0
		Sub ExprAccessTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim expr As New DragonBook.Inter.Access(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("arr", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int),_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int),_
		  DragonBook.Symbols.Type.Float)
		  Assert.IsNotNil expr, "IsNotNil expr"
		  
		  Dim expe As String= "arr[ x ]"
		  Dim curr As String= expr.ToString
		  Assert.AreSame expe, curr, "AreSame expe, curr"
		  
		  Call expr.Gen
		  Call expr.Reduce
		  
		  bsOut.Position= 0
		  expe= "\tt1 = arr[ x ]\n"
		  curr= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExprAndTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim expr As New DragonBook.Inter.AndStmt(_
		  DragonBook.Lexical.Word.And_,_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Bool),_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("y", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Bool)_
		  )
		  Assert.IsNotNil expr, "IsNotNil expr"
		  
		  Dim expe As String= "x && y"
		  Dim curr As String= expr.ToString
		  Assert.AreSame expe, curr, "AreSame expe, curr"
		  
		  Call expr.Gen
		  Call expr.Reduce
		  
		  bsOut.Position= 0
		  expe= "\tiffalse x goto L1\n\tiffalse y goto L1\n\tt1 = true\n\tgoto L2\nL1:\tt1 = false\nL2:"
		  curr= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExprArithTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim expr As New DragonBook.Inter.Arith(_
		  New DragonBook.Lexical.Token(Asc("+")),_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int),_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("y", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int)_
		  )
		  Assert.IsNotNil expr, "IsNotNil expr"
		  
		  Dim expe As String= "x + y"
		  Dim curr As String= expr.ToString
		  Assert.AreSame expe, curr, "AreSame expe, curr"
		  
		  Call expr.Gen
		  Call expr.Reduce
		  
		  bsOut.Position= 0
		  expe= "\tt1 = x + y\n"
		  curr= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExprIdTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim expr As New DragonBook.Inter.Id(_
		  New DragonBook.Lexical.Word("example", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int)
		  Assert.IsNotNil expr, "IsNotNil expr"
		  
		  Dim expe As String= "example"
		  Dim curr As String= expr.ToString
		  Assert.AreSame expe, curr, "AreSame expe, curr"
		  
		  Call expr.Gen
		  Call expr.Reduce
		  
		  bsOut.Position= 0
		  expe= Chr(0)
		  curr= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExprOrTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim expr As New DragonBook.Inter.OrStmt(_
		  DragonBook.Lexical.Word.Or_,_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Bool),_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("y", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Bool)_
		  )
		  Assert.IsNotNil expr, "IsNotNil expr"
		  
		  Dim expe As String= "x || y"
		  Dim curr As String= expr.ToString
		  Assert.AreSame expe, curr, "AreSame expe, curr"
		  
		  Call expr.Gen
		  Call expr.Reduce
		  
		  bsOut.Position= 0
		  expe= "\tif x goto L3\n\tiffalse y goto L1\nL3:\tt1 = true\n\tgoto L2\nL1:\tt1 = false\nL2:"
		  curr= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExprRelTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim expr As New DragonBook.Inter.Rel(_
		  DragonBook.Lexical.Word.Eq,_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Bool),_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("y", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Bool)_
		  )
		  Assert.IsNotNil expr, "IsNotNil expr"
		  
		  Dim expe As String= "x == y"
		  Dim curr As String= expr.ToString
		  Assert.AreSame expe, curr, "AreSame expe, curr"
		  
		  Call expr.Gen
		  Call expr.Reduce
		  
		  bsOut.Position= 0
		  expe= "\tiffalse x == y goto L1\n\tt1 = true\n\tgoto L2\nL1:\tt1 = false\nL2:"
		  curr= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExprTempTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim expr As New DragonBook.Inter.Temp(DragonBook.Symbols.Type.Int)
		  Assert.IsNotNil expr, "IsNotNil expr"
		  
		  Dim expe As String= "t1"
		  Dim curr As String= expr.ToString
		  Assert.AreSame expe, curr, "AreSame expe, curr"
		  
		  Call expr.Gen
		  Call expr.Reduce
		  
		  bsOut.Position= 0
		  expe= Chr(0)
		  curr= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExprUnaryTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim expr As New DragonBook.Inter.Unary(_
		  New DragonBook.Lexical.Token(Asc("-")),_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int)_
		  )
		  Assert.IsNotNil expr, "IsNotNil expr"
		  
		  Dim expe As String= "- x"
		  Dim curr As String= expr.ToString
		  Assert.AreSame expe, curr, "AreSame expe, curr"
		  
		  Call expr.Gen
		  Call expr.Reduce
		  
		  bsOut.Position= 0
		  expe= "\tt1 = - x\n"
		  curr= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StmtDoTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim stmt As New DragonBook.Inter.DoStmt(_
		  New DragonBook.Inter.Set(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int),_
		  New DragonBook.Inter.Constant(0)),_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("b", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Bool))
		  Assert.IsNotNil stmt, "IsNotNil stmt"
		  
		  stmt.Gen stmt.Newlabel, stmt.Newlabel
		  
		  bsOut.Position= 0
		  Dim expe As String= "\tx = 0\nL3:\tif b goto L1\n"
		  Dim curr As String= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StmtElseTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim stmt As New DragonBook.Inter.ElseStmt(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("b", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Bool),_
		  New DragonBook.Inter.Set(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int),_
		  New DragonBook.Inter.Constant(0)),_
		  New DragonBook.Inter.Set(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int),_
		  New DragonBook.Inter.Constant(42)))
		  Assert.IsNotNil stmt, "IsNotNil stmt"
		  
		  stmt.Gen stmt.Newlabel, stmt.Newlabel
		  
		  bsOut.Position= 0
		  Dim expe As String= "\tiffalse b goto L4\nL3:\tx = 0\n\tgoto L2\nL4:\tx = 42\n"
		  Dim curr As String= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StmtIfTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim stmt As New DragonBook.Inter.IfStmt(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("b", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Bool),_
		  New DragonBook.Inter.Set(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int),_
		  New DragonBook.Inter.Constant(0)))
		  Assert.IsNotNil stmt, "IsNotNil stmt"
		  
		  stmt.Gen stmt.Newlabel, stmt.Newlabel
		  
		  bsOut.Position= 0
		  Dim expe As String= "\tiffalse b goto L2\nL3:\tx = 0\n"
		  Dim curr As String= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StmtSeqTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim set As New DragonBook.Inter.Set(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int),_
		  New DragonBook.Inter.Constant(42))
		  
		  Dim setElem As New DragonBook.Inter.SetElem(_
		  New DragonBook.Inter.Access(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("arr", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Float),_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int), _
		  DragonBook.Symbols.Type.Float),_
		  New DragonBook.Inter.Constant(42.0))
		  
		  Dim stmt As New DragonBook.Inter.Seq(set, setElem)
		  Assert.IsNotNil stmt, "IsNotNil stmt"
		  
		  stmt.Gen stmt.Newlabel, stmt.Newlabel
		  
		  bsOut.Position= 0
		  Dim expe As String= "\tx = 42\nL3:\tarr [ x ] = 42.0\n"
		  Dim curr As String= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StmtSetElemTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim stmt As New DragonBook.Inter.SetElem(_
		  New DragonBook.Inter.Access(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("arr", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Float),_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int), _
		  DragonBook.Symbols.Type.Float),_
		  New DragonBook.Inter.Constant(42.0))
		  
		  stmt.Gen stmt.Newlabel, stmt.Newlabel
		  
		  bsOut.Position= 0
		  Dim expe As String= "\tarr [ x ] = 42.0\n"
		  Dim curr As String= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StmtSetTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim stmt As New DragonBook.Inter.Set(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int),_
		  New DragonBook.Inter.Constant(42))
		  Assert.IsNotNil stmt, "IsNotNil stmt"
		  
		  stmt.Gen stmt.Newlabel, stmt.Newlabel
		  
		  bsOut.Position= 0
		  Dim expe As String= "\tx = 42\n"
		  Dim curr As String= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StmtWhileTest()
		  DragonBook.Inter.Node.ResetLabels
		  DragonBook.Inter.Temp.ResetCount
		  
		  Dim bsOut As New BinaryStream(New MemoryBlock(1))
		  DragonBook.Parser.Out= bsOut
		  
		  Dim stmt As New DragonBook.Inter.WhileStmt(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("b", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Bool),_
		  New DragonBook.Inter.Set(_
		  New DragonBook.Inter.Id(New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger), DragonBook.Symbols.Type.Int),_
		  New DragonBook.Inter.Constant(0)))
		  Assert.IsNotNil stmt, "IsNotNil stmt"
		  
		  stmt.Gen stmt.Newlabel, stmt.Newlabel
		  
		  bsOut.Position= 0
		  Dim expe As String= "\tiffalse b goto L2\nL3:\tx = 0\n\tgoto L1\n"
		  Dim curr As String= bsOut.Read(bsOut.Length)
		  Assert.AreSame expe.FrmtEsc, curr, "AreSame expe, curr"
		  
		  DragonBook.Parser.Out= Nil
		End Sub
	#tag EndMethod


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
