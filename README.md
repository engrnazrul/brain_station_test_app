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
   git clone https://github.com/engrnazrul/BrainSTestApp.git
