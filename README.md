# Cardano Perpetual Powers of Tau Ceremony

## Overview

The **Cardano Perpetual Powers of Tau** is a cryptographic trusted setup ceremony designed to generate secure public parameters for Zero-Knowledge proof systems on the Cardano blockchain. This ceremony constructs partial zk-SNARK parameters for circuits up to depth 2^23 (~8 million constraints) using the **BLS12-381 elliptic curve**, which is the cryptographic foundation used by Cardano.

### Objective

Generate trustworthy public parameters that enable the secure operation of Zero-Knowledge applications in the Cardano ecosystem. The ceremony ensures that no single party controls the final parameters, providing long-term security guarantees for zk-SNARK protocols.

> **Security Principle**: As long as one participant behaves honestly and destroys their secret randomness ("toxic waste"), the entire setup remains secure and trustworthy.

## Contribution Guidelines

You can find more information about how to contribute in our [contribution guidelines](./Docs/Ceremony_&_Contribution_Guidelines.md)

## Registration and Communication

To participate you must:

* Send a request in the [registration form](https://form.typeform.com/to/a5Vo7WI7)
* Join our [Discord Channel](https://discord.gg/zrER4zPF)

## Ceremony Progress

| Round | Participant | Contribution Hash | Attestation |
|-------|-------------|------------------|-------------|
| 0000  | Coordinator | `initial_challenge` | [Genesis Parameters](ceremony-transcripts/round_0000.txt) |
| 0001  | Agustín Salinas | `9397fb1e1cedb0a5ec983860997bfd91dbd18fe1eb399643186a022fedaf58d27bd55df7a6eb0edb2f429f8854b4b94846c5e835e64d537a182b49471bc1ae5c` | - |
| 0002  | Jose Tomas Ruiz Vidal | `7257be5108dd946dbbe7f522bd18570a93aaea3381d774dff22226887a5d30c27f46e736a5ae7da9fcd1c56a26bc254727f40ee49f43f24f8a7d92a0cbb23cc1` | - |
| 0003  | Rodrigo Oyarzun-[CHIL] | `0621e20780a3073c7ee50512ad6cd74f3de3128f02373a3e47e5e16ef32ecac30a71e02574e5e184afe4ae39116eaef48c14962058baa96d41285ddb6c054dd7` | - |
| 0004  | Bruno Weisz | `748a5c0434d9b2b09b3624cd6c4b844388627dd0c3a5142b7b6966a936a5b091082b8e1cdf5866e02bde90163956255d7892d727aa8e9d7a0bf54608390ca5fd` | - |
| 0005  | Alfred Vilsmeier | `51418b25de9db5d3b4805c26e80ade24f59c1c2e34b3391f0c0a143af1d4483425254db40e8e9a8505d6c8883d8074c0f1624fba96cfbce61407be0800ed10d4` | - |
| 0006  | diegomac35 | `b61d5994512d164c3ca29af41ce50aa30978d38aeb6ff49b3865ccd061405b511bd5611691345e42c42ab95b37dbf7ab7ce514d7a1efc30bc16df638798d2812` | - |
| 0007  | Lorenzo Ruiz Diaz | `75e9ea136586ac8733f383d7c093e08eb58ba10d566cdfd821e1e27fbb2b06e03b30e0c6786d4c9c11e29e335d42eb15e46a48e1cc6d198f39e156786f5e8e2d` | - |
| 0008  | carrot shadow | `ba786c2f7d27d41009e89262ee2b9bff1d13018cd0c7fdadabf89e62b95b0c9db5ac61d2c107021a60362533ac493adfc1f716a2bdec32df1242d018c57b4cec` | - |
| 0009  | Maria Eugenia Clementel | `87ffe74f4da062da1842bd5c939ff878a0f84e12fb17d6180a9f33299abd993a10b1756e0dc720d4ec3a992202a05da8ac9c4a83c2c678a998775608​2bc332af` | - |
| 0010  | esis | `ce833b692ac5d56754e79dcfd659d16c8a573e8f92df70e20a014e4c226f5d9f97b8f9078bb0f6ee38038ec57de34e919608bd5e29e56fa0c946ed26ade2e608` | - |
| 0011  | Agustin Franchella | `fbf0b097bfa25090f38de7bbf9901eadaa5a31f6e24c1f0843d19f69d07d440cf53cb21f4255ef02b4c5265e139cc0be3b680f88922682fdcbf05e004f99e0a9` | - |
| 0012  | Martin Lang | `68d39027986c28affed8b628d19bf7f90949e2a9fcf01def9126b85ad3e826420f6ab38e15602dd1eb4dea94dbb948f742256e546466d5640e2126634c2cd558` | - |
| 0013  | Chris [STR8] | `0689f51d806f3ba3e2aeece86bbdbf3d50988780eb5ea54188a7b5012e5215a4a3200e26e1df3e46f30480a0f08ccc0545711743a8df3daf39388f37b83db1d2` | - |
| 0014  | Bosco Ribeiro | `900a23e204dd274045​17f52854c649f1211f9cc7258a412940cf76a41a328dbc19677ba6e88751bc610db05082da723fffacd7193a7af12f064b54c1d3a7df2c` | - |
| 0015  | Andrew Westberg | `b8e46ecbbcaeebc0e4bc1e06ede131b689d5c50fa2174110a2f99a5ff73d69ab3384a7ef9ea521577d8501d4e128bcd6f0a9378c1e57a8321abc10e1fce97121` | - |
| 0016  | Cerkoryn | `318c540913251f7754e5a37ade0ff487f616964d41c0e682bebf4fda74b5ae014d6c860d99ae7d5062bcdebb56b0ecef92325c40d62f1612e026aa8b5024dc8e` | - |
| 0017  | NicoSerranoP | `53eee3b6be00b0b7e0a82252cddd4a2f3ec43ee1827bc3e52c549f93de8afb7963e38f48274c7db3212c8a7234ad68680ac991bf464aa5f272eeec5dcf362eed` | - |
| 0018  | MarkvanZon | `0c5c641084199e478e826ffd7680ee7d1b919cec334deb229d9d7bd2ed177dde4b287c834c6c2b968220cc78144e5059eaf8398cc4147a83c5fed0ca7d258853` | - |
| 0019  | Marcus Puchalla | `8d400d5642abc0fddf75eea0d722e67ecc8d9867845d8eaf1da157bbadf4849e93e6f01392​04f6800d5629c2f22d13c400060403a9c03cd32d5062ac539b2b05` | - |
| 0020  | Rich Manderino | `d1a55ee520d19ee56e546f0c5aba4c39bfc0ffb064a6f6e80de921195fff0fed99992af058fb06347b03b0f65679cb6aab7de6e0e08c5ddb0b099f176611bbb0` | - |
| 0021  | BURN_Pool | `a11ebdb250df7161b97c0752e4e35b011521c5dac6f6235794b3e80e31eddd863c21d3d3cd44eb7cda179a0db74991533880ce1636c0010b619789409898ba58` | - |
| 0022  | Tom [NIMUE] | `914cd3a7bbedc8e04207977dc4204a65131c7c43a8c509c5291eb353018990a8a5f8a8d5f4c6e3b5292fba0c54922aaad48a88f034e99175a00fb3eddaffc95b` | - |
| 0023  | Chadle BBHMM | `a785acc6d78d44d322b8aa997455b1c9375f1745171b0411e4e3879750232322​1d11add6ce8d18746ad2e5458a3e8c17027cefd315fa6212c98b911ede9a96f2` | - |
| 0024  | PET pool | `e8b296af546ccb31f763a407032fcd74fa322c7dbbf8e493aa38118bc7c25a8bd00c7d12b02fcbc2135f547fb1da1da40a371cd264aede7483905ff6448ba446` | - |
| 0025  | Wunderbaer | `539e01cd602fb3813ed1a7030283af1c06e41bd403599735607f74703f82643cbf975421c57730362982e89a3c8dddbc​f813817f0ef6b14d6f61de4d5218f5d1` | - |
| 0026  | Federico Ledesma | `c7a1bce385dfb834fc2bf4ed24ac57f55f01c0f9d351c60bd27a8c53ded134fe0ef1f5c1a09780cb2d8c498dc6312d39eb06ca6761c94f9347950accfcaa8700` | - |
| 0027  | Facundo Decroix | `89a8a964bf51b3457238e780c2f1951d80e60172d4df8d3d7b350c6aefc42a256296d46aa80ad44067f579e90d8b1db29a1727a4d8e3d0afb275e2a8244f6040` | - |
| 0028  | Francisco Javier Garcia Garcia | `6ce5ac370c615ea3f5bc055f2818a1aeeb76c09154472c21b5f42aafceecfbfd8e455d4d322a3ae98e241e74136d9c77208028a594dde61a191bb4c4dc9819d8` | - |
| 0029  | Eusebio | `04edb062f085a971fe5058fa1189f35cffcc796afef6cca9f28475f86cc06ce9c13581531795cc6d1608f29884f6524b2b07b819648db2154599ca873371c928` | - |
| 0030  | ItsDave_ADA | `c33b2c993f6e3ae3324a56487a2c1665a438d69d198841477a564e6d5c4c2ba52bc18be9f2498ea2291adb0c8a5328e5231a9587406ac11de8cab930d0f036f8` | - |
| 0031  | Ático Mismana | `b0d7f3957dca0d1626b075539b8f82172e2e0eceba0db82436d33c20d3feee473c64a48d08f1e68270904c0dafffeb293007b991c17e0d995e7e0850433e6b1c` | - |
| 0032  | OYSTR Pool | `68efe5dc88b696ac312381ee4c0bce10fe03162187fee55ea2dbe27e315954a882977080c79039fd8e5369157b407303e525e4492db849e07a3a56923a263afc` | - |
| 0033  | Petr Bena | `2625968959d4e69cd5ceff21c171033c33e7ad407eaa268e4bb40fc84759dc8808f08a3a274e048e32df2dc5d5e9168fe43c7a528ec0cba9c2c9e5070d2eb827` | - |
| 0034  | HephyPool | `b03c0d9a044cb53bfb8062b91f4c2dfdb2bd741960aaa10bb8050523c8d8f1c32d0624fb2bf993000a8031374002f4f91fa2d5805e598756d9fa2178a7ca3a05` | - |
| 0035  | Valentino Cerutti | `a1bbf946207800909b1318b1ee468463197b67dc3795729ae4175bd01d54b2093b8372251c673b726609becdb126cf36ebe70e8c7522ea192842ca46acd37319` | - |
| 0036  | Raul | `acdfe9c0837706a26229ba9c9c3911f7ad35f4223d4740341116ed0a66b0fdc3818eefd76391986d342e073c38c633796a30a0965844716a21d8a08405581666` | - |
| 0037  | carolang | `b40727c4c01e3abf6b8d1a130debaa74fdebc077e8aa0e7ebaea49cb39f19adfb43717af166d8148fd053c9d66d299976dc9270345598d7d2bbdbf7363af11bf` | - |
| 0038  | Alex | `8bf9ea33c8e7f61f60ca489e4aab27d29bc2d3830aca6fc24229eff088f0bb4d4adf03c36a870ace8f8d262e6f6d929659b121fa56fd4707ae784a298803594c` | - |
| 0039  | Jose Iadicicco | `6044a9796e6b7bbf31fdcbec8e413213b53ededc21659e968501fa922a9e29e55a78ee33df43d5fc9c2131fd4cd87bc35dbfbe52b4e904cbd754c62bf2a54097` | - |
| 0040  | Mateusz Czeladka | `250eaaafd4169834e7bb2b06cb208884d83ba2f3d263e3827931dbeed8342123c0ec7958a983e15e6d9b4e9319537c44ab1a4a6baec6ae3bdbfda1d7dd387075` | - |

**Target**: 40+ verified contributions
**Current**: 41/40 (Complete)
**Timeline**: Q4 2025 - Q1 2025

## Ceremony Process

### 1. **Initialization**
The coordinator generates the initial challenge file containing the starting Powers of Tau parameters.

### 2. **Contribution Phase**
Each participant:
- Downloads the current challenge file (~9GB)
- Adds their secret randomness to extend the tau powers
- Generates a response file with their contribution
- **Destroys their secret input** (critical for security)

### 3. **Verification**
The coordinator verifies each contribution's mathematical correctness before incorporating it into the next challenge.

### 4. **Finalization**
After all contributions, a public beacon (unpredictable randomness source) is applied to ensure that even if all participants colluded, the final parameters remain secure.

### 5. **Final Parameters**
The ceremony produces a Common Reference String (CRS) ready for use in Zero-Knowledge proof systems across the Cardano ecosystem.

## Logistics

### Hardware Requirements
- **RAM**: Minimum 16GB (recommended 32GB)
- **Storage**: 20GB available space
- **CPU**: Multi-core processor (contribution takes 3-4 hours)
- **Network**: Stable internet for 9GB downloads/uploads

### Coordination
- **Communication**: Official Twitter/X updates and GitHub repository
- **Registration**: Public form for contributor sign-up
- **Scheduling**: Organized time slots to prevent overlaps
- **Support**: Technical assistance via official channels

### Reward Structure
- **Regular Contributors**: Receive ADA rewards after ceremony completion
- **Ad-honorem Contributors**: Participate voluntarily to strengthen security
- **Test Transaction**: Reward infrastructure tested before distribution

## Participation

### Prerequisites
- Linux, macOS, or Windows system
- Node.js (≥22.17.1) and pnpm (≥9.0.0)
- GitHub account for contribution records
- Basic command-line familiarity

### Quick Start
```bash
# Install the CLI
git clone https://github.com/NicoSerranoP/brebaje.git
cd brebaje/apps/cli
chmod +x install.sh && ./install.sh

# Configure your identity
brebaje-cli config name "Your Full Name"
brebaje-cli config ceremony-repo https://github.com/YOUR-USERNAME/ceremony-repo-fork

# Contribute automatically (when scheduled)
brebaje-cli ppot auto-contribute ceremony-urls.json
```

### Security Guidelines
- ⚠️ **Critical**: Delete all secret randomness after contributing
- 🔒 Keep your contribution files as proof of participation
- 📱 Share your contribution on social media for transparency
- 🔐 Use secure, unpredictable entropy sources for randomness

## Technical Details

- **Elliptic Curve**: BLS12-381 (Cardano native)
- **Circuit Depth**: 2^24 constraints (~16M)
- **Challenge Size**: ~9GB per round
- **Ceremony Type**: Perpetual (ongoing security)

## Repository Links

- **🏠 Main Repository**: [brebaje](https://github.com/NicoSerranoP/brebaje)
- **📖 CLI Documentation**: [Ceremony Guidelines](./Docs/Ceremony_&_Contribution_Guidelines.md)
- **🔧 CLI Installation**: [Installation Guide](./Docs/Ceremony_&_Contribution_Guidelines.md#installation-instructions)
- **📊 Ceremony Transcripts**: Coming Soon
- **🐛 Issue Tracker**: [Report Issues](https://github.com/NicoSerranoP/brebaje/issues)

## Contributing

1. **Register**: Sign up via the official registration form
2. **Prepare**: Install the CLI and configure your setup
3. **Schedule**: Receive your contribution time slot
4. **Contribute**: Follow the automated contribution process
5. **Verify**: Submit your attestation and pull request

---

## About

This ceremony is organized by the Cardano community to enable the CRS for Zero-Knowledge applications.

**Questions?** Check our [troubleshooting guide](./Ceremony_&_Contribution_Guidelines.md#troubleshooting) or contact the ceremony coordinators.

---

*Last updated: October 2025 | Ceremony Status: In Progress*