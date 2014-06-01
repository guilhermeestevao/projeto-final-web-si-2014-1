package br.com.ufc.si.util;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.com.ufc.si.bean.UsuarioBean;
import br.com.ufc.si.controller.UsuarioController;

@Intercepts
public class AutenticacaoInterceptor implements Interceptor{

	private final Result result;
	private final UsuarioBean usuarioLogado;
	
	public AutenticacaoInterceptor(Result result,UsuarioBean usuarioLogado){
		this.result = result;
		this.usuarioLogado = usuarioLogado;
	}
	
	public boolean accepts(ResourceMethod method) {
		return !usuarioLogado.isLogado() && method.containsAnnotation(Restrito.class);
	}

	public void intercept(InterceptorStack stack, ResourceMethod method,
			Object obj) throws InterceptionException {
		result.redirectTo(UsuarioController.class).loginForm();
	}

}
