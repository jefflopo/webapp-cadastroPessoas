<app>

  <div class="app">
    <h3 style="text-align: center;">Cadastro de Pessoas</h3>

    <form ref="cad" onsubmit={adicionar}>
		<div style="text-align: center;">
			<label>Nome:
			  <input ref="nome" type="text" name="nome">
			</label>
			<br/><br/><br/>
			<label>Sobrenome:
			  <input ref="sobrenome" type="text" name="sobrenome">
			</label>
			<br/><br/><br/>
			<label>Data de Nascimento:
				<input ref="dataNasc" type="date" name="dataNasc">
			</label>
			<br/><br/><br/>
			<label>E-mail:
			  <input ref="email" type="email" name="email">
			</label>
			<br/><br/><br/>
			<input ref="cadastrar" type="submit" value="Cadastrar">
		</div>
	</form>
	
	
	
	
	<table style="width:100%">
	  <tr>
		<th>NOME</th>
		<th>SOBRENOME</th> 
		<th>DATA DE NASCIMENTO</th>
		<th>E-MAIL</th>
	  </tr>
		<loop>
		  <!-- `dados` here might be a huge collection of data... -->
			<tr each="{ dado in dados }" no-reorder>
			  <td>
				<center>{ dado.nome }</center>
			  </td>
			  <td>
				<center>{ dado.sobrenome }</center>
			  </td>
			  <td>
				<center>{ dado.dataNasc }</center>
			  </td>
			  <td>
				<center>{ dado.email }</center>
			  </td>
			</tr>
		</loop>
	</table>
	
  </div>
  
  <script>
	this.dados = [
		{ nome: 'Nick', sobrenome: 'Doe', dataNasc: '16/01/1998', email: 'doe.nick@email.com' } ,
		{ nome: 'Patricia', sobrenome: 'Ramos', dataNasc: '06/10/1994', email: 'paty.ramos@email.com' } ,
		{ nome: 'Denis', sobrenome: 'Pedrosa', dataNasc: '26/05/1988', email: 'denis.pedro@email.com' } ,
		{ nome: 'Maria', sobrenome: 'Julia', dataNasc: '15/07/1992', email: 'julia.maria@email.com' } ,
	]
  </script>
  
  <!-- const dados = [] -->
	<!-- adicionar(dado) { -->
		<!-- this.dados.push(dado) -->
	<!-- } -->
	
	<!-- adicionar(e) { -->
		<!-- var dado = { -->
			<!-- nome: this.nome.value, -->
			<!-- sobrenome: this.sobrenome.value, -->
			<!-- dataNasc: this.dataNasc.value, -->
			<!-- email: this.email.value -->
		<!-- } -->
		<!-- this.parent.adicionar(dado) -->
		<!-- e.target.reset() -->
	<!-- } -->

  <script>
    this.on('mount', () => {
      this.dados = this.store.getState().sampleReducer.dados
      this.update()
    })
	
	this.adicionar = (e) => {
		<!-- var form = this.refs.cad, -->
			<!-- nome = this.refs.nome.value, -->
			<!-- sobrenome = this.refs.sobrenome.value, -->
			<!-- dataNasc = this.refs.dataNasc.value, -->
			<!-- email = this.refs.email.value -->
		<!-- this.dados.push(this.form) -->
		let action ={
			type: 'ACTION',
			payload: new Promise((t,c) => {
				setTimeout(() => {
					t()
				}, 1000)
			})
		}
		
		this.store.dispatch(action).then(() => {
			console.log('Chamada Insercao array')
			this.dados = this.store.getState().sampleReducer.dados
			this.update()
		})
	}
	
  </script>
</app>
