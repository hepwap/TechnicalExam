package com.springboot.service;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.springboot.model.User;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;

@Service
public class JsonParser {

	public ArrayList<User> parseJson () {
		String url = "http://s3-ap-southeast-1.amazonaws.com/fundo/js/profiles.json";
		ArrayList<User> parsedJsonUser = new ArrayList<User>();
		try {
			OkHttpClient client = new OkHttpClient();
			Request request = new Request.Builder()
				.url(url)
				.build();
			
			Response response = client.newCall(request).execute();
			String result = response.body().string();
			
			final GsonBuilder gsonBuilder = new GsonBuilder();
			final Gson gson = gsonBuilder.create();

			User[] users = gson.fromJson(result, User[].class);
			
			for(User user : users){
				parsedJsonUser.add(user);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return parsedJsonUser;
	}
	
	public User getUserDetails(String id) {
		ArrayList<User> users = parseJson();
		User userDetails = new User();
		for(User user : users) {
			if(user.getId().equals(id)) {
				userDetails = user;
			}
		}
		return userDetails;
	}
	
}
