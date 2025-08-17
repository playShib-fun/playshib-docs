# PlayShib.fun Documentation

[![Mintlify](https://img.shields.io/badge/Docs-Mintlify-blue)](https://mintlify.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

Official documentation for [PlayShib.fun](https://playshib.fun), decentralized prediction game built on the Shibarium blockchain where users can predict BONE token price movements and win rewards.

## 🎯 About PlayShib.fun

PlayShib.fun is a simple and decentralized prediction platform that allows users to:

- **Predict BONE Price Movements**: Bet on whether BONE token prices will go UP or DOWN in 5-minute rounds
- **Earn Rewards**: Win a share of the prize pool when predictions are correct
- **Stake BONE Tokens**: Use your BONE tokens to participate in the game
- **Automatic Payouts**: Collect winnings at any time with no time pressure

### Key Features

- **5-Minute Rounds**: Quick, engaging prediction rounds
- **Decentralized**: Built on Shibarium blockchain for transparency and security
- **Token Burning**: 2% of staked BONE is permanently burned each round
- **Dynamic Prize Pools**: Rewards adjust based on user predictions
- **No Time Limits**: Collect winnings whenever you want

## 🏗️ Project Structure

```
playshib-docs/
├── docs.json              # Mintlify configuration
├── play/                  # Documentation pages
│   ├── index.mdx         # Main prediction overview
│   ├── prediction-guide.mdx  # Step-by-step guide
│   └── prediction-faq.mdx    # Frequently asked questions
├── custom.css            # Custom styling
├── Dockerfile            # Docker configuration
├── vercel.json           # Vercel deployment config
└── README.md             # This file
```

## 🚀 Quick Start

### Prerequisites

- [Node.js](https://nodejs.org/) (v18 or higher)
- [npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/)

### Local Development

1. **Install Mintlify CLI**
   ```bash
   npm install -g mintlify
   ```

2. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/playshib-docs.git
   cd playshib-docs
   ```

3. **Start the development server**
   ```bash
   mintlify dev
   ```

4. **Open your browser**
   Navigate to `http://localhost:3000` to view the documentation

### Docker Development

1. **Build the Docker image**
   ```bash
   docker build -t playshib-docs .
   ```

2. **Run the container**
   ```bash
   docker run -p 3000:3000 playshib-docs
   ```

## 📚 Documentation Structure

The documentation is organized into three main sections:

### 1. **Prediction Overview** (`/play/index`)
- Introduction to the prediction game
- How the system works
- Important rules and fees
- Contract information

### 2. **How-to Guide** (`/play/prediction-guide`)
- Step-by-step instructions
- Screenshots and visual guides
- Best practices for playing

### 3. **FAQ** (`/play/prediction-faq`)
- Common questions and answers
- Payout calculations
- Fee structure explanation

## 🔧 Configuration

### Mintlify Settings

The documentation is configured via `docs.json` with:

- **Theme**: Mint theme for clean, modern design
- **Colors**: Primary color scheme using #578BFA
- **Navigation**: Organized into logical groups
- **Search**: Built-in search functionality
- **Analytics**: Google Analytics 4 integration

### Custom Styling

Custom CSS can be added in `custom.css` to override default Mintlify styles.

## 🚀 Deployment

### Vercel (Recommended)

This repository is configured for automatic deployment on Vercel:

1. Connect your GitHub repository to Vercel
2. Vercel will automatically detect the Mintlify configuration
3. Changes are deployed automatically on push to the main branch

### Manual Deployment

1. **Build the documentation**
   ```bash
   mintlify build
   ```

2. **Deploy to your preferred hosting service**

## 🤝 Contributing

We welcome contributions to improve the documentation! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/improve-docs
   ```
3. **Make your changes**
4. **Test locally** with `mintlify dev`
5. **Submit a pull request**

### Contribution Guidelines

- Follow the existing documentation style
- Include clear, concise explanations
- Add relevant screenshots when helpful
- Test all links and code examples
- Update the table of contents if adding new pages

## 🐛 Troubleshooting

### Common Issues

**Mintlify dev isn't running**
```bash
mintlify install
```

**Page loads as 404**
- Ensure you're running in a folder with `docs.json`
- Check that the file paths in navigation are correct

**Build errors**
- Verify all MDX files have proper frontmatter
- Check for syntax errors in `docs.json`

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔗 Links

- **Live Documentation**: [docs.playshib.fun](https://docs.playshib.fun)
- **Main Website**: [playshib.fun](https://playshib.fun)
- **Shiba Inu**: [shib.io](https://shib.io)
- **Shibarium**: [shibarium.network](https://shibarium.network)

## 📞 Support

- **Discord**: [Join our community](https://github.com/shibaone)
- **Twitter**: [@Shibtoken](https://x.com/Shibtoken)
- **Telegram**: [Shiba Inu Token](https://www.linkedin.com/company/shibainutoken)

---

**Built with ❤️ by the PlayShib.fun community**

