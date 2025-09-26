# GitHub Copilot Instructions for Application Tracker

## Project Overview
This is a Symfony 7.3 application for tracking job applications using Excel files as data storage.

## Key Technologies
- PHP 8.4
- Symfony 7.3
- PhpSpreadsheet for Excel manipulation
- Bootstrap 5 for frontend
- Docker for containerization

## Coding Standards
- Follow Symfony best practices
- Use PSR-12 coding standards
- Prefer dependency injection over static calls
- Use type hints and return types
- Write descriptive method and variable names

## Architecture Patterns
- Entity: Plain PHP objects for data models
- Service: Business logic and Excel operations
- Controller: Handle HTTP requests/responses
- Form: Symfony form types for validation
- Repository: Data access abstraction (even with Excel)

## File Naming Conventions
- Controllers: `{Name}Controller.php`
- Services: `{Name}Service.php`
- Entities: `{Name}.php`
- Forms: `{Name}Type.php`
- Templates: `{name}.html.twig`

## Excel Integration Notes
- All data stored in `/data/applications.xlsx`
- Use PhpSpreadsheet for reading/writing
- Implement proper error handling for file operations
- Create backups before modifications
