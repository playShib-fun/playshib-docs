# PlayShib.fun Documentation

[![Mintlify](https://img.shields.io/badge/Docs-Mintlify-blue)](https://mintlify.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

Official documentation for [PlayShib.fun](https://playshib.fun), a decentralized prediction game built on the Shibarium blockchain where users stake BONE to predict SHIB/USD price movements and win rewards.

## 🎯 About PlayShib.fun

PlayShib.fun is a simple and decentralized prediction platform that allows users to:

- **Predict SHIB/USD Price Movements**: Bet on whether the SHIB/USD price will go HIGHER or LOWER in 5-minute rounds
- **Earn Rewards**: Win a share of the prize pool when predictions are correct
- **Stake BONE Tokens**: Use your BONE tokens to participate in the game
- **Automatic Payouts**: Collect winnings at any time with no time pressure

### Key Features

- **5-Minute Rounds**: Quick, engaging prediction rounds
- **Chainlink-Verified Prices**: SHIB/USD prices come from Chainlink Data Streams and are cryptographically verified on-chain — no manual price override exists
- **Decentralized**: Built on Shibarium blockchain for transparency and security
- **Fair Treasury Fee**: A 5% fee on each round's pot funds platform upkeep, with a portion contributed to S.O.U. to support bridge hack victims
- **Refund Protection**: Rounds that can't be settled in time are voided and stakes are fully refundable
- **Dynamic Prize Pools**: Rewards adjust based on user predictions
- **No Time Limits**: Collect winnings whenever you want

## 🏗️ Project Structure

```
playshib-docs/
├── docs.json              # Mintlify configuration
├── play/                  # Documentation pages
│   ├── index.mdx         # Main prediction overview
│   ├── prediction-guide.mdx  # Step-by-step guide
│   ├── prediction-faq.mdx    # Frequently asked questions
│   ├── technical-overview.mdx   # Architecture & oracle deep dive
│   └── contract-reference.mdx   # Addresses, roles, functions, events
├── custom.css            # Custom styling
├── Dockerfile            # Docker configuration
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

The documentation is organized into two groups:

### Product Overview

1. **Prediction Overview** (`/play/index`) — introduction, rules, fees, contract addresses
2. **How-to Guide** (`/play/prediction-guide`) — step-by-step instructions with screenshots
3. **FAQ** (`/play/prediction-faq`) — payout calculations, fees, ties, refunds, common questions

### Technical Reference

4. **How It Works Under the Hood** (`/play/technical-overview`) — architecture, Chainlink Data Streams price verification, round lifecycle, reward rules
5. **Contract Reference** (`/play/contract-reference`) — addresses, parameters, roles, player-callable functions, events

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

