/***
 * Copyright (c) 2009 Caelum - www.caelum.com.br/opensource
 * All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * 	http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package br.com.ufc.vraptor.blank;

import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.ufc.si.dao.DentistaDAOHibernate;
import br.com.ufc.si.modelo.Dentista;

@Resource
public class IndexController {

	private final Result result;
	private final DentistaDAOHibernate dao;

	public IndexController(Result result, DentistaDAOHibernate dao) {
		this.result = result;
		this.dao = dao;
	}

	@Path("/")
	public List<Dentista> index() {
		return lista();
	}
	
	public List<Dentista> lista() {
		return dao.listar();
	}
	

}
