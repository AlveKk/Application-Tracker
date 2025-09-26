# Application Tracker 📋

A simple and efficient Symfony-based web application for tracking job applications using Excel files as data storage. This project demonstrates proficiency in PHP development, Symfony framework, Excel manipulation, and containerization practices.

## 🚀 Features

- **Job Application Management**: Create, read, update, and delete job applications through a web interface
- **Excel Data Storage**: All data stored in Excel files using PhpSpreadsheet library
- **User-Friendly Interface**: Clean web interface built with Symfony and Twig
- **Form Validation**: Input validation using Symfony Form component
- **Docker Support**: Fully containerized application for easy deployment
- **Export/Import**: Easy Excel file export and import functionality
- **Search & Filter**: Find applications by company, position, or status
- **Optional Backup System**: Configurable data backup functionality
- **Statistics Dashboard**: Visual charts and analytics for application tracking
- **Responsive Design**: Mobile-friendly interface with Bootstrap 5

## 🛠 Tech Stack

### Backend
- **PHP 8.4**: Latest PHP version with cutting-edge features
- **Symfony 7.3**: Modern web application framework with latest improvements
- **PhpSpreadsheet 2.0**: Excel file reading and writing
- **Twig**: Template engine for web interface
- **Symfony Console**: CLI commands for maintenance tasks

### Frontend
- **Bootstrap 5**: Responsive CSS framework
- **Twig Templates**: Server-side rendering
- **Symfony Forms**: Form handling and validation

### DevOps & Infrastructure
- **Docker**: Multi-stage containerization with development/production targets
- **Docker Compose**: Single-file orchestration with environment-based configuration
- **Nginx Alpine**: Lightweight, high-performance web server

## 📁 Project Structure

```
application-tracker/
├── .github/                    # GitHub configuration
│   └── copilot-instructions.md # AI coding assistant instructions
├── config/                     # Symfony configuration
│   ├── packages/              # Bundle configurations
│   └── services.yaml          # Service container configuration
├── data/                      # Excel files storage
│   └── applications.xlsx      # Job applications data
├── docker/                    # Docker configuration files
│   └── nginx/                 # Nginx configuration
├── public/                    # Web-accessible files
│   ├── css/                   # Stylesheets
│   └── js/                    # JavaScript files
├── src/                       # Application source code
│   ├── Controller/            # Web controllers
│   ├── Service/               # Business logic and Excel handling
│   ├── Entity/                # Data models
│   ├── Form/                  # Symfony forms
│   └── Repository/            # Data access layer
├── templates/                 # Twig templates
├── docker-compose.yml         # Unified environment configuration
├── Dockerfile                 # Multi-stage container build
└── README.md                  # Project documentation
```

## 🔧 Installation & Setup

### Prerequisites
- **Docker** and **Docker Compose** (Required)
- **Git**

*Note: All dependencies (PHP, Composer, Nginx) run inside Docker containers. No local PHP installation needed.*

### Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/AlveKk/application-tracker.git
   cd application-tracker
   ```

2. **Setup environment configuration**
   ```bash
   # Copy the environment template
   cp .env.example .env
   
   # The .env file contains all necessary configuration for local development
   # Default settings are optimized for development
   ```

3. **Start the application**
   ```bash
   # Start development environment
   docker-compose up -d
   ```

4. **Access the application**
   - **Web Interface**: http://localhost:8000

## 🌍 Environment Configuration

The application uses a single `docker-compose.yml` with environment-based configuration:

## ⚙️ Configuration Options

All configuration is managed through environment variables defined in `.env.example`:

### Application Settings
- **APP_ENV**: Environment (dev/prod)
- **APP_DEBUG**: Debug mode (true/false)
- **APP_SECRET**: Application secret key

### Docker Configuration
- **BUILD_TARGET**: Docker build stage (development/production)
- **NGINX_PORT**: Web server port (8000 for dev, 80 for prod)
- **VOLUME_MODE**: File system permissions (rw/ro)

### Data Management
- **HOST_DATA_PATH**: Excel files storage location
- **BACKUP_ENABLED**: Enable/disable backup system
- **BACKUP_INTERVAL**: Backup frequency (daily/weekly/monthly)

## 🔄 Backup System

The application includes an optional backup system:

- **Configurable**: Enable/disable via `BACKUP_ENABLED` environment variable
- **Flexible Intervals**: Daily, weekly, or monthly backups
- **Automatic Cleanup**: Old backups are automatically removed
- **Production Ready**: Recommended for production environments

## 📊 Multi-Stage Docker Build

The application uses Docker multi-stage builds:

- **Base Stage**: Common dependencies and configurations
- **Development Stage**: Includes dev dependencies and debug tools
- **Production Stage**: Optimized build with minimal footprint and pre-compiled cache

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Paolo Alvezzola**
- LinkedIn: [Paolo Alvezzola](https://linkedin.com/in/paoloalvezzola)
- Portfolio: [Application Tracker](https://github.com/AlveKk/application-tracker)

---

*This project serves as a demonstration of modern PHP development practices with Symfony framework, focusing on practical file-based data management, clean web interface design, and professional DevOps practices with Docker containerization.*
