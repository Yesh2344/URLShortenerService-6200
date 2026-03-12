# URL Shortener Service
[![Build Status](https://travis-ci.org/travis-ci/travis-web.svg?branch=master)](https://travis-ci.org/travis-ci/travis-web)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Table of Contents
1. [Introduction](#introduction)
2. [Installation](#installation)
3. [Usage](#usage)
4. [API Docs](#api-docs)
5. [Testing](#testing)

## Introduction
URL Shortener Service is a Bash-based application that provides a simple and convenient way to shorten URLs.

## Installation
To install the URL Shortener Service, follow these steps:
1. Clone the repository using `git clone https://github.com/username/url-shortener-service.git`
2. Navigate to the project directory using `cd url-shortener-service`
3. Install the dependencies using `bash install.sh`
4. Start the service using `bash main.sh`

## Usage
To use the URL Shortener Service, you can use the following commands:
- `bash main.sh --shorten <url>` to shorten a URL
- `bash main.sh --resolve <short_url>` to resolve a shortened URL

## API Docs
The URL Shortener Service provides a RESTful API with the following endpoints:
- `POST /shorten` to shorten a URL
- `GET /resolve/<short_url>` to resolve a shortened URL

## Testing
To test the URL Shortener Service, you can use the following command:
- `bash test.sh`
---
Last updated: v2.8.0
