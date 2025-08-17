# 🚀 PlayShib.fun Documentation Deployment Guide

This guide will help you deploy the PlayShib.fun documentation site to Vercel.

## 📋 Prerequisites

- [Node.js](https://nodejs.org/) (v18 or higher)
- [npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/)
- [Git](https://git-scm.com/) installed and configured
- A [Vercel account](https://vercel.com) (free tier available)
- Your Vercel project: [play-shib-docs](https://vercel.com/robils-projects-d5caf360/play-shib-docs)

## 🔧 Setup Steps

### 1. Install Vercel CLI

```bash
npm install -g vercel
```

### 2. Login to Vercel

```bash
vercel login
```

Follow the prompts to authenticate with your Vercel account.

### 3. Link Your Project

Navigate to your project directory and link it to your Vercel project:

```bash
cd playshib-docs
vercel link
```

When prompted:
- Select your team/account
- Choose "Link to existing project"
- Select "play-shib-docs"

### 4. Configure Environment Variables

Your project is already configured with the necessary environment variables in `vercel.json`. However, if you need to add custom ones:

```bash
vercel env add NODE_ENV
# Set value to: production
```

### 5. Deploy

Since you're using Vercel with automatic deployments, simply push your changes to your main branch:

```bash
git add .
git commit -m "Update documentation"
git push origin main
```

Vercel will automatically detect the changes and deploy them to production.

## 🌐 Deployment Configuration

### Vercel Configuration (`vercel.json`)

Your `vercel.json` is configured with:

- **Build Command**: No build needed (Mintlify handles this)
- **Output Directory**: Root directory (`.`)
- **Framework**: None (static site)
- **Security Headers**: XSS protection, content type options, frame options
- **Caching**: Optimized caching for static assets
- **Redirects**: Root path redirects to `/play/index`

### Custom Headers

The configuration includes security and performance headers:

- **Security**: XSS protection, content type validation, frame options
- **Caching**: Long-term caching for static assets (favicon, logo)
- **Performance**: Optimized for static content delivery

## 📁 File Structure for Deployment

```
playshib-docs/
├── docs.json              # Mintlify configuration
├── play/                  # Documentation content
│   ├── index.mdx         # Main page
│   ├── prediction-guide.mdx
│   └── prediction-faq.mdx
├── custom.css            # Custom styles
├── favicon.ico           # Site favicon
├── play-shib.svg         # Logo
├── vercel.json           # Vercel configuration
└── .vercelignore         # Files to exclude
```

## 🔍 Post-Deployment Verification

After deployment, verify:

1. **Site Accessibility**: Check if your site is accessible at the Vercel domain
2. **Navigation**: Test all navigation links and redirects
3. **Assets**: Ensure images, CSS, and other assets load correctly
4. **Search**: Test the built-in search functionality
5. **Analytics**: Verify Google Analytics is tracking properly

## 🚨 Troubleshooting

### Common Issues

**Deployment Fails**
```bash
# Check Vercel logs
vercel logs

# Verify project linking
vercel ls
```

**Assets Not Loading**
- Check if files are in the correct directories
- Verify `.vercelignore` isn't excluding necessary files
- Check browser console for 404 errors

**Build Errors**
- Ensure `docs.json` is valid JSON
- Check for syntax errors in MDX files
- Verify all referenced files exist

**Domain Issues**
- Check Vercel dashboard for domain configuration
- Verify DNS settings if using custom domain

### Useful Commands

```bash
# Check deployment status
vercel ls

# View recent deployments
vercel ls --limit 10

# Check environment variables
vercel env ls

# View deployment logs
vercel logs [deployment-url]

# Remove project link
vercel remove
```

## 🔄 Continuous Deployment

Your project is configured for automatic deployments:

1. **Push to Main Branch**: Automatically triggers deployment
2. **Preview Deployments**: Each PR gets a preview URL
3. **Production Deployment**: Merges to main deploy to production

## 📊 Monitoring & Analytics

### Built-in Analytics
- **Vercel Analytics**: Built-in performance monitoring
- **Google Analytics 4**: Configured with ID `G-43WDEP4ZYP`
- **Custom Events**: User type and page category tracking

### Performance Monitoring
- **Core Web Vitals**: Automatic monitoring
- **Edge Function Metrics**: Function invocation tracking
- **Error Rate Monitoring**: Automatic error tracking

## 🔐 Security Features

Your deployment includes:

- **XSS Protection**: Prevents cross-site scripting attacks
- **Content Type Validation**: Prevents MIME type sniffing
- **Frame Options**: Prevents clickjacking attacks
- **HTTPS Only**: Automatic SSL/TLS encryption

## 📈 Scaling Considerations

- **Edge Network**: Global CDN for fast content delivery
- **Automatic Scaling**: Handles traffic spikes automatically
- **Function Optimization**: Efficient serverless function execution
- **Caching Strategy**: Optimized for static content

## 🆘 Support

If you encounter issues:

1. **Check Vercel Dashboard**: [play-shib-docs](https://vercel.com/robils-projects-d5caf360/play-shib-docs)
2. **Vercel Documentation**: [vercel.com/docs](https://vercel.com/docs)
3. **Community Support**: [github.com/vercel/vercel/discussions](https://github.com/vercel/vercel/discussions)

---

**Happy Deploying! 🚀**

Your PlayShib.fun documentation will be live and accessible to users worldwide through Vercel's global edge network.
