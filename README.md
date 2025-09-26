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
- **Data Backup**: Automated backup system for data protection
- **Statistics Dashboard**: Visual charts and analytics for application tracking
- **Responsive Design**: Mobile-friendly interface with Bootstrap 5

## 🛠 Tech Stack

### Backend
- **PHP 8.4**: Latest PHP version with cutting-edge features
- **Symfony 7.3**: Modern web application framework with latest improvements
- **PhpSpreadsheet**: Excel file reading and writing
- **Twig**: Template engine for web interface
- **Symfony Validator**: Input validation and data integrity

### Frontend
- **Bootstrap 5**: Responsive CSS framework
- **Twig Templates**: Server-side rendering
- **Symfony Forms**: Form handling and validation

### DevOps & Infrastructure
- **Docker**: Containerization for consistent environments
- **Docker Compose**: Multi-container application orchestration  
- **Nginx**: High-performance web server

## 📁 Project Structure

```
application-tracker/
├── .github/                    # GitHub configuration
│   └── copilot-instructions.md # AI coding assistant instructions
├── config/                    # Symfony configuration
│   ├── packages/             # Bundle configurations
│   └── services.yaml         # Service container configuration
├── data/                     # Excel files storage
│   └── applications.xlsx     # Job applications data
├── docker/                   # Docker configuration files
│   ├── nginx/               # Nginx configuration
│   └── php/                 # PHP-FPM configuration
├── public/                  # Web-accessible files
│   ├── css/                 # Stylesheets
│   └── js/                  # JavaScript files
├── src/                     # Application source code
│   ├── Controller/          # Web controllers
│   ├── Service/            # Business logic and Excel handling
│   ├── Entity/             # Data models
│   ├── Form/               # Symfony forms
│   └── Repository/         # Data access layer
├── templates/              # Twig templates
├── docker-compose.yml      # Development environment
├── Dockerfile             # Container build
└── README.md              # Project documentation
```

## 🔧 Installation & Setup

### Prerequisites
- **Docker** and **Docker Compose** (Required)
- **Git**

*Note: All dependencies (PHP, Composer, Nginx) run inside Docker containers. No local PHP installation needed.*

### Quick Start (Automatic Setup)
1. **Clone the repository**
   ```bash
   git clone https://github.com/AlveKk/application-tracker.git
   cd application-tracker
   ```

2. **Start the application** (everything is automated)
   ```bash
   docker-compose up -d
   ```

3. **Application is ready!**
   - Web Interface: http://localhost:8000
   - Sample data is automatically created
   - All dependencies are automatically installed

**That's it! No manual setup required.** 🚀

## 🚀 Deployment

### Production Deployment with Docker

1. **Set production environment variables**
   ```bash
   # Create production environment file
   cp .env .env.prod
   
   # Configure production variables in .env.prod:
   APP_ENV=prod
   APP_SECRET=your-strong-production-secret-key-64-chars-minimum
   HOST_DATA_PATH=/production/data/path
   NGINX_PORT=80
   ```

2. **Deploy to production**
   ```bash
   # Build and start with production settings
   docker-compose -f docker-compose.prod.yml up -d --build
   
   # Or with environment variables
   APP_ENV=prod HOST_DATA_PATH=/data NGINX_PORT=80 docker-compose up -d
   ```

#### Security Considerations
- **Auto-generated secrets** in development
- **Manual APP_SECRET** required only for production

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Paolo Alvezzola**
- LinkedIn: [Paolo Alvezzola](https://linkedin.com/in/paoloalvezzola)

---

*This project serves as a demonstration of modern PHP development practices with Symfony framework, focusing on practical file-based data management and clean web interface design.*
