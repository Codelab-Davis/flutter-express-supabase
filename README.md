# Flutter + Express + Supabase Template

This template provides a solid foundation for building full-stack applications with Flutter for the frontend, Express for the backend, and Supabase for authentication, database, and storage.

## Features

- **Flutter** for a responsive and modern mobile/web frontend
- **Express** backend for robust API handling
- **Supabase** integration for secure data operations
- **CORS** enabled for cross-origin API calls
- Environment-based configuration with a `.env.local` file
- Modular project structure for scalable development

## Prerequisites

- Node.js 18.17 or later
- npm (or yarn / pnpm)
- Flutter (stable channel, version 3.x or later)
- Supabase account (free tier available)

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/Codelab-Davis/flutter-express-supabase.git my-app
cd my-app
```

### 2. Set Up Supabase

1. Create a new project at [supabase.com](https://supabase.com)
2. Copy your project URL and service (or anon) key from the API settings
3. Create a `.env.local` file in the **backend** directory with the following content:

```
SUPABASE_URL=YOUR_SUPABASE_URL
SUPABASE_KEY=YOUR_SUPABASE_KEY
```

### 3. Set Up the Express Backend

1. Navigate to the backend directory:

```bash
cd backend
```

2. Install dependencies:

```bash
npm install
```

3. Run the Express server:

```bash
npm start
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the health check message.

### 4. Set Up the Flutter Frontend

1. Navigate to the Flutter app directory from the backend:

```bash
cd ../flutter_app
```

2. Install Flutter dependencies:

```bash
flutter pub get
```

3. Run the Flutter app in development mode:

```bash
flutter run
```

The Flutter app will launch on your connected device or emulator.

## Project Structure

```
/my-app
├── backend/                # Express backend
│   ├── node_modules/       
│   ├── .env.local          # Environment variables for Supabase
│   ├── server.js           # Main Express server file
│   └── ...                 # Other backend files and directories
└── flutter_app/            # Flutter frontend
    ├── lib/                # Dart source files
    ├── android/            # Android-specific files
    ├── ios/                # iOS-specific files
    └── ...                 # Other Flutter files and directories
```

## Working with Express

This template uses Express to create API endpoints and interact with Supabase.

### Example Endpoint

```js
// backend/server.js
app.get('/api/health', (req, res) => {
  res.json({ message: 'Express server is healthy' });
});
```

## Working with Flutter

The Flutter frontend communicates with the Express backend via HTTP API calls. Use packages like `http` or `dio` for API integration.

### Example API Call in Flutter

```dart
import 'package:http/http.dart' as http;

Future<void> fetchHealth() async {
  final response = await http.get(Uri.parse('http://localhost:3000/api/health'));
  if (response.statusCode == 200) {
    print('Server is healthy');
  } else {
    print('Error: ${response.statusCode}');
  }
}
```

## Working with Supabase

The Express backend integrates with Supabase using the Supabase client. Use your keys from `.env.local` to initialize the client:

```js
// backend/server.js
const supabase = createClient(process.env.SUPABASE_URL, process.env.SUPABASE_KEY);
```

Utilize this client within your routes to perform authentication, database operations, and file storage tasks.

## Linting and Formatting

For the Express backend:

```bash
# Lint code
npm run lint

# Format code
npm run format
```

For the Flutter frontend:

```bash
flutter analyze
dart format .
```

## Deployment

### Express Backend

Deploy your Express backend to platforms like Heroku, Vercel (using serverless functions), or any Node.js hosting provider.

### Flutter Frontend

For mobile deployment, follow the official [Flutter deployment guides](https://docs.flutter.dev/deployment).

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Acknowledgments

- [Flutter](https://flutter.dev)
- [Express](https://expressjs.com)
- [Supabase](https://supabase.com)
