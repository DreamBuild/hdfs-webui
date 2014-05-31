package webui.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController
{
	@RequestMapping("explorer")
	public String showIndex()
	{
		return "explorer";
	}
}
