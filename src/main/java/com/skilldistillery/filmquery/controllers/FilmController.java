package com.skilldistillery.filmquery.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.filmquery.database.DatabaseAccessor;
import com.skilldistillery.filmqueryproject.entities.Film;

@Controller
public class FilmController {
	private final DatabaseAccessor filmsDAO;

	public FilmController(DatabaseAccessor filmDAO) {
		this.filmsDAO = filmDAO;
	}

	@RequestMapping(path = { "/", "index.do" })
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/index.jsp");
		return mv;
	}

	@RequestMapping(path = { "findById.do" })
	public ModelAndView findFilmById(@RequestParam("id") int id) {
		Film film = null;
		ModelAndView mv = new ModelAndView();
		try {
			film = filmsDAO.findFilmById(id);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		mv.setViewName("WEB-INF/film.jsp");
		mv.addObject("film", film);
		return mv;
	}

	@RequestMapping(path = { "findByKeyword.do" })
	public ModelAndView findFilmByKeyword(@RequestParam("title") String title) {
		List<Film> films = null;
		ModelAndView mv = new ModelAndView();
		try {
			films = filmsDAO.findFilmByKeyword(title);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		mv.setViewName("WEB-INF/findfilms.jsp");
		mv.addObject("films", films);
		return mv;
	}

	@RequestMapping(path = { "createAFilm.do"})
	public ModelAndView createAFilm(Film createAFilm) {
		System.out.println(createAFilm);
	ModelAndView mv = new ModelAndView();
	try {
		createAFilm = filmsDAO.createNewFilm(createAFilm);
	} catch(SQLException e) {
		e.printStackTrace();
	}
	  mv.setViewName("WEB-INF/createfilm.jsp");
	  mv.addObject("createAFilm", createAFilm);
	  return mv;
	}
}