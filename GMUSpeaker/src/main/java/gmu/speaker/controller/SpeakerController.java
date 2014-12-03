package gmu.speaker.controller;

import gmu.speaker.model.Login;
import gmu.speaker.model.RequestSpeaker;
import gmu.speaker.model.Speaker;
import gmu.speaker.model.Talk;
import gmu.speaker.model.User;
import gmu.speaker.utility.FileManager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes({ "globaluser" })
public class SpeakerController {

	@RequestMapping(value = "/app")
	public ModelAndView handleApp() {
		ModelAndView modelView = new ModelAndView("app");
		modelView.addObject("login", new Login());
		modelView.addObject("register", new User());
		return modelView;
	}

	@RequestMapping(value = "/loginsubmit")
	public ModelAndView handleLoginsubmit(@ModelAttribute Login login) {
		User user = FileManager.checklogin(login);
		ModelAndView modelView = new ModelAndView("home");
		modelView.addObject("globaluser", user);
		return modelView;
	}

	@RequestMapping(value = "/registersubmit")
	public ModelAndView handleRegistersubmit(@ModelAttribute User register) {
		FileManager.storeUser(register);
		ModelAndView modelView = new ModelAndView("home");
		modelView.addObject("globaluser", register);
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/logout")
	public ModelAndView handleLogoutSbmit() {
		ModelAndView modelView = new ModelAndView("app");
		modelView.addObject("login", new Login());
		modelView.addObject("register", new User());
		modelView.addObject("globaluser", new User());
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/guestlogin")
	public ModelAndView handleGuestLoginSbmit() {
		ModelAndView modelView = new ModelAndView("home");
		User guestUser = new User();
		guestUser.setName("Guest");
		guestUser.setEmail("guest@gmu.edu");
		guestUser.setRole("guest");
		modelView.addObject("globaluser", guestUser);
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
		modelView.addObject("requestSpeaker", new RequestSpeaker());
		return modelView;
	}

	@RequestMapping(value = "/requestspeakersubmit")
	public ModelAndView handlerequestspeakersubmit(
			@ModelAttribute RequestSpeaker requestSpeaker) {
		FileManager.StoreRequestSpeaker(requestSpeaker);
		ModelAndView modelView = new ModelAndView("home");
		return modelView;
	}

	@RequestMapping(value = "/becomespeaker")
	public ModelAndView handleBecomespeakerRequest() {
		ModelAndView modelView = new ModelAndView("becomespeaker");
		modelView.addObject("becomeSpeaker", new Speaker());
		return modelView;
	}

	@RequestMapping(value = "/becomespeakersubmit")
	public ModelAndView handleBecomespeakersubmit(
			@ModelAttribute Speaker becomeSpeaker) {
		FileManager.StoreSpeaker(becomeSpeaker);
		ModelAndView modelView = new ModelAndView("home");
		return modelView;
	}

	@RequestMapping(value = "/addtalk")
	public ModelAndView handleAddtalkRequest() {
		ModelAndView modelView = new ModelAndView("addtalk");
		modelView.addObject("addTalk", new Talk());
		return modelView;
	}

	@RequestMapping(value = "/addtalksubmit")
	public ModelAndView handleAddtalksubmit(@ModelAttribute Talk addTalk) {
		FileManager.StoreTalk(addTalk);
		ModelAndView modelView = new ModelAndView("home");
		return modelView;
	}

	@RequestMapping(value = "/deletespeaker")
	public ModelAndView handleDeletespeakerRequest() {
		ModelAndView modelView = new ModelAndView("deletespeaker");
		modelView.addObject("speakers", FileManager.getSpeakerlist());
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/deletespeakersubmit")
	public ModelAndView handleDeleteSpeakerSbmit(@RequestParam String id) {
		FileManager.deleteSpeaker(id);
		ModelAndView modelView = new ModelAndView("deletespeaker");
		modelView.addObject("speakers", FileManager.getSpeakerlist());
		return modelView;
	}

	@RequestMapping(value = "/deletetalk")
	public ModelAndView handleDeletetalkRequest() {
		ModelAndView modelView = new ModelAndView("deletetalk");
		modelView.addObject("talks", FileManager.getTalklist());
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/deletetalksubmit")
	public ModelAndView handleDeleteTalkSbmit(@RequestParam String id) {
		FileManager.deleteTalk(id);
		ModelAndView modelView = new ModelAndView("deletetalk");
		modelView.addObject("talks", FileManager.getTalklist());
		return modelView;
	}

	@RequestMapping(value = "/editspeaker")
	public ModelAndView handleEditspeakerRequest() {
		ModelAndView modelView = new ModelAndView("editspeaker");
		modelView.addObject("speakers", FileManager.getSpeakerlist());
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/editspeakerrequest")
	public ModelAndView handleEditSpeakerSbmit(@RequestParam String id) {
		ModelAndView modelView = new ModelAndView("editspeakerform");
		modelView.addObject("editSpeaker", FileManager.getSpeaker(id));
		return modelView;
	}

	@RequestMapping(value = "/editspeakersubmit")
	public ModelAndView handleEditspeakersubmit(
			@ModelAttribute Speaker editSpeaker) {
		FileManager.editSpeaker(editSpeaker);
		ModelAndView modelView = new ModelAndView("home");
		return modelView;
	}

	@RequestMapping(value = "/edittalk")
	public ModelAndView handleEdittalkRequest() {
		ModelAndView modelView = new ModelAndView("edittalk");
		modelView.addObject("talks", FileManager.getTalklist());
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/edittalkrequest")
	public ModelAndView handleEditTalkSbmit(@RequestParam String id) {
		ModelAndView modelView = new ModelAndView("edittalkform");
		modelView.addObject("editTalk", FileManager.getTalk(id));
		return modelView;
	}

	@RequestMapping(value = "/edittalksubmit")
	public ModelAndView handleEdittalksubmit(@ModelAttribute Talk editTalk) {
		FileManager.editTalk(editTalk);
		ModelAndView modelView = new ModelAndView("home");
		return modelView;
	}

	@RequestMapping(value = "/addadmin")
	@ResponseBody
	public String handleAddAdmin() {
		User user = new User();
		user.setEmail("admin@gmu.edu");
		user.setName("admin");
		user.setPassword("admin");
		user.setRepassword("admin");
		user.setRole("admin");
		FileManager.storeUser(user);
		return "success";
	}
}
