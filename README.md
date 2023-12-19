# BrainS GitHub Explorer App

BrainS is a simple Flutter application built using the GetX state management library. It allows users to explore GitHub repositories related to the Flutter framework. The app provides features such as fetching repositories, storing them locally, pagination, offline browsing, sorting, and more.

## Table of Contents
- [Features](#features)
- [Setup](#setup)
- [Dependencies](#dependencies)
- [Folder Structure](#folder-structure)
- [Contributing](#contributing)
- [License](#license)

## Features

1. **Fetch Repositories**: The app fetches a list of GitHub repositories using the GitHub API with "Flutter" as the query keyword.

2. **Local Database Storage**: Fetched repository data is stored locally using SQFLite, enabling offline browsing.

3. **Pagination**: Repositories are fetched in batches of 10, supporting smooth scrolling and pagination.

4. **Periodic Data Refresh**: The app refreshes data from the API no more frequently than once every 30 minutes.

5. **Sortable Repository List**: Users can sort the repository list by either the last update date-time or star count.

6. **Persistent Sorting Option**: The selected sorting option persists across app sessions.

7. **Repository Details Page**: Clicking on a repository item in the list navigates to a details page, displaying relevant information.

8. **Offline Browsing**: The app loads and saves repository data for offline use.

## Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/engrnazrul/brain_station_test_app.git

## Dependencies

   # GET
   get: 4.6.5
   get_storage: 2.1.1
   # DIO
   dio: 4.0.6
   dio_http_cache: 0.3.0
   # FONT
   google_fonts: 4.0.4
   #IMAGES, SLIDERS, LAYOUTS
   cached_network_image: 3.2.3
   flutter_svg: 2.0.6
   cupertino_icons: any
   shimmer: 3.0.0
   # Local Storage
   sqflite: 2.3.0

## Folder Structure
   lib/
   |-- app/
   |   |-- exceptions/
   |   |-- middlewares/
   |   |-- models/
   |   |-- modules/
   |   |-- providers/
   |   |-- repositories/
   |   |-- routes/
   |   |-- services/
   |-- common/
   |   |-- custom_trace.dart
   |   |-- helper.dart
   |   |-- ui.dart
   |-- main.dart
   |-- README.md
   |-- ...

## Contributing

   We welcome contributions to this project. If you would like to contribute to the development or report issues, please follow these guidelines:
   
   1. Fork the repository.
   
   2. Create a new branch for your feature or bug fix.
   
   3. Make your changes and commit them with descriptive messages.
   
   4. Push your changes to your fork.
   
   5. Submit a pull request to the main repository.

## License
   License status presently unlicensed
