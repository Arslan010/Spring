package edu.jsp.patient.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import edu.jsp.patient.config.WebInitializer;

@Configuration
@ComponentScan("edu.jsp.patient")
public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {WebInitializer.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}

}
