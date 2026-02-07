# CLAUDE.md

## Project

**TeresaPiacentino** — Legacy PHP/MySQL website for artist Teresa Piacentino. An art gallery and e-commerce site selling original oil paintings and museum-quality reproductions.

## Repository

- Remote: https://github.com/sebicas/TeresaPiacentino.git
- Main branch: `main`

---

## Tech Stack

| Layer         | Technology                                                   |
| ------------- | ------------------------------------------------------------ |
| Language      | PHP 7.4 (short open tags `<?`, PEAR DB)                      |
| Database      | MySQL 5.x (MyISAM engine)                                    |
| DB Library    | PEAR DB                                                      |
| Web Server    | Apache with mod_rewrite                                      |
| Character Set | ISO-8859-1 (Latin1)                                          |
| CDN/Proxy     | Cloudflare (uses `HTTP_CF_IPCOUNTRY` header for geo-pricing) |

---

## Project Structure

```
TeresaPiacentino/
├── CLAUDE.md                    # This file
├── README.md                    # Project readme
├── db/                          # Database SQL dumps
│   ├── teresapi_base.sql        # Main product database (Cuadros, Laminas, Reproducciones)
│   ├── teresapi_lista.sql       # Email subscriber list
│   └── teresapi_12all.sql       # Combined database dump
│
└── public_html/                 # Web root (Apache document root)
    ├── .htaccess                # URL rewriting rules
    ├── index.html               # Spanish homepage
    ├── index_en.html            # English homepage
    │
    ├── includes/                # PHP includes
    │   ├── db-connect.php       # DB connection (teresapi_base)
    │   ├── emails-db-connect.php# DB connection (teresapi_lista)
    │   ├── ampliar_code.php     # Product detail page logic
    │   └── functions.php        # API functions (esmartmail integration)
    │
    ├── templates/               # CSS and template includes
    │   ├── ampliar.css
    │   ├── home.php
    │   └── home_en.php
    │
    ├── api.php                  # Email subscriber API (uses teresapi_12all)
    ├── formmail.php             # Contact form handler
    ├── mp.php                   # MercadoPago payment integration
    │
    ├── ampliar.html             # Product detail page (PHP inside .html!)
    ├── galeria-*.html           # Gallery pages
    ├── *.html                   # Static content pages
    │
    ├── images/                  # Product images (1.jpg, 2.jpg, etc.)
    ├── 850/                     # Thumbnail images
    └── styles.css               # Main stylesheet
```

---

## Database Schema

### Database: `teresapi_base`

| Table            | Description                           |
| ---------------- | ------------------------------------- |
| `Cuadros`        | Original paintings catalog (89 items) |
| `Laminas`        | Print pricing by size                 |
| `Reproducciones` | Canvas reproduction pricing           |

**Key fields in `Cuadros`:**

- `CuadroID` (PK), `Catalogo`, `Artista`, `PageName`, `Titulo`, `Ano`, `Tamano`, `Tecnica`
- `Precio`, `Precio_USD`, `Precio_EUR` (original prices in multiple currencies)
- `PrecioRep`, `PrecioRep_USD`, `PrecioRep_EUR` (reproduction prices)
- `Status` (Disponible/Vendido)

### Database: `teresapi_lista`

Email subscriber management (used with esmartmail API).

### Database: `teresapi_12all`

Combined/all data (used by `api.php`).

---

## Key Features

1. **Multi-currency pricing** — Prices shown based on visitor's country (AR/ES/default via Cloudflare geo-IP)
2. **SEO-friendly URLs** — `.htaccess` rewrites `/cuadro/ID/slug` to `ampliar.html?ID/slug`
3. **Contact forms** — `formmail.php` sends emails to `tpiacentino@gmail.com` and `karchuf@gmail.com`
4. **MercadoPago** — Payment integration for Argentine customers (`mp.php`)

---

## Environment Variables (for Docker deployment)

```bash
# MySQL Database
MYSQL_ROOT_PASSWORD=<secure-password>
MYSQL_DATABASE=teresapi_base
MYSQL_USER=teresapi
MYSQL_PASSWORD=<secure-password>

# PHP Configuration
PHP_MEMORY_LIMIT=128M
PHP_UPLOAD_MAX_FILESIZE=10M
PHP_POST_MAX_SIZE=10M

# Email Configuration (formmail.php)
MAIL_RECIPIENT=sebicas@gmail.com
MAIL_BCC=sebicas@gmail.com

# Optional: Cloudflare Geo-IP (set by Cloudflare automatically)
# HTTP_CF_IPCOUNTRY=AR
```

