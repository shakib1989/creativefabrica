part of 'mock_nasa_responses.dart';

extension MockRoverPhotosResponse on MockNasaResponse {
  GetRoverCuriosityPhotosResponse roverPhotos() {
    return GetRoverCuriosityPhotosResponse(
      photos: [
        RoverImageModel(
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTESdPYBX7gZh6JfdnggD0UAnbJZ0Q_KAtFbyRb2xbTzQ&s',
        ),
      ],
    );
  }
}
