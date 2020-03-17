
package cz.uhk.fim.config;

import org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter;
import org.apache.struts2.dispatcher.servlet.StrutsServlet;

import javax.servlet.annotation.WebFilter;


@WebFilter("/*")
public class TicketStrutsFilter extends StrutsPrepareAndExecuteFilter {


}