---

## Deployment (Coolify / Docker)

### Docker Configuration Files

- `Dockerfile` — PHP 7.4-Apache with PEAR DB, mod_rewrite
- `docker-compose.yml` — PHP + MySQL stack
- `.dockerignore` — Exclude unnecessary files

### Critical PHP Requirements

1. **Short open tags** must be enabled (`short_open_tag = On`)
2. **PEAR DB library** must be installed via `pear install DB`
3. **Apache mod_rewrite** for SEO URLs
4. **sendmail/msmtp** for email functionality
5. **MySQL 5.7** with `platform: linux/amd64` for Apple Silicon compatibility

### Database Import

```bash
# Import main database
mysql -u root -p teresapi_base < db/teresapi_base.sql

# Import all databases (alternative)
mysql -u root -p teresapi_12all < db/teresapi_12all.sql
```

### URL Rewrite Rules (.htaccess)

```apache
Options +FollowSymLinks
RewriteEngine on
RewriteRule ^cuadro/(.+)$ /ampliar.html?$1
RewriteRule ^painting/(.+)$ /painting.html?$1
RewriteRule ^cuadro2/(.+)$ /ampliar2.html?$1
RewriteRule ^cuadros-oleo/(.+)$ /ampliar_ambientes.html?$1
```

---

## Conventions

### File Naming

- `.html` files contain PHP code (processed by Apache handler)
- Product images: `/images/{CuadroID}.jpg`
- Thumbnails: `/850/{CuadroID}.jpg`

### Database Connection Pattern

```php
// Centralized connection in includes/db-connect.php
require_once 'DB.php';

$db_host = getenv('MYSQL_HOST') ?: 'localhost';
$db_user = getenv('MYSQL_USER') ?: 'teresapi';
$db_pass = getenv('MYSQL_PASSWORD') ?: 'WtKPvPjB9AjwtyPf';
$db_name = getenv('MYSQL_DATABASE') ?: 'teresapi_base';

$db =& DB::connect("mysqli://{$db_user}:{$db_pass}@{$db_host}/{$db_name}");
$db->setFetchMode(DB_FETCHMODE_ASSOC);
if (PEAR::isError($db)) die($db->getMessage());

// Usage in other files:
require_once 'includes/db-connect.php';
```

> [!NOTE]
> All main pages now use centralized `includes/db-connect.php` with ENV variables.
> Only `api.php` and `emails-db-connect.php` have separate connections (different databases).

### Legacy Code Notes

- Uses deprecated PHP functions: `eregi()`, `split()`, `ereg()`
- Uses short PHP tags: `<?` instead of `<?php`
- Global variables via `register_globals` style (adapt for PHP 7+)
- PEAR DB uses reference assignment `=&` (deprecated)

---

## Commands

### Local Development (Docker)

```bash
# Build and start containers
docker-compose up -d --build

# View logs
docker-compose logs -f

# Stop containers
docker-compose down

# Access MySQL CLI
docker-compose exec mysql mysql -u teresapi -p teresapi_base

# Import database
docker-compose exec -T mysql mysql -u root -p$MYSQL_ROOT_PASSWORD teresapi_base < db/teresapi_base.sql
```

### Coolify Deployment

1. Create new "Docker Compose" application in Coolify
2. Point to repository root
3. Set environment variables in Coolify dashboard
4. Configure domain and SSL
5. Deploy

---

## Security Considerations

> [!WARNING]
> The following credentials are hardcoded in the codebase and should be changed:

| File                             | Credential Type    | Status                 |
| -------------------------------- | ------------------ | ---------------------- |
| `includes/db-connect.php`        | MySQL password     | ✅ Uses ENV vars       |
| `includes/emails-db-connect.php` | MySQL password     | ⚠️ Hardcoded           |
| `includes/ampliar_code.php`      | MySQL password     | ✅ Uses db-connect.php |
| `api.php`                        | MySQL password     | ⚠️ Hardcoded           |
| `includes/functions.php`         | esmartmail API key | ⚠️ Hardcoded           |
| `mp.php`                         | MercadoPago token  | ⚠️ Hardcoded           |

**Recommendation:** Move remaining hardcoded credentials to environment variables.
