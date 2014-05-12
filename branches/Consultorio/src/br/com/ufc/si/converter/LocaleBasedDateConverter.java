package br.com.ufc.si.converter;

import static com.google.common.base.Strings.isNullOrEmpty;

import java.text.DateFormat;
import java.text.MessageFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;
import java.util.ResourceBundle;

import br.com.caelum.vraptor.Convert;
import br.com.caelum.vraptor.Converter;
import br.com.caelum.vraptor.converter.ConversionError;
import br.com.caelum.vraptor.core.Localization;
import br.com.caelum.vraptor.ioc.RequestScoped;

@Convert(Date.class)
@RequestScoped
public class LocaleBasedDateConverter
	implements Converter<Date> {

	private final Localization localization;

	public LocaleBasedDateConverter(Localization localization) {
		this.localization = localization;
	}

	public Date convert(String value, Class<? extends Date> type, ResourceBundle bundle) {
		if (isNullOrEmpty(value)) {
			return null;
		}

		Locale locale = localization.getLocale();
		if (locale == null) {
			locale = Locale.getDefault();
		}

		DateFormat formatDateTime = DateFormat.getDateTimeInstance(  
			DateFormat.MEDIUM, DateFormat.MEDIUM, locale);  
		try {  
			return formatDateTime.parse(value);  
		} catch (ParseException pe) {  
			DateFormat formatDate = DateFormat.getDateInstance(  
				DateFormat.SHORT, locale);  
			try {  
			return formatDate.parse(value);  
			} catch (ParseException pe1) {  
			throw new ConversionError(MessageFormat.format(  
				bundle.getString("is_not_a_valid_date"), value));  
			}  
		}  
	}

}
