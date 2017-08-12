package com.chaocharliehuang.relationships.services;

import org.springframework.stereotype.Service;

import com.chaocharliehuang.relationships.models.License;
import com.chaocharliehuang.relationships.repositories.LicenseRepository;

@Service
public class LicenseService {
	
	private LicenseRepository licenseRepository;
	
	public LicenseService(LicenseRepository licenseRepository) {
		this.licenseRepository = licenseRepository;
	}
	
	public void addLicense(License license) {
		licenseRepository.save(license);
	}
}
