
package cz.uhk.fim.config;

import org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter;
import org.apache.struts2.dispatcher.servlet.StrutsServlet;

import javax.servlet.annotation.WebFilter;


@WebFilter
public class TicketStrutsFilter extends StrutsPrepareAndExecuteFilter {

    private static final long serialVersionUID = 4919365268043339351L;

}
