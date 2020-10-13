package com.front;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
public interface Command_ajax {
	public abstract void execute(HttpServletRequest request, HttpServletResponse response);
}
