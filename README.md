# parayada

A new Flutter project.

## Getting Started

1. Create flutter project using
''' sh
flutter create <project-name>
'''
2. Setup the Ground
    * This includes creating necessary directories, AppRoutes, Themes, Dependency Injection module, DB schema and more.
    * Added packages 
        * connectivity_plus
        * shared_preferences
        * get
        * intl
        * url_launcher
        * cached_network_image
        * flutter_svg
    * Added AppExport
        * Constants,
        * Errors - Exceptions and Failures
        * NetworkInfo
    * Added Utils
    * Added Data helpers
    * Added Localization
    * Added Routes
    * Added Theme
        * app style and
        * app decoration
3. Remaining
    * More widgets in widget directory
    * More Routes/Screen in presentation directory
    * Repository Design system

### The folder sturcture 
inspired from this [blog post](https://blog.adityasharma.co/building-flutter-apps-with-clean-architecture-using-getx#heading-folder-structure)
```
lib/
  ├── config/
  │     ├── injection/
  │     ├── router/
  │     └── themes/
  ├── data/
  │     ├── datasources/
  │     │    ├── local/
  │     │    └── remote/
  │     └── repositories/
  ├── domain/
  │     ├── models/
  │     └── repositories/
  ├── presentation/
  │     ├── controllers/
  │     ├── pages/
  │     └── widgets/
  ├── utils/
  │     ├── constants/
  │     ├── extensions/
  │     └── resources/
  └── main.dart
```

### My another folder structure that is genereated by GenAI

```
/lib
  /core
    /error
    /network
    /usecases
    /utils
  /features
    /feature1
      /data
        /datasources
        /models
        /repositories
      /domain
        /entities
        /repositories
        /usecases
      /presentation
        /bloc
        /pages
        /widgets
    /feature2
      /data
        /datasources
        /models
        /repositories
      /domain
        /entities
        /repositories
        /usecases
      /presentation
        /bloc
        /pages
        /widgets
  /main.dart
```

* **/core**: Contains the core functionalities that are shared across features, such as error handling, networking, use cases, and utilities.
* **/features**: Contains the different features of your app. Each feature has its own sub-folders for data, domain, and presentation.
    * **/data**: Includes data sources (API or local database), models (JSON parsing), and repositories (data access and manipulation).
    * **/domain**: Contains entities (simple data structures), repositories (abstract classes that define the expected functionality of the data layer), and use cases (business logic).
    * **/presentation**: Holds the UI part of the feature, including bloc for state management, pages for screens, and widgets for reusable UI components.
**/main.dart**: The entry point of the application.

This structure helps in maintaining a separation of concerns, making the code more testable, maintainable, and scalable. Remember to adjust the structure as needed for the specifics of your project.

#### Following is an exmple of above architecture
```
/lib
  /features
    /user_profile
      /data
        /datasources
          user_profile_local_data_source.dart
          user_profile_remote_data_source.dart
        /models
          user_profile_model.dart
        /repositories
          user_profile_repository_impl.dart
      /domain
        /entities
          user.dart
        /repositories
          user_profile_repository.dart
        /usecases
          get_user_profile.dart
          update_user_profile.dart
      /presentation
        /bloc
          user_profile_bloc.dart
          user_profile_event.dart
          user_profile_state.dart
        /pages
          user_profile_page.dart
        /widgets
          user_profile_widget.dart
```

Here’s a brief overview of what each file might contain:

* **[user_profile_local_data_source.dart](CleanArchitectureTemplate.md#user-profile-local-data-source)**: This would handle all the local data operations like reading from and writing to the local database or shared preferences.
* **[user_profile_remote_data_source.dart](CleanArchitectureTemplate.md#user-profile-remote-data-source)**: This would handle all the network calls to fetch or update user profiles from a remote server.
* **[user_profile_model.dart](CleanArchitectureTemplate.md#user-profile-model)**: This would be a model class that includes a factory constructor to create instances from JSON, and a method to convert instances back to JSON.
* **[user_profile_repository_impl.dart](CleanArchitectureTemplate.md#user-profile-reposistory-impl)**: This would be the implementation of the user profile repository, which would use the data sources to fetch and update user data.
* **[user.dart](CleanArchitectureTemplate.md#user-entity)**: This would be a simple class that represents the user entity.
* **[user_profile_repository.dart](CleanArchitectureTemplate.md#user-profile-repo)**: This would be an abstract class that defines the contract for the repository, declaring methods like `getUserProfile` and `updateUserProfile`.
* **[get_user_profile.dart](CleanArchitectureTemplate.md#get-user-profile-use-case)**: This would be a use case class for fetching the user profile.
* **[update_user_profile.dart](CleanArchitectureTemplate.md#update-user-profile-use-case)**: This would be a use case class for updating the user profile.
* **[user_profile_bloc.dart](CleanArchitectureTemplate.md#user-profile-bloc)**: This would be the BLoC (Business Logic Component) that will manage the state of the user profile feature.
* **[user_profile_event.dart](CleanArchitectureTemplate.md#user-profiel-event)**: This would define the events that the BLoC listens to, such as `LoadUserProfile` or `UserProfileUpdated`.
* **[user_profile_state.dart](CleanArchitectureTemplate.md#user-profile-state)**: This would define the states that the BLoC can emit, such as `UserProfileLoading`, `UserProfileLoaded`, and `UserProfileError`.
* **[user_profile_page.dart](CleanArchitectureTemplate.md#user-profile-page)**: This would be the page that displays the user profile, likely using the `UserProfileWidget`.
* **[user_profile_widget.dart](CleanArchitectureTemplate.md#user-profile-widget)**: This would be a widget that displays the user’s profile information, which could be reused in different parts of the app.

This structure ensures that each layer has a single responsibility and that the code is clean, testable, and maintainable. 

the whole template is avaliablde at [here](CleanArchitecureTemplate.md)



# How to deal with Learn Now MAGIC LEARN BUTTON
 
Consider from the first time user onwards. 

it is very clear that the user has not yet started learning using this beautiful app -PARAYADA

so we prompt them to choose the course he/she want to learn. 

Then on the first click of the MAGIC LEARN BUTTON, the app will create a learning queue of lessons. this queue consist of first lessons of every subject in the course 

(optional - this item is not going to implement in mvp - User can choose multiple courses and excel simulteneusly. eventhough the lesson queue and revision scheduler will only have one instence. Now we are not focusing on multi course learning assistent model.)

The MAGIC LEARN BUTTON will choose either revision session or learning session based on priority. It is considered that once learned should not be forgoten so I think it is important to give more important to revision. 

CHALLENGE - 
  * how to determine the right time to stop revision.
  * how to determine WHICH TOPIC should be taken to revise as there is more remains to learn.
  * When to introduce new learning session.



Add option to add custom revision session by the user itself. this is helpful for thoose topics and lessons that the user has learnt outside of the app. This help the visibility and usability of the app to enchance the memory of the student irrespective of the source of the lesson(may be youtube, classess, text books, pdf and anythig).