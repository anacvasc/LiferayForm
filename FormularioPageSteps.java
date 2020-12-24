package com.liferay.teste.formulario;

import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;

public class FormularioPageSteps {

	private FormularioPage formulario;

	public FormularioPageSteps() {
		this.formulario = new FormularioPage();
	}

	@Dado("que o form estah aberto")
	public void abreForm() {
		this.formulario.abreFormulario();
	}

	@Dado("o idioma {string} estah selecionado")
	public void verificaIdiomaSelecionado(String idioma) {
		this.formulario.isIdiomaSelecionado(idioma);
	}

	@Dado("o texto {string} eh exibido na pagina")
	public void verificaTextoPresente(String texto) {
		this.formulario.isLabelPartyRockCorreto(texto);
	}

	@Quando("altero o idioma")
	public void alteraIdioma() {
		this.formulario.alteraIdioma();
	}

	@Quando("eh preenchido o formulario com o nome {string}, data de nascimento {string} e motivo {string}")
	public void preencheFormulario(String nome, String dataNascimento, String motivo) {
		this.formulario.preenche(nome, dataNascimento, motivo);
	}

	@Quando("o formulario eh submetido")
	public void submeteFormulario() {
		this.formulario.submete();
	}

	@Entao("a mensagem de erro {string} eh exibida em todos os campos")
	public void mensagemDeErroTodosCampos(String mensagem) {
		this.formulario.isMensagemExibidaTodosCampos(mensagem);
	}

}
