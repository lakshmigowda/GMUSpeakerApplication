package gmu.speaker.controller;

import gmu.speaker.model.BecomeSpeaker;
import gmu.speaker.model.SearchTalk;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SpeakerController {

	@RequestMapping(value = "/app")
	public ModelAndView handleWelcomeRequest() {
		ModelAndView modelView = new ModelAndView("app");
		return modelView;
	}

	@RequestMapping(value = "/home")
	public ModelAndView handleHomeRequest() {
		ModelAndView modelView = new ModelAndView("home");
		return modelView;
	}

	@RequestMapping(value = "/searchtalk")
	public ModelAndView handleSearchtalkRequest() {
		ModelAndView modelView = new ModelAndView("searchtalk");
		modelView.addObject("categoryList", null);
		modelView.addObject("speakerList", null);
		return modelView;
	}

	@RequestMapping(value = "/requestspeaker")
	public ModelAndView handleRequestspeakerRequest() {
		ModelAndView modelView = new ModelAndView("requestspeaker");
		modelView.addObject("requestSpeaker", new SearchTalk());
		return modelView;
	}

	@RequestMapping(value = "/requestspeakersubmit")
	public ModelAndView handlerequestspeakersubmit(
			@ModelAttribute SearchTalk requestSpeaker) {
		ModelAndView modelView = new ModelAndView("requestspeaker");
		modelView.addObject("requestspeaker", new SearchTalk());
		return modelView;
	}

	@RequestMapping(value = "/becomespeaker")
	public ModelAndView handleBecomespeakerRequest() {
		ModelAndView modelView = new ModelAndView("becomespeaker");
		modelView.addObject("becomeSpeaker", new BecomeSpeaker());
		return modelView;
	}

	@RequestMapping(value = "/becomespeakersubmit")
	public ModelAndView handleBecomespeakersubmit(
			@ModelAttribute BecomeSpeaker becomeSpeaker) {
		ModelAndView modelView = new ModelAndView("becomespeaker");
		modelView.addObject("becomeSpeaker", becomeSpeaker);
		return modelView;
	}

	@RequestMapping(value = "/faq")
	public ModelAndView handleFaqRequest() {
		ModelAndView modelView = new ModelAndView("faq");
		return modelView;
	}

	@RequestMapping(value = "/search")
	public ModelAndView handleSearchRequest() {
		ModelAndView modelView = new ModelAndView("search");
		return modelView;
	}

}
