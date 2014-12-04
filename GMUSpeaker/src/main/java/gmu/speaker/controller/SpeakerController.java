package gmu.speaker.controller;

import javax.servlet.http.HttpServletRequest;

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
		if ("speaker".equals(register.getRole())) {
			Speaker speaker = new Speaker();
			speaker.setName(register.getName());
			speaker.setEmail(register.getEmail());
			FileManager.StoreSpeaker(speaker);
		}
		ModelAndView modelView = new ModelAndView("home");
		modelView.addObject("globaluser", register);
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/logout")
	public ModelAndView handleLogoutSbmit(HttpServletRequest request) {
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
	public ModelAndView handleHomeRequest(HttpServletRequest request) {
		if (((User) request.getSession().getAttribute("globaluser")).getEmail() == null) {
			return returnApp();
		}
		ModelAndView modelView = new ModelAndView("home");
		return modelView;
	}

	@RequestMapping(value = "/searchtalk")
	public ModelAndView handleSearchtalkRequest() {
		ModelAndView modelView = new ModelAndView("searchtalk");
		modelView.addObject("speakers", FileManager.getSpeakerlist());
		return modelView;
	}

	@RequestMapping(value = "/requestspeaker")
	public ModelAndView handleRequestspeakerRequest() {
		ModelAndView modelView = new ModelAndView("requestspeaker");
		modelView.addObject("requestSpeaker", new RequestSpeaker());
		modelView.addObject("speakers", FileManager.getSpeakerMap());
		return modelView;
	}

	@RequestMapping(value = "/requestspeakersubmit")
	public ModelAndView handlerequestspeakersubmit(
			@ModelAttribute RequestSpeaker requestSpeaker) {
		FileManager.StoreRequestSpeaker(requestSpeaker);
		ModelAndView modelView = new ModelAndView("home");
		return modelView;
	}

	@RequestMapping(value = "/updateprofile")
	public ModelAndView handleupdateprofileRequest(HttpServletRequest request) {
		ModelAndView modelView = new ModelAndView("updateprofile");
		String email = ((User) request.getSession().getAttribute("globaluser"))
				.getEmail();
		Speaker speaker = FileManager.getSpeakerByEmail(email);
		modelView.addObject("profile", speaker);
		return modelView;
	}

	@RequestMapping(value = "/updateprofilesubmit")
	public ModelAndView handleupdateprofilesubmit(
			@ModelAttribute Speaker profile) {
		FileManager.editSpeaker(profile);
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
	public ModelAndView handleAddtalksubmit(@ModelAttribute Talk addTalk,
			HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("globaluser");
		addTalk.setUser(user);
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
	public ModelAndView handleDeleteSpeakerSbmit(@RequestParam String email) {
		FileManager.deleteSpeaker(email);
		FileManager.deleteUser(email);
		ModelAndView modelView = new ModelAndView("deletespeaker");
		modelView.addObject("speakers", FileManager.getSpeakerlist());
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/requesttalkspeakersubmit")
	public ModelAndView handlerequesttalkspeakersubmit(
			@RequestParam String email) {
		Speaker speaker = FileManager.getSpeakerByEmail(email);
		RequestSpeaker requestSpeaker = new RequestSpeaker();
		requestSpeaker.setSpeaker(speaker);
		ModelAndView modelView = new ModelAndView("requestspeaker");
		modelView.addObject("requestSpeaker", requestSpeaker);
		modelView.addObject("speakers", FileManager.getSpeakerMap());
		return modelView;
	}

	@RequestMapping(value = "/deletetalk")
	public ModelAndView handleDeletetalkRequest(HttpServletRequest request) {
		ModelAndView modelView = new ModelAndView("deletetalk");
		User globaluser = (User) request.getSession()
				.getAttribute("globaluser");
		if ("admin".equals(globaluser.getRole())) {
			modelView.addObject("talks", FileManager.getTalklist());
		} else if ("speaker".equals(globaluser.getRole())) {
			modelView.addObject("talks",
					FileManager.getTalksForUser(globaluser.getEmail()));
		}
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
	public ModelAndView handleEditSpeakerSbmit(@RequestParam String email) {
		ModelAndView modelView = new ModelAndView("editspeakerform");
		modelView
				.addObject("editSpeaker", FileManager.getSpeakerByEmail(email));
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
	public ModelAndView handleEdittalkRequest(HttpServletRequest request) {
		ModelAndView modelView = new ModelAndView("edittalk");
		User globaluser = (User) request.getSession()
				.getAttribute("globaluser");
		if ("admin".equals(globaluser.getRole())) {
			modelView.addObject("talks", FileManager.getTalklist());
		} else if ("speaker".equals(globaluser.getRole())) {
			modelView.addObject("talks",
					FileManager.getTalksForUser(globaluser.getEmail()));
		}
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/edittalkrequest")
	public ModelAndView handleEditTalkRequest(@RequestParam String id) {
		ModelAndView modelView = new ModelAndView("edittalkform");
		modelView.addObject("editTalk", FileManager.getTalk(id));
		return modelView;
	}

	@RequestMapping(value = "/edittalksubmit")
	public ModelAndView handleEdittalksubmit(@ModelAttribute Talk editTalk,
			HttpServletRequest request) {
		FileManager.editTalk(editTalk);
		ModelAndView modelView = new ModelAndView("home");
		return modelView;
	}

	@RequestMapping(value = "/listtalks")
	public ModelAndView handleGettalksRequest() {
		ModelAndView modelView = new ModelAndView("listtalks");
		modelView.addObject("talks", FileManager.getTalklist());
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/categorysearch")
	public ModelAndView handleCategorySearchSbmit(@RequestParam String category) {
		ModelAndView modelView = new ModelAndView("listtalks");
		if ("allcategories".equals(category)) {
			modelView.addObject("talks", FileManager.getTalklist());
		} else {
			modelView.addObject("talks", FileManager.categorySearch(category));
		}
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/speakersearch")
	public ModelAndView handleApeakersSearchSbmit(@RequestParam String name) {
		ModelAndView modelView = new ModelAndView("listtalks");
		if ("allspeakers".equals(name)) {
			modelView.addObject("talks", FileManager.getTalklist());
		} else {
			modelView.addObject("talks", FileManager.speakerSearch(name));
		}
		return modelView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/keywordsearch")
	public ModelAndView handleKeywordSearchSbmit(@RequestParam String keyword) {
		ModelAndView modelView = new ModelAndView("listtalks");
		modelView.addObject("talks", FileManager.keywordSearch(keyword));
		return modelView;
	}

	public ModelAndView returnApp() {
		ModelAndView modelView = new ModelAndView("app");
		modelView.addObject("login", new Login());
		modelView.addObject("register", new User());
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
